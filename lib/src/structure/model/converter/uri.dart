import 'package:json_annotation/json_annotation.dart';

/// A JSON converter that converts between Uri objects and strings.
class UriConverter implements JsonConverter<Uri, String> {
  const UriConverter();

  /// Converts a string to a Uri object.
  @override
  Uri fromJson(String json) => Uri.parse(json);

  /// Converts a Uri object to a string.
  @override
  String toJson(Uri object) => object.toString();
}
