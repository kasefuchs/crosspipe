// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'http.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HttpServerConfig _$HttpServerConfigFromJson(Map<String, dynamic> json) {
  return _HttpServerConfig.fromJson(json);
}

/// @nodoc
mixin _$HttpServerConfig {
  /// The host IP address.
  String get host => throw _privateConstructorUsedError;

  /// The server port.
  int get port => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HttpServerConfigCopyWith<HttpServerConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HttpServerConfigCopyWith<$Res> {
  factory $HttpServerConfigCopyWith(
          HttpServerConfig value, $Res Function(HttpServerConfig) then) =
      _$HttpServerConfigCopyWithImpl<$Res, HttpServerConfig>;
  @useResult
  $Res call({String host, int port});
}

/// @nodoc
class _$HttpServerConfigCopyWithImpl<$Res, $Val extends HttpServerConfig>
    implements $HttpServerConfigCopyWith<$Res> {
  _$HttpServerConfigCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? host = null,
    Object? port = null,
  }) {
    return _then(_value.copyWith(
      host: null == host
          ? _value.host
          : host // ignore: cast_nullable_to_non_nullable
              as String,
      port: null == port
          ? _value.port
          : port // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HttpServerConfigCopyWith<$Res>
    implements $HttpServerConfigCopyWith<$Res> {
  factory _$$_HttpServerConfigCopyWith(
          _$_HttpServerConfig value, $Res Function(_$_HttpServerConfig) then) =
      __$$_HttpServerConfigCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String host, int port});
}

/// @nodoc
class __$$_HttpServerConfigCopyWithImpl<$Res>
    extends _$HttpServerConfigCopyWithImpl<$Res, _$_HttpServerConfig>
    implements _$$_HttpServerConfigCopyWith<$Res> {
  __$$_HttpServerConfigCopyWithImpl(
      _$_HttpServerConfig _value, $Res Function(_$_HttpServerConfig) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? host = null,
    Object? port = null,
  }) {
    return _then(_$_HttpServerConfig(
      host: null == host
          ? _value.host
          : host // ignore: cast_nullable_to_non_nullable
              as String,
      port: null == port
          ? _value.port
          : port // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HttpServerConfig implements _HttpServerConfig {
  const _$_HttpServerConfig({this.host = '127.0.0.1', this.port = 8080});

  factory _$_HttpServerConfig.fromJson(Map<String, dynamic> json) =>
      _$$_HttpServerConfigFromJson(json);

  /// The host IP address.
  @override
  @JsonKey()
  final String host;

  /// The server port.
  @override
  @JsonKey()
  final int port;

  @override
  String toString() {
    return 'HttpServerConfig(host: $host, port: $port)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HttpServerConfig &&
            (identical(other.host, host) || other.host == host) &&
            (identical(other.port, port) || other.port == port));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, host, port);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HttpServerConfigCopyWith<_$_HttpServerConfig> get copyWith =>
      __$$_HttpServerConfigCopyWithImpl<_$_HttpServerConfig>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HttpServerConfigToJson(
      this,
    );
  }
}

abstract class _HttpServerConfig implements HttpServerConfig {
  const factory _HttpServerConfig({final String host, final int port}) =
      _$_HttpServerConfig;

  factory _HttpServerConfig.fromJson(Map<String, dynamic> json) =
      _$_HttpServerConfig.fromJson;

  @override

  /// The host IP address.
  String get host;
  @override

  /// The server port.
  int get port;
  @override
  @JsonKey(ignore: true)
  _$$_HttpServerConfigCopyWith<_$_HttpServerConfig> get copyWith =>
      throw _privateConstructorUsedError;
}
