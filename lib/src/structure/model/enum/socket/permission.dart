import 'package:json_annotation/json_annotation.dart';

@JsonEnum(fieldRename: FieldRename.screamingSnake)
enum Permission {
  BroadcastMessage,
  BroadcastExecute;
}
