// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hello.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_HelloPayloadData _$$_HelloPayloadDataFromJson(Map<String, dynamic> json) =>
    _$_HelloPayloadData(
      heartbeatTimeout:
          const DurationConverter().fromJson(json['heartbeat_timeout'] as int),
      identifyTimeout:
          const DurationConverter().fromJson(json['identify_timeout'] as int),
    );

Map<String, dynamic> _$$_HelloPayloadDataToJson(_$_HelloPayloadData instance) =>
    <String, dynamic>{
      'heartbeat_timeout':
          const DurationConverter().toJson(instance.heartbeatTimeout),
      'identify_timeout':
          const DurationConverter().toJson(instance.identifyTimeout),
    };
