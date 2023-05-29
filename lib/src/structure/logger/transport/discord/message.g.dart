// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Message _$$_MessageFromJson(Map<String, dynamic> json) => _$_Message(
      avatarUrl: _$JsonConverterFromJson<String, Uri>(
          json['avatar_url'], const UriConverter().fromJson),
      content: json['content'] as String?,
      username: json['username'] as String?,
      embeds: (json['embeds'] as List<dynamic>?)
          ?.map((e) => Embed.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_MessageToJson(_$_Message instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'avatar_url',
      _$JsonConverterToJson<String, Uri>(
          instance.avatarUrl, const UriConverter().toJson));
  writeNotNull('content', instance.content);
  writeNotNull('username', instance.username);
  writeNotNull('embeds', instance.embeds?.map((e) => e.toJson()).toList());
  return val;
}

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);
