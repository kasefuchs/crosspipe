// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ready.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ReadyPayloadData _$ReadyPayloadDataFromJson(Map<String, dynamic> json) {
  return _ReadyPayloadData.fromJson(json);
}

/// @nodoc
mixin _$ReadyPayloadData {
  String get sessionId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReadyPayloadDataCopyWith<ReadyPayloadData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReadyPayloadDataCopyWith<$Res> {
  factory $ReadyPayloadDataCopyWith(
          ReadyPayloadData value, $Res Function(ReadyPayloadData) then) =
      _$ReadyPayloadDataCopyWithImpl<$Res, ReadyPayloadData>;
  @useResult
  $Res call({String sessionId});
}

/// @nodoc
class _$ReadyPayloadDataCopyWithImpl<$Res, $Val extends ReadyPayloadData>
    implements $ReadyPayloadDataCopyWith<$Res> {
  _$ReadyPayloadDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sessionId = null,
  }) {
    return _then(_value.copyWith(
      sessionId: null == sessionId
          ? _value.sessionId
          : sessionId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ReadyPayloadDataCopyWith<$Res>
    implements $ReadyPayloadDataCopyWith<$Res> {
  factory _$$_ReadyPayloadDataCopyWith(
          _$_ReadyPayloadData value, $Res Function(_$_ReadyPayloadData) then) =
      __$$_ReadyPayloadDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String sessionId});
}

/// @nodoc
class __$$_ReadyPayloadDataCopyWithImpl<$Res>
    extends _$ReadyPayloadDataCopyWithImpl<$Res, _$_ReadyPayloadData>
    implements _$$_ReadyPayloadDataCopyWith<$Res> {
  __$$_ReadyPayloadDataCopyWithImpl(
      _$_ReadyPayloadData _value, $Res Function(_$_ReadyPayloadData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sessionId = null,
  }) {
    return _then(_$_ReadyPayloadData(
      sessionId: null == sessionId
          ? _value.sessionId
          : sessionId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ReadyPayloadData implements _ReadyPayloadData {
  const _$_ReadyPayloadData({required this.sessionId});

  factory _$_ReadyPayloadData.fromJson(Map<String, dynamic> json) =>
      _$$_ReadyPayloadDataFromJson(json);

  @override
  final String sessionId;

  @override
  String toString() {
    return 'ReadyPayloadData(sessionId: $sessionId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReadyPayloadData &&
            (identical(other.sessionId, sessionId) ||
                other.sessionId == sessionId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, sessionId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReadyPayloadDataCopyWith<_$_ReadyPayloadData> get copyWith =>
      __$$_ReadyPayloadDataCopyWithImpl<_$_ReadyPayloadData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReadyPayloadDataToJson(
      this,
    );
  }
}

abstract class _ReadyPayloadData implements ReadyPayloadData {
  const factory _ReadyPayloadData({required final String sessionId}) =
      _$_ReadyPayloadData;

  factory _ReadyPayloadData.fromJson(Map<String, dynamic> json) =
      _$_ReadyPayloadData.fromJson;

  @override
  String get sessionId;
  @override
  @JsonKey(ignore: true)
  _$$_ReadyPayloadDataCopyWith<_$_ReadyPayloadData> get copyWith =>
      throw _privateConstructorUsedError;
}
