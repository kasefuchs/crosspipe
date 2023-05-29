// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'identify.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_IdentifyPayloadData _$$_IdentifyPayloadDataFromJson(
        Map<String, dynamic> json) =>
    _$_IdentifyPayloadData(
      login: json['login'] as String,
      password: json['password'] as String?,
      feeds: (json['feeds'] as List<dynamic>?)?.map((e) => e as String).toSet(),
    );

Map<String, dynamic> _$$_IdentifyPayloadDataToJson(
    _$_IdentifyPayloadData instance) {
  final val = <String, dynamic>{
    'login': instance.login,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('password', instance.password);
  writeNotNull('feeds', instance.feeds?.toList());
  return val;
}
