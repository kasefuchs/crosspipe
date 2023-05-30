import 'dart:async';
import 'dart:collection';
import 'dart:convert';
import 'dart:io';

import '../../../model/config/logger/options/transport/file.dart';
import '../../../model/logger/record.dart';
import 'abstract.dart';

class FileLoggerTransport extends AbstractLoggerTransport<FileLoggerTransportOptions> {
  Queue<LogRecord> _queuedLogRecords = Queue<LogRecord>();

  FileLoggerTransport(super.application) {
    Timer.periodic(
      options.flushInterval,
          (_) => _flush(),
    );
  }

  @override
  void push(LogRecord record) => _queuedLogRecords.addLast(record);

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
