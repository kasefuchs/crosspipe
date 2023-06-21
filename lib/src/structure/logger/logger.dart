import 'dart:io';

import '../../model/enum/logger/level.dart';
import '../../model/logger/record.dart';
import '../application.dart';
import 'transport/abstract.dart';

class Logger {
  final Application application;

  late final AbstractLoggerTransport transport;

  final List<String> _tags;

  Logger(
    this.application, {
    List<String>? tags,
  })  : this._tags = tags ?? List<String>.empty(growable: true),
        transport = application.config.logger.options.get(application);

  void call(LogLevel level, String message, [Object? object]) {
    if (application.config.logger.level.index <= level.index) {
      transport.push(
        LogRecord(
          level: level,
          message: message,
          object: object,
          tags: _tags,
          time: DateTime.now(),
          pid: pid,
        ),
      );
    }
  }

  Logger child(String tag) => Logger(application, tags: [..._tags, tag]);

  void debug(String message, [Object? object]) =>
      call(LogLevel.Debug, message, object);

  void error(String message, [Object? object]) =>
      call(LogLevel.Error, message, object);

  void fatal(String message, [Object? object]) =>
      call(LogLevel.Fatal, message, object);

  void info(String message, [Object? object]) =>
      call(LogLevel.Info, message, object);

  void trace(String message, [Object? object]) =>
      call(LogLevel.Trace, message, object);

  void warn(String message, [Object? object]) =>
      call(LogLevel.Warn, message, object);
}
