// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stdout.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StdoutLoggerTransportOptions _$$_StdoutLoggerTransportOptionsFromJson(
        Map<String, dynamic> json) =>
    _$_StdoutLoggerTransportOptions(
      colors: ColorMap.fromJson(json['colors'] as Map<String, dynamic>),
      styled: json['styled'] as bool? ?? true,
      pretty: json['pretty'] as bool? ?? true,
      timeFormat: json['time_format'] as String? ?? 'HH:mm:ss.SSS',
    );

Map<String, dynamic> _$$_StdoutLoggerTransportOptionsToJson(
        _$_StdoutLoggerTransportOptions instance) =>
    <String, dynamic>{
      'colors': instance.colors.toJson(),
      'styled': instance.styled,
      'pretty': instance.pretty,
      'time_format': instance.timeFormat,
    };
