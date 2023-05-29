// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'footer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EmbedFooter _$$_EmbedFooterFromJson(Map<String, dynamic> json) =>
    _$_EmbedFooter(
      text: json['text'] as String,
      iconUrl: _$JsonConverterFromJson<String, Uri>(
          json['icon_url'], const UriConverter().fromJson),
      proxyIconUrl: _$JsonConverterFromJson<String, Uri>(
          json['proxy_icon_url'], const UriConverter().fromJson),
    );

Map<String, dynamic> _$$_EmbedFooterToJson(_$_EmbedFooter instance) {
  final val = <String, dynamic>{
    'text': instance.text,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'icon_url',
      _$JsonConverterToJson<String, Uri>(
          instance.iconUrl, const UriConverter().toJson));
  writeNotNull(
      'proxy_icon_url',
      _$JsonConverterToJson<String, Uri>(
          instance.proxyIconUrl, const UriConverter().toJson));
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
