import 'package:json_annotation/json_annotation.dart';

@JsonEnum(valueField: 'index')
enum PayloadType {
  Hello,
  Heartbeat,
  Identify,
  Ready,
  Broadcast;
}
