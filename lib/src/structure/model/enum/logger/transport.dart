import 'package:json_annotation/json_annotation.dart';

@JsonEnum(fieldRename: FieldRename.snake)
enum LoggerTransportType {
  DiscordWebhook,
  File,
  Stdout,
  None;
}
