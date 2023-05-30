import 'package:json_annotation/json_annotation.dart';

class DatetimeUnixConverter implements JsonConverter<DateTime, int> {
  const DatetimeUnixConverter();

  @override
  DateTime fromJson(int json) => DateTime.fromMicrosecondsSinceEpoch(json);

  @override
  int toJson(DateTime object) => object.millisecondsSinceEpoch;
}
