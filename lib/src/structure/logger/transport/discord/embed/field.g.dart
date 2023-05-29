// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'field.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EmbedField _$$_EmbedFieldFromJson(Map<String, dynamic> json) =>
    _$_EmbedField(
      name: json['name'] as String,
      value: json['value'] as String,
      inline: json['inline'] as bool?,
    );

Map<String, dynamic> _$$_EmbedFieldToJson(_$_EmbedField instance) {
  final val = <String, dynamic>{
    'name': instance.name,
    'value': instance.value,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('inline', instance.inline);
  return val;
}
