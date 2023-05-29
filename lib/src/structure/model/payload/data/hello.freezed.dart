// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hello.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HelloPayloadData _$HelloPayloadDataFromJson(Map<String, dynamic> json) {
  return _HelloPayloadData.fromJson(json);
}

/// @nodoc
mixin _$HelloPayloadData {
  @DurationConverter()
  Duration get heartbeatTimeout => throw _privateConstructorUsedError;
  @DurationConverter()
  Duration get identifyTimeout => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HelloPayloadDataCopyWith<HelloPayloadData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HelloPayloadDataCopyWith<$Res> {
  factory $HelloPayloadDataCopyWith(
          HelloPayloadData value, $Res Function(HelloPayloadData) then) =
      _$HelloPayloadDataCopyWithImpl<$Res, HelloPayloadData>;
  @useResult
  $Res call(
      {@DurationConverter() Duration heartbeatTimeout,
      @DurationConverter() Duration identifyTimeout});
}

/// @nodoc
class _$HelloPayloadDataCopyWithImpl<$Res, $Val extends HelloPayloadData>
    implements $HelloPayloadDataCopyWith<$Res> {
  _$HelloPayloadDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? heartbeatTimeout = null,
    Object? identifyTimeout = null,
  }) {
    return _then(_value.copyWith(
      heartbeatTimeout: null == heartbeatTimeout
          ? _value.heartbeatTimeout
          : heartbeatTimeout // ignore: cast_nullable_to_non_nullable
              as Duration,
      identifyTimeout: null == identifyTimeout
          ? _value.identifyTimeout
          : identifyTimeout // ignore: cast_nullable_to_non_nullable
              as Duration,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HelloPayloadDataCopyWith<$Res>
    implements $HelloPayloadDataCopyWith<$Res> {
  factory _$$_HelloPayloadDataCopyWith(
          _$_HelloPayloadData value, $Res Function(_$_HelloPayloadData) then) =
      __$$_HelloPayloadDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@DurationConverter() Duration heartbeatTimeout,
      @DurationConverter() Duration identifyTimeout});
}

/// @nodoc
class __$$_HelloPayloadDataCopyWithImpl<$Res>
    extends _$HelloPayloadDataCopyWithImpl<$Res, _$_HelloPayloadData>
    implements _$$_HelloPayloadDataCopyWith<$Res> {
  __$$_HelloPayloadDataCopyWithImpl(
      _$_HelloPayloadData _value, $Res Function(_$_HelloPayloadData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? heartbeatTimeout = null,
    Object? identifyTimeout = null,
  }) {
    return _then(_$_HelloPayloadData(
      heartbeatTimeout: null == heartbeatTimeout
          ? _value.heartbeatTimeout
          : heartbeatTimeout // ignore: cast_nullable_to_non_nullable
              as Duration,
      identifyTimeout: null == identifyTimeout
          ? _value.identifyTimeout
          : identifyTimeout // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HelloPayloadData implements _HelloPayloadData {
  const _$_HelloPayloadData(
      {@DurationConverter() required this.heartbeatTimeout,
      @DurationConverter() required this.identifyTimeout});

  factory _$_HelloPayloadData.fromJson(Map<String, dynamic> json) =>
      _$$_HelloPayloadDataFromJson(json);

  @override
  @DurationConverter()
  final Duration heartbeatTimeout;
  @override
  @DurationConverter()
  final Duration identifyTimeout;

  @override
  String toString() {
    return 'HelloPayloadData(heartbeatTimeout: $heartbeatTimeout, identifyTimeout: $identifyTimeout)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HelloPayloadData &&
            (identical(other.heartbeatTimeout, heartbeatTimeout) ||
                other.heartbeatTimeout == heartbeatTimeout) &&
            (identical(other.identifyTimeout, identifyTimeout) ||
                other.identifyTimeout == identifyTimeout));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, heartbeatTimeout, identifyTimeout);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HelloPayloadDataCopyWith<_$_HelloPayloadData> get copyWith =>
      __$$_HelloPayloadDataCopyWithImpl<_$_HelloPayloadData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HelloPayloadDataToJson(
      this,
    );
  }
}

abstract class _HelloPayloadData implements HelloPayloadData {
  const factory _HelloPayloadData(
          {@DurationConverter() required final Duration heartbeatTimeout,
          @DurationConverter() required final Duration identifyTimeout}) =
      _$_HelloPayloadData;

  factory _HelloPayloadData.fromJson(Map<String, dynamic> json) =
      _$_HelloPayloadData.fromJson;

  @override
  @DurationConverter()
  Duration get heartbeatTimeout;
  @override
  @DurationConverter()
  Duration get identifyTimeout;
  @override
  @JsonKey(ignore: true)
  _$$_HelloPayloadDataCopyWith<_$_HelloPayloadData> get copyWith =>
      throw _privateConstructorUsedError;
}
