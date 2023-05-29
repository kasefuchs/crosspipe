// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'root.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RootPayload {
  PayloadType get type => throw _privateConstructorUsedError;
  AbstractPayloadData? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RootPayloadCopyWith<RootPayload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RootPayloadCopyWith<$Res> {
  factory $RootPayloadCopyWith(
          RootPayload value, $Res Function(RootPayload) then) =
      _$RootPayloadCopyWithImpl<$Res, RootPayload>;
  @useResult
  $Res call({PayloadType type, AbstractPayloadData? data});
}

/// @nodoc
class _$RootPayloadCopyWithImpl<$Res, $Val extends RootPayload>
    implements $RootPayloadCopyWith<$Res> {
  _$RootPayloadCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PayloadType,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as AbstractPayloadData?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RootPayloadCopyWith<$Res>
    implements $RootPayloadCopyWith<$Res> {
  factory _$$_RootPayloadCopyWith(
          _$_RootPayload value, $Res Function(_$_RootPayload) then) =
      __$$_RootPayloadCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PayloadType type, AbstractPayloadData? data});
}

/// @nodoc
class __$$_RootPayloadCopyWithImpl<$Res>
    extends _$RootPayloadCopyWithImpl<$Res, _$_RootPayload>
    implements _$$_RootPayloadCopyWith<$Res> {
  __$$_RootPayloadCopyWithImpl(
      _$_RootPayload _value, $Res Function(_$_RootPayload) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? data = freezed,
  }) {
    return _then(_$_RootPayload(
      null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PayloadType,
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as AbstractPayloadData?,
    ));
  }
}

/// @nodoc
@JsonSerializable(createFactory: false)
class _$_RootPayload implements _RootPayload {
  const _$_RootPayload(this.type, [this.data]);

  @override
  final PayloadType type;
  @override
  final AbstractPayloadData? data;

  @override
  String toString() {
    return 'RootPayload(type: $type, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RootPayload &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, type, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RootPayloadCopyWith<_$_RootPayload> get copyWith =>
      __$$_RootPayloadCopyWithImpl<_$_RootPayload>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RootPayloadToJson(
      this,
    );
  }
}

abstract class _RootPayload implements RootPayload {
  const factory _RootPayload(final PayloadType type,
      [final AbstractPayloadData? data]) = _$_RootPayload;

  @override
  PayloadType get type;
  @override
  AbstractPayloadData? get data;
  @override
  @JsonKey(ignore: true)
  _$$_RootPayloadCopyWith<_$_RootPayload> get copyWith =>
      throw _privateConstructorUsedError;
}
