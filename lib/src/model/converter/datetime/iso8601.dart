import 'package:json_annotation/json_annotation.dart';

class DatetimeIso8601Converter implements JsonConverter<DateTime, String> {
  const DatetimeIso8601Converter();

  @override
  DateTime fromJson(String json) => DateTime.parse(json);

  @override
  String toJson(DateTime object) => object.toIso8601String();
}
