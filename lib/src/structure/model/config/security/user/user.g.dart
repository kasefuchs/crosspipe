// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserConfig _$$_UserConfigFromJson(Map<String, dynamic> json) =>
    _$_UserConfig(
      credentials:
          UserCredentials.fromJson(json['credentials'] as Map<String, dynamic>),
      group: json['group'] as String,
    );

Map<String, dynamic> _$$_UserConfigToJson(_$_UserConfig instance) =>
    <String, dynamic>{
      'credentials': instance.credentials.toJson(),
      'group': instance.group,
    };
