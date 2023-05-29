import 'package:json_annotation/json_annotation.dart';

/// A JSON converter that converts between DateTime objects and ISO 8601 formatted strings.
class DatetimeIso8601Converter implements JsonConverter<DateTime, String> {
  const DatetimeIso8601Converter();

  /// Converts a JSON string to a DateTime object.
  @override
  DateTime fromJson(String json) => DateTime.parse(json);

  /// Converts a DateTime object to a JSON string in ISO 8601 format.
  @override
  String toJson(DateTime object) => object.toIso8601String();
}
