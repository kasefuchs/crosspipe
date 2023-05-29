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
mixin _$BroadcastRootPayload {
  BroadcastType get type => throw _privateConstructorUsedError;
  AbstractBroadcastPayloadData get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BroadcastRootPayloadCopyWith<BroadcastRootPayload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BroadcastRootPayloadCopyWith<$Res> {
  factory $BroadcastRootPayloadCopyWith(BroadcastRootPayload value,
          $Res Function(BroadcastRootPayload) then) =
      _$BroadcastRootPayloadCopyWithImpl<$Res, BroadcastRootPayload>;
  @useResult
  $Res call({BroadcastType type, AbstractBroadcastPayloadData data});
}

/// @nodoc
class _$BroadcastRootPayloadCopyWithImpl<$Res,
        $Val extends BroadcastRootPayload>
    implements $BroadcastRootPayloadCopyWith<$Res> {
  _$BroadcastRootPayloadCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as BroadcastType,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as AbstractBroadcastPayloadData,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BroadcastRootPayloadCopyWith<$Res>
    implements $BroadcastRootPayloadCopyWith<$Res> {
  factory _$$_BroadcastRootPayloadCopyWith(_$_BroadcastRootPayload value,
          $Res Function(_$_BroadcastRootPayload) then) =
      __$$_BroadcastRootPayloadCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BroadcastType type, AbstractBroadcastPayloadData data});
}

/// @nodoc
class __$$_BroadcastRootPayloadCopyWithImpl<$Res>
    extends _$BroadcastRootPayloadCopyWithImpl<$Res, _$_BroadcastRootPayload>
    implements _$$_BroadcastRootPayloadCopyWith<$Res> {
  __$$_BroadcastRootPayloadCopyWithImpl(_$_BroadcastRootPayload _value,
      $Res Function(_$_BroadcastRootPayload) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? data = null,
  }) {
    return _then(_$_BroadcastRootPayload(
      null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as BroadcastType,
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as AbstractBroadcastPayloadData,
    ));
  }
}

/// @nodoc
@JsonSerializable(createFactory: false)
class _$_BroadcastRootPayload implements _BroadcastRootPayload {
  const _$_BroadcastRootPayload(this.type, this.data);

  @override
  final BroadcastType type;
  @override
  final AbstractBroadcastPayloadData data;

  @override
  String toString() {
    return 'BroadcastRootPayload(type: $type, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BroadcastRootPayload &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, type, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BroadcastRootPayloadCopyWith<_$_BroadcastRootPayload> get copyWith =>
      __$$_BroadcastRootPayloadCopyWithImpl<_$_BroadcastRootPayload>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BroadcastRootPayloadToJson(
      this,
    );
  }
}

abstract class _BroadcastRootPayload implements BroadcastRootPayload {
  const factory _BroadcastRootPayload(
          final BroadcastType type, final AbstractBroadcastPayloadData data) =
      _$_BroadcastRootPayload;

  @override
  BroadcastType get type;
  @override
  AbstractBroadcastPayloadData get data;
  @override
  @JsonKey(ignore: true)
  _$$_BroadcastRootPayloadCopyWith<_$_BroadcastRootPayload> get copyWith =>
      throw _privateConstructorUsedError;
}
