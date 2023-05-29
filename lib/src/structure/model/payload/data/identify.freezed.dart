// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'identify.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

IdentifyPayloadData _$IdentifyPayloadDataFromJson(Map<String, dynamic> json) {
  return _IdentifyPayloadData.fromJson(json);
}

/// @nodoc
mixin _$IdentifyPayloadData {
  String get login => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;
  Set<String>? get feeds => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IdentifyPayloadDataCopyWith<IdentifyPayloadData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IdentifyPayloadDataCopyWith<$Res> {
  factory $IdentifyPayloadDataCopyWith(
          IdentifyPayloadData value, $Res Function(IdentifyPayloadData) then) =
      _$IdentifyPayloadDataCopyWithImpl<$Res, IdentifyPayloadData>;
  @useResult
  $Res call({String login, String? password, Set<String>? feeds});
}

/// @nodoc
class _$IdentifyPayloadDataCopyWithImpl<$Res, $Val extends IdentifyPayloadData>
    implements $IdentifyPayloadDataCopyWith<$Res> {
  _$IdentifyPayloadDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? login = null,
    Object? password = freezed,
    Object? feeds = freezed,
  }) {
    return _then(_value.copyWith(
      login: null == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      feeds: freezed == feeds
          ? _value.feeds
          : feeds // ignore: cast_nullable_to_non_nullable
              as Set<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_IdentifyPayloadDataCopyWith<$Res>
    implements $IdentifyPayloadDataCopyWith<$Res> {
  factory _$$_IdentifyPayloadDataCopyWith(_$_IdentifyPayloadData value,
          $Res Function(_$_IdentifyPayloadData) then) =
      __$$_IdentifyPayloadDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String login, String? password, Set<String>? feeds});
}

/// @nodoc
class __$$_IdentifyPayloadDataCopyWithImpl<$Res>
    extends _$IdentifyPayloadDataCopyWithImpl<$Res, _$_IdentifyPayloadData>
    implements _$$_IdentifyPayloadDataCopyWith<$Res> {
  __$$_IdentifyPayloadDataCopyWithImpl(_$_IdentifyPayloadData _value,
      $Res Function(_$_IdentifyPayloadData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? login = null,
    Object? password = freezed,
    Object? feeds = freezed,
  }) {
    return _then(_$_IdentifyPayloadData(
      login: null == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      feeds: freezed == feeds
          ? _value._feeds
          : feeds // ignore: cast_nullable_to_non_nullable
              as Set<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_IdentifyPayloadData implements _IdentifyPayloadData {
  const _$_IdentifyPayloadData(
      {required this.login, this.password, final Set<String>? feeds})
      : _feeds = feeds;

  factory _$_IdentifyPayloadData.fromJson(Map<String, dynamic> json) =>
      _$$_IdentifyPayloadDataFromJson(json);

  @override
  final String login;
  @override
  final String? password;
  final Set<String>? _feeds;
  @override
  Set<String>? get feeds {
    final value = _feeds;
    if (value == null) return null;
    if (_feeds is EqualUnmodifiableSetView) return _feeds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(value);
  }

  @override
  String toString() {
    return 'IdentifyPayloadData(login: $login, password: $password, feeds: $feeds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IdentifyPayloadData &&
            (identical(other.login, login) || other.login == login) &&
            (identical(other.password, password) ||
                other.password == password) &&
            const DeepCollectionEquality().equals(other._feeds, _feeds));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, login, password,
      const DeepCollectionEquality().hash(_feeds));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IdentifyPayloadDataCopyWith<_$_IdentifyPayloadData> get copyWith =>
      __$$_IdentifyPayloadDataCopyWithImpl<_$_IdentifyPayloadData>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IdentifyPayloadDataToJson(
      this,
    );
  }
}

abstract class _IdentifyPayloadData implements IdentifyPayloadData {
  const factory _IdentifyPayloadData(
      {required final String login,
      final String? password,
      final Set<String>? feeds}) = _$_IdentifyPayloadData;

  factory _IdentifyPayloadData.fromJson(Map<String, dynamic> json) =
      _$_IdentifyPayloadData.fromJson;

  @override
  String get login;
  @override
  String? get password;
  @override
  Set<String>? get feeds;
  @override
  @JsonKey(ignore: true)
  _$$_IdentifyPayloadDataCopyWith<_$_IdentifyPayloadData> get copyWith =>
      throw _privateConstructorUsedError;
}
