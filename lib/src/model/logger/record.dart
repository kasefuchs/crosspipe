import 'package:freezed_annotation/freezed_annotation.dart';

import '../converter/datetime/unix.dart';
import '../enum/logger/level.dart';

part 'record.freezed.dart';
part 'record.g.dart';

@freezed
class LogRecord with _$LogRecord {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory LogRecord({
    required LogLevel level,
    required int pid,
    @JsonKey(name: 'msg') required String message,
    @DatetimeUnixConverter() required DateTime time,
    @Default([]) List<String> tags,
    Object? object,
  }) = _LogRecord;

  factory LogRecord.fromJson(Map<String, dynamic> json) =>
      _$LogRecordFromJson(json);
}
