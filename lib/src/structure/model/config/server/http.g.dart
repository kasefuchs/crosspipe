// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'http.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_HttpServerConfig _$$_HttpServerConfigFromJson(Map<String, dynamic> json) =>
    _$_HttpServerConfig(
      host: json['host'] as String? ?? '127.0.0.1',
      port: json['port'] as int? ?? 8080,
    );

Map<String, dynamic> _$$_HttpServerConfigToJson(_$_HttpServerConfig instance) =>
    <String, dynamic>{
      'host': instance.host,
      'port': instance.port,
    };
