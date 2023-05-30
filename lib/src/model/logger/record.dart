import 'package:freezed_annotation/freezed_annotation.dart';

import '../converter/datetime/unix.dart';
import '../enum/logger/level.dart';

part 'record.freezed.dart';

part 'record.g.dart';

@freezed
class LogRecord with _$LogRecord {
  const factory LogRecord({
    /// Log level.
    required LogLevel level,

    /// Pid of application.
    required int pid,

    /// Record content.
    @JsonKey(name: 'msg') required String message,

    /// Record time.
    @DatetimeUnixConverter() required DateTime time,

    /// Record tags.
    @Default([]) List<String> tags,

    /// Attached object.
    Object? object,
  }) = _LogRecord;

  factory LogRecord.fromJson(Map<String, dynamic> json) => _$LogRecordFromJson(json);
}
