// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'security.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SecurityConfig _$$_SecurityConfigFromJson(Map<String, dynamic> json) =>
    _$_SecurityConfig(
      authentication: AuthenticationConfig.fromJson(
          json['authentication'] as Map<String, dynamic>),
      groups: (json['groups'] as List<dynamic>)
          .map((e) => GroupConfig.fromJson(e as Map<String, dynamic>))
          .toList(),
      users: (json['users'] as List<dynamic>)
          .map((e) => UserConfig.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_SecurityConfigToJson(_$_SecurityConfig instance) =>
    <String, dynamic>{
      'authentication': instance.authentication.toJson(),
      'groups': instance.groups.map((e) => e.toJson()).toList(),
      'users': instance.users.map((e) => e.toJson()).toList(),
    };
