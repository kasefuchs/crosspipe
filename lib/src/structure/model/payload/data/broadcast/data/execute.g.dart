// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'execute.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BroadcastExecutePayloadData _$$_BroadcastExecutePayloadDataFromJson(
        Map<String, dynamic> json) =>
    _$_BroadcastExecutePayloadData(
      recipients:
          (json['recipients'] as List<dynamic>).map((e) => e as String).toSet(),
      name: json['name'] as String,
      arguments: json['arguments'] as List<dynamic>,
    );

Map<String, dynamic> _$$_BroadcastExecutePayloadDataToJson(
        _$_BroadcastExecutePayloadData instance) =>
    <String, dynamic>{
      'recipients': instance.recipients.toList(),
      'name': instance.name,
      'arguments': instance.arguments,
    };
