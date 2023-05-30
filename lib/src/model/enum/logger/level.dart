import 'package:json_annotation/json_annotation.dart';

@JsonEnum(fieldRename: FieldRename.snake)
enum LogLevel {
  Trace,
  Debug,
  Info,
  Warn,
  Error,
  Fatal;
}
