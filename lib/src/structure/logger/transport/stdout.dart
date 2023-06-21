import 'dart:convert';

import 'package:ansicolor/ansicolor.dart';
import 'package:intl/intl.dart';

import '../../../model/config/logger/options/color/ansi.dart';
import '../../../model/config/logger/options/color/color.dart';
import '../../../model/config/logger/options/transport/stdout.dart';
import '../../../model/logger/record.dart';
import 'abstract.dart';

class StdoutLoggerTransport
    extends AbstractLoggerTransport<StdoutLoggerTransportOptions> {
  StdoutLoggerTransport(super.application);

  @override
  void push(LogRecord record) {
    print(
      options.pretty
          ? _createPrettyMessage(record)
          : jsonEncode(record.toJson()),
    );
  }

  String _createBlock(
    String content,
    Color currentColor, [
    Color? nextColor,
  ]) {
    AnsiPen body = BetterAnsiPen.fromColor(currentColor);
    AnsiPen end = BetterAnsiPen.fromColorsData(
        background: nextColor?.background, foreground: currentColor.background);

    return body(' ${content} ') + end('\uE0B0');
  }

  String _createPrettyMessage(LogRecord record) {
    String upperLevel = record.level.name.toUpperCase();
    String formattedDate = _getFormattedDate(record.time);

    late String output;

    if (!options.styled) {
      String tagsList =
          record.tags.isNotEmpty ? '<${record.tags.join(', ')}>' : '';
      output =
          '[$formattedDate] $upperLevel $tagsList (${record.pid}): ${record.message}';
      if (record.object != null) output += ' ${record.object.toString()}';
    } else {
      Color levelColor = options.colors.getLevel(record.level);
      Color timeColor = options.colors.getKey('time');
      Color pidColor = options.colors.getKey('pid');
      Color tagsColor = options.colors.getKey('tags');
      Color messageColor = options.colors.getKey('message');
      Color objectColor = options.colors.getKey('object');

      String formattedTime = _createBlock(formattedDate, timeColor, pidColor);
      String formattedPid =
          _createBlock(record.pid.toString(), pidColor, levelColor);
      String formattedLevel = _createBlock(
          upperLevel, levelColor, record.tags.isNotEmpty ? tagsColor : null);
      String formattedTags = record.tags.isNotEmpty
          ? _createBlock((record.tags.join(' \u2771 ')), tagsColor)
          : '';

      String formattedMessage =
          BetterAnsiPen.fromColor(messageColor)(record.message);

      output =
          '$formattedTime$formattedPid$formattedLevel$formattedTags $formattedMessage';

      if (record.object != null) {
        String formattedObject =
            BetterAnsiPen.fromColor(objectColor)(record.object.toString());
        output += ' $formattedObject';
      }
    }
    return output;
  }

  String _getFormattedDate(DateTime time) =>
      DateFormat(options.timeFormat).format(time);
}
