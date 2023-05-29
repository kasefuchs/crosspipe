import 'dart:async';
import 'dart:collection';
import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart';

import '../../../model/config/logger/options/transport/discord.dart';
import '../../../model/logger/record.dart';
import '../abstract.dart';
import 'embed/embed.dart';
import 'embed/field.dart';
import 'embed/footer.dart';
import 'message.dart';

/// A logger transport that pushes log records to a discord webhook.
class DiscordWebhookLoggerTransport extends AbstractLoggerTransport<DiscordWebhookLoggerTransportOptions> {
  /// Queue to store the log records before flushing them to the discord webhook.
  Queue<LogRecord> _queuedLogRecords = Queue<LogRecord>();

  DiscordWebhookLoggerTransport(super.application) {
    Timer.periodic(
      options.flushInterval,
      (_) => _flush(),
    );
  }

  @override
  void push(LogRecord record) => _queuedLogRecords.addLast(record);

  /// Removes specified amount of records from queue.
  List<LogRecord> _removeQueueCount(Queue<LogRecord> queue, int count) => List.generate(
        count > queue.length ? queue.length : count,
        (_) => queue.removeFirst(),
      );

  /// Creates Embed for log record.
  Embed _createEmbedForLogRecord(LogRecord record) => Embed(
        title: record.level.name.toUpperCase(),
        description: record.message,
        color: options.colors.getLevel(record.level).background,
        timestamp: record.time,
        footer: EmbedFooter(
          text: '${record.tags.isNotEmpty ? record.tags.join(' > ') + ' • ' : ''}PID: ${record.pid}',
        ),
        fields: record.object != null
            ? [
                EmbedField(
                  name: 'Object',
                  value: record.object.toString(),
                )
              ]
            : null,
      );

  /// Flushes the queued log records by flushing them to discord webhook.
  void _flush() {
    if (_queuedLogRecords.isNotEmpty) {
      List<Embed> embeds = _removeQueueCount(_queuedLogRecords, 10).map(_createEmbedForLogRecord).toList();

      Map payloadBody = Message(
        avatarUrl: options.avatarUrl,
        content: options.content,
        embeds: embeds,
        username: options.username,
      ).toJson();

      post(
        options.url,
        body: jsonEncode(payloadBody),
        headers: {
          HttpHeaders.contentTypeHeader: ContentType.json.mimeType,
        },
      );
    }
  }
}
