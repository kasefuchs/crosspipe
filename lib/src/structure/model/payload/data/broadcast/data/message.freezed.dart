// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BroadcastMessagePayloadData _$BroadcastMessagePayloadDataFromJson(
    Map<String, dynamic> json) {
  return _BroadcastMessagePayloadData.fromJson(json);
}

/// @nodoc
mixin _$BroadcastMessagePayloadData {
  Set<String> get recipients => throw _privateConstructorUsedError;
  dynamic get content => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BroadcastMessagePayloadDataCopyWith<BroadcastMessagePayloadData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BroadcastMessagePayloadDataCopyWith<$Res> {
  factory $BroadcastMessagePayloadDataCopyWith(
          BroadcastMessagePayloadData value,
          $Res Function(BroadcastMessagePayloadData) then) =
      _$BroadcastMessagePayloadDataCopyWithImpl<$Res,
          BroadcastMessagePayloadData>;
  @useResult
  $Res call({Set<String> recipients, dynamic content});
}

/// @nodoc
class _$BroadcastMessagePayloadDataCopyWithImpl<$Res,
        $Val extends BroadcastMessagePayloadData>
    implements $BroadcastMessagePayloadDataCopyWith<$Res> {
  _$BroadcastMessagePayloadDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipients = null,
    Object? content = freezed,
  }) {
    return _then(_value.copyWith(
      recipients: null == recipients
          ? _value.recipients
          : recipients // ignore: cast_nullable_to_non_nullable
              as Set<String>,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BroadcastMessagePayloadDataCopyWith<$Res>
    implements $BroadcastMessagePayloadDataCopyWith<$Res> {
  factory _$$_BroadcastMessagePayloadDataCopyWith(
          _$_BroadcastMessagePayloadData value,
          $Res Function(_$_BroadcastMessagePayloadData) then) =
      __$$_BroadcastMessagePayloadDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Set<String> recipients, dynamic content});
}

/// @nodoc
class __$$_BroadcastMessagePayloadDataCopyWithImpl<$Res>
    extends _$BroadcastMessagePayloadDataCopyWithImpl<$Res,
        _$_BroadcastMessagePayloadData>
    implements _$$_BroadcastMessagePayloadDataCopyWith<$Res> {
  __$$_BroadcastMessagePayloadDataCopyWithImpl(
      _$_BroadcastMessagePayloadData _value,
      $Res Function(_$_BroadcastMessagePayloadData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipients = null,
    Object? content = freezed,
  }) {
    return _then(_$_BroadcastMessagePayloadData(
      recipients: null == recipients
          ? _value._recipients
          : recipients // ignore: cast_nullable_to_non_nullable
              as Set<String>,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BroadcastMessagePayloadData implements _BroadcastMessagePayloadData {
  const _$_BroadcastMessagePayloadData(
      {required final Set<String> recipients, required this.content})
      : _recipients = recipients;

  factory _$_BroadcastMessagePayloadData.fromJson(Map<String, dynamic> json) =>
      _$$_BroadcastMessagePayloadDataFromJson(json);

  final Set<String> _recipients;
  @override
  Set<String> get recipients {
    if (_recipients is EqualUnmodifiableSetView) return _recipients;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_recipients);
  }

  @override
  final dynamic content;

  @override
  String toString() {
    return 'BroadcastMessagePayloadData(recipients: $recipients, content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BroadcastMessagePayloadData &&
            const DeepCollectionEquality()
                .equals(other._recipients, _recipients) &&
            const DeepCollectionEquality().equals(other.content, content));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_recipients),
      const DeepCollectionEquality().hash(content));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BroadcastMessagePayloadDataCopyWith<_$_BroadcastMessagePayloadData>
      get copyWith => __$$_BroadcastMessagePayloadDataCopyWithImpl<
          _$_BroadcastMessagePayloadData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BroadcastMessagePayloadDataToJson(
      this,
    );
  }
}

abstract class _BroadcastMessagePayloadData
    implements BroadcastMessagePayloadData {
  const factory _BroadcastMessagePayloadData(
      {required final Set<String> recipients,
      required final dynamic content}) = _$_BroadcastMessagePayloadData;

  factory _BroadcastMessagePayloadData.fromJson(Map<String, dynamic> json) =
      _$_BroadcastMessagePayloadData.fromJson;

  @override
  Set<String> get recipients;
  @override
  dynamic get content;
  @override
  @JsonKey(ignore: true)
  _$$_BroadcastMessagePayloadDataCopyWith<_$_BroadcastMessagePayloadData>
      get copyWith => throw _privateConstructorUsedError;
}
