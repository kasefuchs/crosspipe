// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'credentials.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserCredentials _$$_UserCredentialsFromJson(Map<String, dynamic> json) =>
    _$_UserCredentials(
      login: json['login'] as String,
      passwordHash: json['password_hash'] as String?,
    );

Map<String, dynamic> _$$_UserCredentialsToJson(_$_UserCredentials instance) {
  final val = <String, dynamic>{
    'login': instance.login,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('password_hash', instance.passwordHash);
  return val;
}
