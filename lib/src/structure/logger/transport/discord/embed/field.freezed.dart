// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'field.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EmbedField _$EmbedFieldFromJson(Map<String, dynamic> json) {
  return _EmbedField.fromJson(json);
}

/// @nodoc
mixin _$EmbedField {
  String get name => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;
  bool? get inline => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmbedFieldCopyWith<EmbedField> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmbedFieldCopyWith<$Res> {
  factory $EmbedFieldCopyWith(
          EmbedField value, $Res Function(EmbedField) then) =
      _$EmbedFieldCopyWithImpl<$Res, EmbedField>;
  @useResult
  $Res call({String name, String value, bool? inline});
}

/// @nodoc
class _$EmbedFieldCopyWithImpl<$Res, $Val extends EmbedField>
    implements $EmbedFieldCopyWith<$Res> {
  _$EmbedFieldCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? value = null,
    Object? inline = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      inline: freezed == inline
          ? _value.inline
          : inline // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EmbedFieldCopyWith<$Res>
    implements $EmbedFieldCopyWith<$Res> {
  factory _$$_EmbedFieldCopyWith(
          _$_EmbedField value, $Res Function(_$_EmbedField) then) =
      __$$_EmbedFieldCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String value, bool? inline});
}

/// @nodoc
class __$$_EmbedFieldCopyWithImpl<$Res>
    extends _$EmbedFieldCopyWithImpl<$Res, _$_EmbedField>
    implements _$$_EmbedFieldCopyWith<$Res> {
  __$$_EmbedFieldCopyWithImpl(
      _$_EmbedField _value, $Res Function(_$_EmbedField) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? value = null,
    Object? inline = freezed,
  }) {
    return _then(_$_EmbedField(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      inline: freezed == inline
          ? _value.inline
          : inline // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EmbedField implements _EmbedField {
  const _$_EmbedField({required this.name, required this.value, this.inline});

  factory _$_EmbedField.fromJson(Map<String, dynamic> json) =>
      _$$_EmbedFieldFromJson(json);

  @override
  final String name;
  @override
  final String value;
  @override
  final bool? inline;

  @override
  String toString() {
    return 'EmbedField(name: $name, value: $value, inline: $inline)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EmbedField &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.inline, inline) || other.inline == inline));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, value, inline);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EmbedFieldCopyWith<_$_EmbedField> get copyWith =>
      __$$_EmbedFieldCopyWithImpl<_$_EmbedField>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EmbedFieldToJson(
      this,
    );
  }
}

abstract class _EmbedField implements EmbedField {
  const factory _EmbedField(
      {required final String name,
      required final String value,
      final bool? inline}) = _$_EmbedField;

  factory _EmbedField.fromJson(Map<String, dynamic> json) =
      _$_EmbedField.fromJson;

  @override
  String get name;
  @override
  String get value;
  @override
  bool? get inline;
  @override
  @JsonKey(ignore: true)
  _$$_EmbedFieldCopyWith<_$_EmbedField> get copyWith =>
      throw _privateConstructorUsedError;
}
