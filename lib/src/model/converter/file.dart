import 'dart:io';

import 'package:json_annotation/json_annotation.dart';

/// A JSON converter that converts between File objects and strings.
class FileConverter implements JsonConverter<File, String> {
  const FileConverter();

  /// Converts a path to a File object.
  @override
  File fromJson(String json) => File(json);

  /// Converts a File object to a path.
  @override
  String toJson(File object) => object.path;
}
