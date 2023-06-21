import 'package:freezed_annotation/freezed_annotation.dart';

part 'field.freezed.dart';
part 'field.g.dart';

@freezed
class EmbedField with _$EmbedField {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory EmbedField({
    required String name,
    required String value,
    bool? inline,
  }) = _EmbedField;

  factory EmbedField.fromJson(Map<String, dynamic> json) =>
      _$EmbedFieldFromJson(json);
}
