// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'unknown.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UnknownPayloadData _$UnknownPayloadDataFromJson(Map<String, dynamic> json) {
  return _UnknownPayloadData.fromJson(json);
}

/// @nodoc
mixin _$UnknownPayloadData {
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnknownPayloadDataCopyWith<$Res> {
  factory $UnknownPayloadDataCopyWith(
          UnknownPayloadData value, $Res Function(UnknownPayloadData) then) =
      _$UnknownPayloadDataCopyWithImpl<$Res, UnknownPayloadData>;
}

/// @nodoc
class _$UnknownPayloadDataCopyWithImpl<$Res, $Val extends UnknownPayloadData>
    implements $UnknownPayloadDataCopyWith<$Res> {
  _$UnknownPayloadDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_UnknownPayloadDataCopyWith<$Res> {
  factory _$$_UnknownPayloadDataCopyWith(_$_UnknownPayloadData value,
          $Res Function(_$_UnknownPayloadData) then) =
      __$$_UnknownPayloadDataCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UnknownPayloadDataCopyWithImpl<$Res>
    extends _$UnknownPayloadDataCopyWithImpl<$Res, _$_UnknownPayloadData>
    implements _$$_UnknownPayloadDataCopyWith<$Res> {
  __$$_UnknownPayloadDataCopyWithImpl(
      _$_UnknownPayloadData _value, $Res Function(_$_UnknownPayloadData) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$_UnknownPayloadData implements _UnknownPayloadData {
  const _$_UnknownPayloadData();

  factory _$_UnknownPayloadData.fromJson(Map<String, dynamic> json) =>
      _$$_UnknownPayloadDataFromJson(json);

  @override
  String toString() {
    return 'UnknownPayloadData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_UnknownPayloadData);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$_UnknownPayloadDataToJson(
      this,
    );
  }
}

abstract class _UnknownPayloadData implements UnknownPayloadData {
  const factory _UnknownPayloadData() = _$_UnknownPayloadData;

  factory _UnknownPayloadData.fromJson(Map<String, dynamic> json) =
      _$_UnknownPayloadData.fromJson;
}
