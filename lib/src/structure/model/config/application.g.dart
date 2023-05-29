// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'application.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ApplicationConfig _$$_ApplicationConfigFromJson(Map<String, dynamic> json) =>
    _$_ApplicationConfig(
      logger: LoggerConfig.fromJson(json['logger'] as Map<String, dynamic>),
      security:
          SecurityConfig.fromJson(json['security'] as Map<String, dynamic>),
      server: ServerConfig.fromJson(json['server'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ApplicationConfigToJson(
        _$_ApplicationConfig instance) =>
    <String, dynamic>{
      'logger': instance.logger.toJson(),
      'security': instance.security.toJson(),
      'server': instance.server.toJson(),
    };
