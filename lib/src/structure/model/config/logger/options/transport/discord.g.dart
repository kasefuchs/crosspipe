// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'discord.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DiscordWebhookLoggerTransportOptions
    _$$_DiscordWebhookLoggerTransportOptionsFromJson(
            Map<String, dynamic> json) =>
        _$_DiscordWebhookLoggerTransportOptions(
          url: const UriConverter().fromJson(json['url'] as String),
          flushInterval:
              const DurationConverter().fromJson(json['flush_interval'] as int),
          avatarUrl: _$JsonConverterFromJson<String, Uri>(
              json['avatar_url'], const UriConverter().fromJson),
          colors: ColorMap.fromJson(json['colors'] as Map<String, dynamic>),
          content: json['content'] as String?,
          username: json['username'] as String?,
        );

Map<String, dynamic> _$$_DiscordWebhookLoggerTransportOptionsToJson(
    _$_DiscordWebhookLoggerTransportOptions instance) {
  final val = <String, dynamic>{
    'url': const UriConverter().toJson(instance.url),
    'flush_interval': const DurationConverter().toJson(instance.flushInterval),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'avatar_url',
      _$JsonConverterToJson<String, Uri>(
          instance.avatarUrl, const UriConverter().toJson));
  val['colors'] = instance.colors.toJson();
  writeNotNull('content', instance.content);
  writeNotNull('username', instance.username);
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
