import 'package:freezed_annotation/freezed_annotation.dart';

import 'data.dart';

part 'color.freezed.dart';

part 'color.g.dart';

/// Represents a Color object with optional background and foreground colors.
@freezed
class Color with _$Color {
  const factory Color({
    /// Background color data.
    ColorData? background,

    /// Foreground color data.
    ColorData? foreground,
  }) = _Color;

  /// Generates a Color object from a JSON map.
  factory Color.fromJson(Map<String, dynamic> json) => _$ColorFromJson(json);
}
