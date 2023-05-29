import 'package:json_annotation/json_annotation.dart';

/// A JSON converter that converts between DateTime objects and Unix timestamps.
class DatetimeUnixConverter implements JsonConverter<DateTime, int> {
  const DatetimeUnixConverter();

  /// Converts an integer Unix timestamp to a DateTime object.
  @override
  DateTime fromJson(int json) => DateTime.fromMicrosecondsSinceEpoch(json);

  /// Converts a DateTime object to an integer Unix timestamp.
  @override
  int toJson(DateTime object) => object.millisecondsSinceEpoch;
}
