// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'embed.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Embed _$$_EmbedFromJson(Map<String, dynamic> json) => _$_Embed(
      title: json['title'] as String?,
      description: json['description'] as String?,
      fields: (json['fields'] as List<dynamic>?)
          ?.map((e) => EmbedField.fromJson(e as Map<String, dynamic>))
          .toList(),
      footer: json['footer'] == null
          ? null
          : EmbedFooter.fromJson(json['footer'] as Map<String, dynamic>),
      url: _$JsonConverterFromJson<String, Uri>(
          json['url'], const UriConverter().fromJson),
      timestamp: _$JsonConverterFromJson<String, DateTime>(
          json['timestamp'], const DatetimeIso8601Converter().fromJson),
      color: _$JsonConverterFromJson<int, ColorData>(
          json['color'], const ColorDataConverter().fromJson),
    );

Map<String, dynamic> _$$_EmbedToJson(_$_Embed instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('title', instance.title);
  writeNotNull('description', instance.description);
  writeNotNull('fields', instance.fields?.map((e) => e.toJson()).toList());
  writeNotNull('footer', instance.footer?.toJson());
  writeNotNull(
      'url',
      _$JsonConverterToJson<String, Uri>(
          instance.url, const UriConverter().toJson));
  writeNotNull(
      'timestamp',
      _$JsonConverterToJson<String, DateTime>(
          instance.timestamp, const DatetimeIso8601Converter().toJson));
  writeNotNull(
      'color',
      _$JsonConverterToJson<int, ColorData>(
          instance.color, const ColorDataConverter().toJson));
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
