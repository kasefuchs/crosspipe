// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'authentication.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuthenticationConfig _$AuthenticationConfigFromJson(Map<String, dynamic> json) {
  return _AuthenticationConfig.fromJson(json);
}

/// @nodoc
mixin _$AuthenticationConfig {
  /// Identify timeout duration.
  @DurationConverter()
  Duration get identifyTimeout => throw _privateConstructorUsedError;

  /// Heartbeat timeout duration.
  @DurationConverter()
  Duration get heartbeatTimeout => throw _privateConstructorUsedError;

  /// Length of session ID.
  int get sessionIdLength => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthenticationConfigCopyWith<AuthenticationConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationConfigCopyWith<$Res> {
  factory $AuthenticationConfigCopyWith(AuthenticationConfig value,
          $Res Function(AuthenticationConfig) then) =
      _$AuthenticationConfigCopyWithImpl<$Res, AuthenticationConfig>;
  @useResult
  $Res call(
      {@DurationConverter() Duration identifyTimeout,
      @DurationConverter() Duration heartbeatTimeout,
      int sessionIdLength});
}

/// @nodoc
class _$AuthenticationConfigCopyWithImpl<$Res,
        $Val extends AuthenticationConfig>
    implements $AuthenticationConfigCopyWith<$Res> {
  _$AuthenticationConfigCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? identifyTimeout = null,
    Object? heartbeatTimeout = null,
    Object? sessionIdLength = null,
  }) {
    return _then(_value.copyWith(
      identifyTimeout: null == identifyTimeout
          ? _value.identifyTimeout
          : identifyTimeout // ignore: cast_nullable_to_non_nullable
              as Duration,
      heartbeatTimeout: null == heartbeatTimeout
          ? _value.heartbeatTimeout
          : heartbeatTimeout // ignore: cast_nullable_to_non_nullable
              as Duration,
      sessionIdLength: null == sessionIdLength
          ? _value.sessionIdLength
          : sessionIdLength // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AuthenticationConfigCopyWith<$Res>
    implements $AuthenticationConfigCopyWith<$Res> {
  factory _$$_AuthenticationConfigCopyWith(_$_AuthenticationConfig value,
          $Res Function(_$_AuthenticationConfig) then) =
      __$$_AuthenticationConfigCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@DurationConverter() Duration identifyTimeout,
      @DurationConverter() Duration heartbeatTimeout,
      int sessionIdLength});
}

/// @nodoc
class __$$_AuthenticationConfigCopyWithImpl<$Res>
    extends _$AuthenticationConfigCopyWithImpl<$Res, _$_AuthenticationConfig>
    implements _$$_AuthenticationConfigCopyWith<$Res> {
  __$$_AuthenticationConfigCopyWithImpl(_$_AuthenticationConfig _value,
      $Res Function(_$_AuthenticationConfig) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? identifyTimeout = null,
    Object? heartbeatTimeout = null,
    Object? sessionIdLength = null,
  }) {
    return _then(_$_AuthenticationConfig(
      identifyTimeout: null == identifyTimeout
          ? _value.identifyTimeout
          : identifyTimeout // ignore: cast_nullable_to_non_nullable
              as Duration,
      heartbeatTimeout: null == heartbeatTimeout
          ? _value.heartbeatTimeout
          : heartbeatTimeout // ignore: cast_nullable_to_non_nullable
              as Duration,
      sessionIdLength: null == sessionIdLength
          ? _value.sessionIdLength
          : sessionIdLength // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AuthenticationConfig implements _AuthenticationConfig {
  const _$_AuthenticationConfig(
      {@DurationConverter() required this.identifyTimeout,
      @DurationConverter() required this.heartbeatTimeout,
      this.sessionIdLength = 16});

  factory _$_AuthenticationConfig.fromJson(Map<String, dynamic> json) =>
      _$$_AuthenticationConfigFromJson(json);

  /// Identify timeout duration.
  @override
  @DurationConverter()
  final Duration identifyTimeout;

  /// Heartbeat timeout duration.
  @override
  @DurationConverter()
  final Duration heartbeatTimeout;

  /// Length of session ID.
  @override
  @JsonKey()
  final int sessionIdLength;

  @override
  String toString() {
    return 'AuthenticationConfig(identifyTimeout: $identifyTimeout, heartbeatTimeout: $heartbeatTimeout, sessionIdLength: $sessionIdLength)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthenticationConfig &&
            (identical(other.identifyTimeout, identifyTimeout) ||
                other.identifyTimeout == identifyTimeout) &&
            (identical(other.heartbeatTimeout, heartbeatTimeout) ||
                other.heartbeatTimeout == heartbeatTimeout) &&
            (identical(other.sessionIdLength, sessionIdLength) ||
                other.sessionIdLength == sessionIdLength));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, identifyTimeout, heartbeatTimeout, sessionIdLength);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthenticationConfigCopyWith<_$_AuthenticationConfig> get copyWith =>
      __$$_AuthenticationConfigCopyWithImpl<_$_AuthenticationConfig>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthenticationConfigToJson(
      this,
    );
  }
}

abstract class _AuthenticationConfig implements AuthenticationConfig {
  const factory _AuthenticationConfig(
      {@DurationConverter() required final Duration identifyTimeout,
      @DurationConverter() required final Duration heartbeatTimeout,
      final int sessionIdLength}) = _$_AuthenticationConfig;

  factory _AuthenticationConfig.fromJson(Map<String, dynamic> json) =
      _$_AuthenticationConfig.fromJson;

  @override

  /// Identify timeout duration.
  @DurationConverter()
  Duration get identifyTimeout;
  @override

  /// Heartbeat timeout duration.
  @DurationConverter()
  Duration get heartbeatTimeout;
  @override

  /// Length of session ID.
  int get sessionIdLength;
  @override
  @JsonKey(ignore: true)
  _$$_AuthenticationConfigCopyWith<_$_AuthenticationConfig> get copyWith =>
      throw _privateConstructorUsedError;
}
