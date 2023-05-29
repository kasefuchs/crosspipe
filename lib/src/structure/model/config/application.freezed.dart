// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'application.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ApplicationConfig _$ApplicationConfigFromJson(Map<String, dynamic> json) {
  return _ApplicationConfig.fromJson(json);
}

/// @nodoc
mixin _$ApplicationConfig {
  /// Logger configuration.
  LoggerConfig get logger => throw _privateConstructorUsedError;

  /// Security configuration.
  SecurityConfig get security => throw _privateConstructorUsedError;

  /// Server configuration.
  ServerConfig get server => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApplicationConfigCopyWith<ApplicationConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApplicationConfigCopyWith<$Res> {
  factory $ApplicationConfigCopyWith(
          ApplicationConfig value, $Res Function(ApplicationConfig) then) =
      _$ApplicationConfigCopyWithImpl<$Res, ApplicationConfig>;
  @useResult
  $Res call(
      {LoggerConfig logger, SecurityConfig security, ServerConfig server});

  $LoggerConfigCopyWith<$Res> get logger;
  $SecurityConfigCopyWith<$Res> get security;
  $ServerConfigCopyWith<$Res> get server;
}

/// @nodoc
class _$ApplicationConfigCopyWithImpl<$Res, $Val extends ApplicationConfig>
    implements $ApplicationConfigCopyWith<$Res> {
  _$ApplicationConfigCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? logger = null,
    Object? security = null,
    Object? server = null,
  }) {
    return _then(_value.copyWith(
      logger: null == logger
          ? _value.logger
          : logger // ignore: cast_nullable_to_non_nullable
              as LoggerConfig,
      security: null == security
          ? _value.security
          : security // ignore: cast_nullable_to_non_nullable
              as SecurityConfig,
      server: null == server
          ? _value.server
          : server // ignore: cast_nullable_to_non_nullable
              as ServerConfig,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LoggerConfigCopyWith<$Res> get logger {
    return $LoggerConfigCopyWith<$Res>(_value.logger, (value) {
      return _then(_value.copyWith(logger: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SecurityConfigCopyWith<$Res> get security {
    return $SecurityConfigCopyWith<$Res>(_value.security, (value) {
      return _then(_value.copyWith(security: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ServerConfigCopyWith<$Res> get server {
    return $ServerConfigCopyWith<$Res>(_value.server, (value) {
      return _then(_value.copyWith(server: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ApplicationConfigCopyWith<$Res>
    implements $ApplicationConfigCopyWith<$Res> {
  factory _$$_ApplicationConfigCopyWith(_$_ApplicationConfig value,
          $Res Function(_$_ApplicationConfig) then) =
      __$$_ApplicationConfigCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {LoggerConfig logger, SecurityConfig security, ServerConfig server});

  @override
  $LoggerConfigCopyWith<$Res> get logger;
  @override
  $SecurityConfigCopyWith<$Res> get security;
  @override
  $ServerConfigCopyWith<$Res> get server;
}

/// @nodoc
class __$$_ApplicationConfigCopyWithImpl<$Res>
    extends _$ApplicationConfigCopyWithImpl<$Res, _$_ApplicationConfig>
    implements _$$_ApplicationConfigCopyWith<$Res> {
  __$$_ApplicationConfigCopyWithImpl(
      _$_ApplicationConfig _value, $Res Function(_$_ApplicationConfig) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? logger = null,
    Object? security = null,
    Object? server = null,
  }) {
    return _then(_$_ApplicationConfig(
      logger: null == logger
          ? _value.logger
          : logger // ignore: cast_nullable_to_non_nullable
              as LoggerConfig,
      security: null == security
          ? _value.security
          : security // ignore: cast_nullable_to_non_nullable
              as SecurityConfig,
      server: null == server
          ? _value.server
          : server // ignore: cast_nullable_to_non_nullable
              as ServerConfig,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ApplicationConfig implements _ApplicationConfig {
  const _$_ApplicationConfig(
      {required this.logger, required this.security, required this.server});

  factory _$_ApplicationConfig.fromJson(Map<String, dynamic> json) =>
      _$$_ApplicationConfigFromJson(json);

  /// Logger configuration.
  @override
  final LoggerConfig logger;

  /// Security configuration.
  @override
  final SecurityConfig security;

  /// Server configuration.
  @override
  final ServerConfig server;

  @override
  String toString() {
    return 'ApplicationConfig(logger: $logger, security: $security, server: $server)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ApplicationConfig &&
            (identical(other.logger, logger) || other.logger == logger) &&
            (identical(other.security, security) ||
                other.security == security) &&
            (identical(other.server, server) || other.server == server));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, logger, security, server);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ApplicationConfigCopyWith<_$_ApplicationConfig> get copyWith =>
      __$$_ApplicationConfigCopyWithImpl<_$_ApplicationConfig>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ApplicationConfigToJson(
      this,
    );
  }
}

abstract class _ApplicationConfig implements ApplicationConfig {
  const factory _ApplicationConfig(
      {required final LoggerConfig logger,
      required final SecurityConfig security,
      required final ServerConfig server}) = _$_ApplicationConfig;

  factory _ApplicationConfig.fromJson(Map<String, dynamic> json) =
      _$_ApplicationConfig.fromJson;

  @override

  /// Logger configuration.
  LoggerConfig get logger;
  @override

  /// Security configuration.
  SecurityConfig get security;
  @override

  /// Server configuration.
  ServerConfig get server;
  @override
  @JsonKey(ignore: true)
  _$$_ApplicationConfigCopyWith<_$_ApplicationConfig> get copyWith =>
      throw _privateConstructorUsedError;
}
