import 'package:json_annotation/json_annotation.dart';

import '../config/logger/options/color/data.dart';

/// A JSON converter that converts between ColorData objects and integers.
class ColorDataConverter implements JsonConverter<ColorData, int> {
  const ColorDataConverter();

  /// Converts an integer to a ColorData object.
  @override
  ColorData fromJson(int json) => ColorData.fromJson(json.toRadixString(16).padLeft(6, '0'));

  /// Converts a ColorData object to an integer.
  @override
  int toJson(ColorData object) => object.hexColor;
}
