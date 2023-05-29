// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'credentials.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserCredentials _$UserCredentialsFromJson(Map<String, dynamic> json) {
  return _UserCredentials.fromJson(json);
}

/// @nodoc
mixin _$UserCredentials {
  /// The user's login.
  String get login => throw _privateConstructorUsedError;

  /// The hashed password.
  String? get passwordHash => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCredentialsCopyWith<UserCredentials> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCredentialsCopyWith<$Res> {
  factory $UserCredentialsCopyWith(
          UserCredentials value, $Res Function(UserCredentials) then) =
      _$UserCredentialsCopyWithImpl<$Res, UserCredentials>;
  @useResult
  $Res call({String login, String? passwordHash});
}

/// @nodoc
class _$UserCredentialsCopyWithImpl<$Res, $Val extends UserCredentials>
    implements $UserCredentialsCopyWith<$Res> {
  _$UserCredentialsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? login = null,
    Object? passwordHash = freezed,
  }) {
    return _then(_value.copyWith(
      login: null == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
      passwordHash: freezed == passwordHash
          ? _value.passwordHash
          : passwordHash // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserCredentialsCopyWith<$Res>
    implements $UserCredentialsCopyWith<$Res> {
  factory _$$_UserCredentialsCopyWith(
          _$_UserCredentials value, $Res Function(_$_UserCredentials) then) =
      __$$_UserCredentialsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String login, String? passwordHash});
}

/// @nodoc
class __$$_UserCredentialsCopyWithImpl<$Res>
    extends _$UserCredentialsCopyWithImpl<$Res, _$_UserCredentials>
    implements _$$_UserCredentialsCopyWith<$Res> {
  __$$_UserCredentialsCopyWithImpl(
      _$_UserCredentials _value, $Res Function(_$_UserCredentials) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? login = null,
    Object? passwordHash = freezed,
  }) {
    return _then(_$_UserCredentials(
      login: null == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
      passwordHash: freezed == passwordHash
          ? _value.passwordHash
          : passwordHash // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserCredentials implements _UserCredentials {
  const _$_UserCredentials({required this.login, this.passwordHash});

  factory _$_UserCredentials.fromJson(Map<String, dynamic> json) =>
      _$$_UserCredentialsFromJson(json);

  /// The user's login.
  @override
  final String login;

  /// The hashed password.
  @override
  final String? passwordHash;

  @override
  String toString() {
    return 'UserCredentials(login: $login, passwordHash: $passwordHash)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserCredentials &&
            (identical(other.login, login) || other.login == login) &&
            (identical(other.passwordHash, passwordHash) ||
                other.passwordHash == passwordHash));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, login, passwordHash);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserCredentialsCopyWith<_$_UserCredentials> get copyWith =>
      __$$_UserCredentialsCopyWithImpl<_$_UserCredentials>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserCredentialsToJson(
      this,
    );
  }
}

abstract class _UserCredentials implements UserCredentials {
  const factory _UserCredentials(
      {required final String login,
      final String? passwordHash}) = _$_UserCredentials;

  factory _UserCredentials.fromJson(Map<String, dynamic> json) =
      _$_UserCredentials.fromJson;

  @override

  /// The user's login.
  String get login;
  @override

  /// The hashed password.
  String? get passwordHash;
  @override
  @JsonKey(ignore: true)
  _$$_UserCredentialsCopyWith<_$_UserCredentials> get copyWith =>
      throw _privateConstructorUsedError;
}
