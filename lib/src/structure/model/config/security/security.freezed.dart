// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'security.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SecurityConfig _$SecurityConfigFromJson(Map<String, dynamic> json) {
  return _SecurityConfig.fromJson(json);
}

/// @nodoc
mixin _$SecurityConfig {
  /// Authentication configuration.
  AuthenticationConfig get authentication => throw _privateConstructorUsedError;

  /// List of group configurations.
  List<GroupConfig> get groups => throw _privateConstructorUsedError;

  /// List of user configurations.
  List<UserConfig> get users => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SecurityConfigCopyWith<SecurityConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SecurityConfigCopyWith<$Res> {
  factory $SecurityConfigCopyWith(
          SecurityConfig value, $Res Function(SecurityConfig) then) =
      _$SecurityConfigCopyWithImpl<$Res, SecurityConfig>;
  @useResult
  $Res call(
      {AuthenticationConfig authentication,
      List<GroupConfig> groups,
      List<UserConfig> users});

  $AuthenticationConfigCopyWith<$Res> get authentication;
}

/// @nodoc
class _$SecurityConfigCopyWithImpl<$Res, $Val extends SecurityConfig>
    implements $SecurityConfigCopyWith<$Res> {
  _$SecurityConfigCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authentication = null,
    Object? groups = null,
    Object? users = null,
  }) {
    return _then(_value.copyWith(
      authentication: null == authentication
          ? _value.authentication
          : authentication // ignore: cast_nullable_to_non_nullable
              as AuthenticationConfig,
      groups: null == groups
          ? _value.groups
          : groups // ignore: cast_nullable_to_non_nullable
              as List<GroupConfig>,
      users: null == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<UserConfig>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AuthenticationConfigCopyWith<$Res> get authentication {
    return $AuthenticationConfigCopyWith<$Res>(_value.authentication, (value) {
      return _then(_value.copyWith(authentication: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SecurityConfigCopyWith<$Res>
    implements $SecurityConfigCopyWith<$Res> {
  factory _$$_SecurityConfigCopyWith(
          _$_SecurityConfig value, $Res Function(_$_SecurityConfig) then) =
      __$$_SecurityConfigCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AuthenticationConfig authentication,
      List<GroupConfig> groups,
      List<UserConfig> users});

  @override
  $AuthenticationConfigCopyWith<$Res> get authentication;
}

/// @nodoc
class __$$_SecurityConfigCopyWithImpl<$Res>
    extends _$SecurityConfigCopyWithImpl<$Res, _$_SecurityConfig>
    implements _$$_SecurityConfigCopyWith<$Res> {
  __$$_SecurityConfigCopyWithImpl(
      _$_SecurityConfig _value, $Res Function(_$_SecurityConfig) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authentication = null,
    Object? groups = null,
    Object? users = null,
  }) {
    return _then(_$_SecurityConfig(
      authentication: null == authentication
          ? _value.authentication
          : authentication // ignore: cast_nullable_to_non_nullable
              as AuthenticationConfig,
      groups: null == groups
          ? _value._groups
          : groups // ignore: cast_nullable_to_non_nullable
              as List<GroupConfig>,
      users: null == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<UserConfig>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SecurityConfig implements _SecurityConfig {
  const _$_SecurityConfig(
      {required this.authentication,
      required final List<GroupConfig> groups,
      required final List<UserConfig> users})
      : _groups = groups,
        _users = users;

  factory _$_SecurityConfig.fromJson(Map<String, dynamic> json) =>
      _$$_SecurityConfigFromJson(json);

  /// Authentication configuration.
  @override
  final AuthenticationConfig authentication;

  /// List of group configurations.
  final List<GroupConfig> _groups;

  /// List of group configurations.
  @override
  List<GroupConfig> get groups {
    if (_groups is EqualUnmodifiableListView) return _groups;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_groups);
  }

  /// List of user configurations.
  final List<UserConfig> _users;

  /// List of user configurations.
  @override
  List<UserConfig> get users {
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  @override
  String toString() {
    return 'SecurityConfig(authentication: $authentication, groups: $groups, users: $users)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SecurityConfig &&
            (identical(other.authentication, authentication) ||
                other.authentication == authentication) &&
            const DeepCollectionEquality().equals(other._groups, _groups) &&
            const DeepCollectionEquality().equals(other._users, _users));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      authentication,
      const DeepCollectionEquality().hash(_groups),
      const DeepCollectionEquality().hash(_users));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SecurityConfigCopyWith<_$_SecurityConfig> get copyWith =>
      __$$_SecurityConfigCopyWithImpl<_$_SecurityConfig>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SecurityConfigToJson(
      this,
    );
  }
}

abstract class _SecurityConfig implements SecurityConfig {
  const factory _SecurityConfig(
      {required final AuthenticationConfig authentication,
      required final List<GroupConfig> groups,
      required final List<UserConfig> users}) = _$_SecurityConfig;

  factory _SecurityConfig.fromJson(Map<String, dynamic> json) =
      _$_SecurityConfig.fromJson;

  @override

  /// Authentication configuration.
  AuthenticationConfig get authentication;
  @override

  /// List of group configurations.
  List<GroupConfig> get groups;
  @override

  /// List of user configurations.
  List<UserConfig> get users;
  @override
  @JsonKey(ignore: true)
  _$$_SecurityConfigCopyWith<_$_SecurityConfig> get copyWith =>
      throw _privateConstructorUsedError;
}
