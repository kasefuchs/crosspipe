// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BroadcastMessagePayloadData _$$_BroadcastMessagePayloadDataFromJson(
        Map<String, dynamic> json) =>
    _$_BroadcastMessagePayloadData(
      recipients:
          (json['recipients'] as List<dynamic>).map((e) => e as String).toSet(),
      content: json['content'],
    );

Map<String, dynamic> _$$_BroadcastMessagePayloadDataToJson(
    _$_BroadcastMessagePayloadData instance) {
  final val = <String, dynamic>{
    'recipients': instance.recipients.toList(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('content', instance.content);
  return val;
}
