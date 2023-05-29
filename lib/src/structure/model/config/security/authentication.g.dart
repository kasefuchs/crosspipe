// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authentication.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AuthenticationConfig _$$_AuthenticationConfigFromJson(
        Map<String, dynamic> json) =>
    _$_AuthenticationConfig(
      identifyTimeout:
          const DurationConverter().fromJson(json['identify_timeout'] as int),
      heartbeatTimeout:
          const DurationConverter().fromJson(json['heartbeat_timeout'] as int),
      sessionIdLength: json['session_id_length'] as int? ?? 16,
    );

Map<String, dynamic> _$$_AuthenticationConfigToJson(
        _$_AuthenticationConfig instance) =>
    <String, dynamic>{
      'identify_timeout':
          const DurationConverter().toJson(instance.identifyTimeout),
      'heartbeat_timeout':
          const DurationConverter().toJson(instance.heartbeatTimeout),
      'session_id_length': instance.sessionIdLength,
    };
