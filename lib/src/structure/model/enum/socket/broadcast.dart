import 'package:json_annotation/json_annotation.dart';

@JsonEnum(valueField: 'index')
enum BroadcastType {
  Message,
  Execute;
}
