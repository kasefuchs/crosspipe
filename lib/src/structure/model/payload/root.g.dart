// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'root.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$$_RootPayloadToJson(_$_RootPayload instance) {
  final val = <String, dynamic>{
    'type': _$PayloadTypeEnumMap[instance.type]!,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data?.toJson());
  return val;
}

const _$PayloadTypeEnumMap = {
  PayloadType.Hello: 0,
  PayloadType.Heartbeat: 1,
  PayloadType.Identify: 2,
  PayloadType.Ready: 3,
  PayloadType.Broadcast: 4,
};
