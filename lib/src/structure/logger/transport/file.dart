import 'dart:async';
import 'dart:collection';
import 'dart:convert';
import 'dart:io';

import '../../model/config/logger/options/transport/file.dart';
import '../../model/logger/record.dart';
import 'abstract.dart';

/// A logger transport that writes log records to a file.
class FileLoggerTransport extends AbstractLoggerTransport<FileLoggerTransportOptions> {
  /// Queue to store the log records before flushing them to the file.
  Queue<LogRecord> _queuedLogRecords = Queue<LogRecord>();

  FileLoggerTransport(super.application) {
    Timer.periodic(
      options.flushInterval,
          (_) => _flush(),
    );
  }

  @override
  void push(LogRecord record) => _queuedLogRecords.addLast(record);

  /// Flushes the queued log records by writing them to the file.
  void _flush() {
    while (_queuedLogRecords.isNotEmpty) {
      LogRecord record = _queuedLogRecords.removeFirst();
      String serializedRecord = jsonEncode(record.toJson()) + '\r';

      options.file.writeAsStringSync(
        serializedRecord,
        mode: FileMode.append,
      );
    }
  }
}
