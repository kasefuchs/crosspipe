import 'package:freezed_annotation/freezed_annotation.dart';

import 'data.dart';

part 'color.freezed.dart';
part 'color.g.dart';

@freezed
class Color with _$Color {
  const factory Color({
    ColorData? background,
    ColorData? foreground,
  }) = _Color;

  factory Color.fromJson(Map<String, dynamic> json) => _$ColorFromJson(json);
}
