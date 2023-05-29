// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'color.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Color _$$_ColorFromJson(Map<String, dynamic> json) => _$_Color(
      background: json['background'] == null
          ? null
          : ColorData.fromJson(json['background'] as String),
      foreground: json['foreground'] == null
          ? null
          : ColorData.fromJson(json['foreground'] as String),
    );

Map<String, dynamic> _$$_ColorToJson(_$_Color instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('background', instance.background?.toJson());
  writeNotNull('foreground', instance.foreground?.toJson());
  return val;
}
