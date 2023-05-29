// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserConfig _$UserConfigFromJson(Map<String, dynamic> json) {
  return _UserConfig.fromJson(json);
}

/// @nodoc
mixin _$UserConfig {
  /// User credentials.
  UserCredentials get credentials => throw _privateConstructorUsedError;

  /// User group.
  String get group => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserConfigCopyWith<UserConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserConfigCopyWith<$Res> {
  factory $UserConfigCopyWith(
          UserConfig value, $Res Function(UserConfig) then) =
      _$UserConfigCopyWithImpl<$Res, UserConfig>;
  @useResult
  $Res call({UserCredentials credentials, String group});

  $UserCredentialsCopyWith<$Res> get credentials;
}

/// @nodoc
class _$UserConfigCopyWithImpl<$Res, $Val extends UserConfig>
    implements $UserConfigCopyWith<$Res> {
  _$UserConfigCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? credentials = null,
    Object? group = null,
  }) {
    return _then(_value.copyWith(
      credentials: null == credentials
          ? _value.credentials
          : credentials // ignore: cast_nullable_to_non_nullable
              as UserCredentials,
      group: null == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCredentialsCopyWith<$Res> get credentials {
    return $UserCredentialsCopyWith<$Res>(_value.credentials, (value) {
      return _then(_value.copyWith(credentials: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_UserConfigCopyWith<$Res>
    implements $UserConfigCopyWith<$Res> {
  factory _$$_UserConfigCopyWith(
          _$_UserConfig value, $Res Function(_$_UserConfig) then) =
      __$$_UserConfigCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserCredentials credentials, String group});

  @override
  $UserCredentialsCopyWith<$Res> get credentials;
}

/// @nodoc
class __$$_UserConfigCopyWithImpl<$Res>
    extends _$UserConfigCopyWithImpl<$Res, _$_UserConfig>
    implements _$$_UserConfigCopyWith<$Res> {
  __$$_UserConfigCopyWithImpl(
      _$_UserConfig _value, $Res Function(_$_UserConfig) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? credentials = null,
    Object? group = null,
  }) {
    return _then(_$_UserConfig(
      credentials: null == credentials
          ? _value.credentials
          : credentials // ignore: cast_nullable_to_non_nullable
              as UserCredentials,
      group: null == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserConfig implements _UserConfig {
  const _$_UserConfig({required this.credentials, required this.group});

  factory _$_UserConfig.fromJson(Map<String, dynamic> json) =>
      _$$_UserConfigFromJson(json);

  /// User credentials.
  @override
  final UserCredentials credentials;

  /// User group.
  @override
  final String group;

  @override
  String toString() {
    return 'UserConfig(credentials: $credentials, group: $group)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserConfig &&
            (identical(other.credentials, credentials) ||
                other.credentials == credentials) &&
            (identical(other.group, group) || other.group == group));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, credentials, group);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserConfigCopyWith<_$_UserConfig> get copyWith =>
      __$$_UserConfigCopyWithImpl<_$_UserConfig>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserConfigToJson(
      this,
    );
  }
}

abstract class _UserConfig implements UserConfig {
  const factory _UserConfig(
      {required final UserCredentials credentials,
      required final String group}) = _$_UserConfig;

  factory _UserConfig.fromJson(Map<String, dynamic> json) =
      _$_UserConfig.fromJson;

  @override

  /// User credentials.
  UserCredentials get credentials;
  @override

  /// User group.
  String get group;
  @override
  @JsonKey(ignore: true)
  _$$_UserConfigCopyWith<_$_UserConfig> get copyWith =>
      throw _privateConstructorUsedError;
}
