// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'server.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ServerConfig _$ServerConfigFromJson(Map<String, dynamic> json) {
  return _ServerConfig.fromJson(json);
}

/// @nodoc
mixin _$ServerConfig {
  /// HTTP server configuration.
  HttpServerConfig get http => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServerConfigCopyWith<ServerConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServerConfigCopyWith<$Res> {
  factory $ServerConfigCopyWith(
          ServerConfig value, $Res Function(ServerConfig) then) =
      _$ServerConfigCopyWithImpl<$Res, ServerConfig>;
  @useResult
  $Res call({HttpServerConfig http});

  $HttpServerConfigCopyWith<$Res> get http;
}

/// @nodoc
class _$ServerConfigCopyWithImpl<$Res, $Val extends ServerConfig>
    implements $ServerConfigCopyWith<$Res> {
  _$ServerConfigCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? http = null,
  }) {
    return _then(_value.copyWith(
      http: null == http
          ? _value.http
          : http // ignore: cast_nullable_to_non_nullable
              as HttpServerConfig,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $HttpServerConfigCopyWith<$Res> get http {
    return $HttpServerConfigCopyWith<$Res>(_value.http, (value) {
      return _then(_value.copyWith(http: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ServerConfigCopyWith<$Res>
    implements $ServerConfigCopyWith<$Res> {
  factory _$$_ServerConfigCopyWith(
          _$_ServerConfig value, $Res Function(_$_ServerConfig) then) =
      __$$_ServerConfigCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({HttpServerConfig http});

  @override
  $HttpServerConfigCopyWith<$Res> get http;
}

/// @nodoc
class __$$_ServerConfigCopyWithImpl<$Res>
    extends _$ServerConfigCopyWithImpl<$Res, _$_ServerConfig>
    implements _$$_ServerConfigCopyWith<$Res> {
  __$$_ServerConfigCopyWithImpl(
      _$_ServerConfig _value, $Res Function(_$_ServerConfig) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? http = null,
  }) {
    return _then(_$_ServerConfig(
      http: null == http
          ? _value.http
          : http // ignore: cast_nullable_to_non_nullable
              as HttpServerConfig,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ServerConfig implements _ServerConfig {
  const _$_ServerConfig({required this.http});

  factory _$_ServerConfig.fromJson(Map<String, dynamic> json) =>
      _$$_ServerConfigFromJson(json);

  /// HTTP server configuration.
  @override
  final HttpServerConfig http;

  @override
  String toString() {
    return 'ServerConfig(http: $http)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ServerConfig &&
            (identical(other.http, http) || other.http == http));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, http);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ServerConfigCopyWith<_$_ServerConfig> get copyWith =>
      __$$_ServerConfigCopyWithImpl<_$_ServerConfig>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ServerConfigToJson(
      this,
    );
  }
}

abstract class _ServerConfig implements ServerConfig {
  const factory _ServerConfig({required final HttpServerConfig http}) =
      _$_ServerConfig;

  factory _ServerConfig.fromJson(Map<String, dynamic> json) =
      _$_ServerConfig.fromJson;

  @override

  /// HTTP server configuration.
  HttpServerConfig get http;
  @override
  @JsonKey(ignore: true)
  _$$_ServerConfigCopyWith<_$_ServerConfig> get copyWith =>
      throw _privateConstructorUsedError;
}
