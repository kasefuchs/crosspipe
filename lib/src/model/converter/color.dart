import 'package:json_annotation/json_annotation.dart';

import '../config/logger/options/color/data.dart';

class ColorDataConverter implements JsonConverter<ColorData, int> {
  const ColorDataConverter();

  @override
  ColorData fromJson(int json) => ColorData.fromJson(json.toRadixString(16).padLeft(6, '0'));

  @override
  int toJson(ColorData object) => object.hexColor;
}
