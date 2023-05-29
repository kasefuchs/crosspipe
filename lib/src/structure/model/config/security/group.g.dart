// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GroupConfig _$$_GroupConfigFromJson(Map<String, dynamic> json) =>
    _$_GroupConfig(
      name: json['name'] as String,
      allowLoginIfNoPasswordSet:
          json['allow_login_if_no_password_set'] as bool? ?? false,
      permissions: (json['permissions'] as List<dynamic>?)
              ?.map((e) => $enumDecode(_$PermissionEnumMap, e))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_GroupConfigToJson(_$_GroupConfig instance) =>
    <String, dynamic>{
      'name': instance.name,
      'allow_login_if_no_password_set': instance.allowLoginIfNoPasswordSet,
      'permissions':
          instance.permissions.map((e) => _$PermissionEnumMap[e]!).toList(),
    };

const _$PermissionEnumMap = {
  Permission.BroadcastMessage: 'BROADCAST_MESSAGE',
  Permission.BroadcastExecute: 'BROADCAST_EXECUTE',
};
