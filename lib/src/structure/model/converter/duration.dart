import 'package:json_annotation/json_annotation.dart';

/// A JSON converter that converts between Duration objects and integers.
class DurationConverter implements JsonConverter<Duration, int> {
  const DurationConverter();

  /// Converts an integer to a Duration object.
  @override
  Duration fromJson(int json) => Duration(milliseconds: json);

  /// Converts a Duration object to an integer.
  @override
  int toJson(Duration object) => object.inMilliseconds;
}
