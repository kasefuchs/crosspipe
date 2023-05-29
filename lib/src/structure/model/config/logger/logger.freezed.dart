// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'logger.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoggerConfig {
  /// Log level.
  LogLevel get level => throw _privateConstructorUsedError;

  /// Logger transport type.
  LoggerTransportType get type => throw _privateConstructorUsedError;

  /// Logger transport options.
  AbstractLoggerTransportOptions get options =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoggerConfigCopyWith<LoggerConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoggerConfigCopyWith<$Res> {
  factory $LoggerConfigCopyWith(
          LoggerConfig value, $Res Function(LoggerConfig) then) =
      _$LoggerConfigCopyWithImpl<$Res, LoggerConfig>;
  @useResult
  $Res call(
      {LogLevel level,
      LoggerTransportType type,
      AbstractLoggerTransportOptions options});
}

/// @nodoc
class _$LoggerConfigCopyWithImpl<$Res, $Val extends LoggerConfig>
    implements $LoggerConfigCopyWith<$Res> {
  _$LoggerConfigCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? level = null,
    Object? type = null,
    Object? options = null,
  }) {
    return _then(_value.copyWith(
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as LogLevel,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as LoggerTransportType,
      options: null == options
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as AbstractLoggerTransportOptions,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LoggerConfigCopyWith<$Res>
    implements $LoggerConfigCopyWith<$Res> {
  factory _$$_LoggerConfigCopyWith(
          _$_LoggerConfig value, $Res Function(_$_LoggerConfig) then) =
      __$$_LoggerConfigCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {LogLevel level,
      LoggerTransportType type,
      AbstractLoggerTransportOptions options});
}

/// @nodoc
class __$$_LoggerConfigCopyWithImpl<$Res>
    extends _$LoggerConfigCopyWithImpl<$Res, _$_LoggerConfig>
    implements _$$_LoggerConfigCopyWith<$Res> {
  __$$_LoggerConfigCopyWithImpl(
      _$_LoggerConfig _value, $Res Function(_$_LoggerConfig) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? level = null,
    Object? type = null,
    Object? options = null,
  }) {
    return _then(_$_LoggerConfig(
      null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as LogLevel,
      null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as LoggerTransportType,
      null == options
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as AbstractLoggerTransportOptions,
    ));
  }
}

/// @nodoc
@JsonSerializable(createFactory: false)
class _$_LoggerConfig implements _LoggerConfig {
  const _$_LoggerConfig(this.level, this.type, this.options);

  /// Log level.
  @override
  final LogLevel level;

  /// Logger transport type.
  @override
  final LoggerTransportType type;

  /// Logger transport options.
  @override
  final AbstractLoggerTransportOptions options;

  @override
  String toString() {
    return 'LoggerConfig(level: $level, type: $type, options: $options)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoggerConfig &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.options, options) || other.options == options));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, level, type, options);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoggerConfigCopyWith<_$_LoggerConfig> get copyWith =>
      __$$_LoggerConfigCopyWithImpl<_$_LoggerConfig>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LoggerConfigToJson(
      this,
    );
  }
}

abstract class _LoggerConfig implements LoggerConfig {
  const factory _LoggerConfig(
      final LogLevel level,
      final LoggerTransportType type,
      final AbstractLoggerTransportOptions options) = _$_LoggerConfig;

  @override

  /// Log level.
  LogLevel get level;
  @override

  /// Logger transport type.
  LoggerTransportType get type;
  @override

  /// Logger transport options.
  AbstractLoggerTransportOptions get options;
  @override
  @JsonKey(ignore: true)
  _$$_LoggerConfigCopyWith<_$_LoggerConfig> get copyWith =>
      throw _privateConstructorUsedError;
}
