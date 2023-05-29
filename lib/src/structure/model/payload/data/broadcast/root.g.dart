// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'root.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$$_BroadcastRootPayloadToJson(
        _$_BroadcastRootPayload instance) =>
    <String, dynamic>{
      'type': _$BroadcastTypeEnumMap[instance.type]!,
      'data': instance.data.toJson(),
    };

const _$BroadcastTypeEnumMap = {
  BroadcastType.Message: 0,
  BroadcastType.Execute: 1,
};
