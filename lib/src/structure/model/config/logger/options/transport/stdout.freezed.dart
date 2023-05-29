// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stdout.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StdoutLoggerTransportOptions _$StdoutLoggerTransportOptionsFromJson(
    Map<String, dynamic> json) {
  return _StdoutLoggerTransportOptions.fromJson(json);
}

/// @nodoc
mixin _$StdoutLoggerTransportOptions {
  /// The color map.
  ColorMap get colors => throw _privateConstructorUsedError;

  /// Is message styled?
  bool get styled => throw _privateConstructorUsedError;

  /// Is message pretty styled?
  bool get pretty => throw _privateConstructorUsedError;

  /// Time format.
  String get timeFormat => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StdoutLoggerTransportOptionsCopyWith<StdoutLoggerTransportOptions>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StdoutLoggerTransportOptionsCopyWith<$Res> {
  factory $StdoutLoggerTransportOptionsCopyWith(
          StdoutLoggerTransportOptions value,
          $Res Function(StdoutLoggerTransportOptions) then) =
      _$StdoutLoggerTransportOptionsCopyWithImpl<$Res,
          StdoutLoggerTransportOptions>;
  @useResult
  $Res call({ColorMap colors, bool styled, bool pretty, String timeFormat});
}

/// @nodoc
class _$StdoutLoggerTransportOptionsCopyWithImpl<$Res,
        $Val extends StdoutLoggerTransportOptions>
    implements $StdoutLoggerTransportOptionsCopyWith<$Res> {
  _$StdoutLoggerTransportOptionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? colors = null,
    Object? styled = null,
    Object? pretty = null,
    Object? timeFormat = null,
  }) {
    return _then(_value.copyWith(
      colors: null == colors
          ? _value.colors
          : colors // ignore: cast_nullable_to_non_nullable
              as ColorMap,
      styled: null == styled
          ? _value.styled
          : styled // ignore: cast_nullable_to_non_nullable
              as bool,
      pretty: null == pretty
          ? _value.pretty
          : pretty // ignore: cast_nullable_to_non_nullable
              as bool,
      timeFormat: null == timeFormat
          ? _value.timeFormat
          : timeFormat // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StdoutLoggerTransportOptionsCopyWith<$Res>
    implements $StdoutLoggerTransportOptionsCopyWith<$Res> {
  factory _$$_StdoutLoggerTransportOptionsCopyWith(
          _$_StdoutLoggerTransportOptions value,
          $Res Function(_$_StdoutLoggerTransportOptions) then) =
      __$$_StdoutLoggerTransportOptionsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ColorMap colors, bool styled, bool pretty, String timeFormat});
}

/// @nodoc
class __$$_StdoutLoggerTransportOptionsCopyWithImpl<$Res>
    extends _$StdoutLoggerTransportOptionsCopyWithImpl<$Res,
        _$_StdoutLoggerTransportOptions>
    implements _$$_StdoutLoggerTransportOptionsCopyWith<$Res> {
  __$$_StdoutLoggerTransportOptionsCopyWithImpl(
      _$_StdoutLoggerTransportOptions _value,
      $Res Function(_$_StdoutLoggerTransportOptions) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? colors = null,
    Object? styled = null,
    Object? pretty = null,
    Object? timeFormat = null,
  }) {
    return _then(_$_StdoutLoggerTransportOptions(
      colors: null == colors
          ? _value.colors
          : colors // ignore: cast_nullable_to_non_nullable
              as ColorMap,
      styled: null == styled
          ? _value.styled
          : styled // ignore: cast_nullable_to_non_nullable
              as bool,
      pretty: null == pretty
          ? _value.pretty
          : pretty // ignore: cast_nullable_to_non_nullable
              as bool,
      timeFormat: null == timeFormat
          ? _value.timeFormat
          : timeFormat // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StdoutLoggerTransportOptions extends _StdoutLoggerTransportOptions {
  const _$_StdoutLoggerTransportOptions(
      {required this.colors,
      this.styled = true,
      this.pretty = true,
      this.timeFormat = 'HH:mm:ss.SSS'})
      : super._();

  factory _$_StdoutLoggerTransportOptions.fromJson(Map<String, dynamic> json) =>
      _$$_StdoutLoggerTransportOptionsFromJson(json);

  /// The color map.
  @override
  final ColorMap colors;

  /// Is message styled?
  @override
  @JsonKey()
  final bool styled;

  /// Is message pretty styled?
  @override
  @JsonKey()
  final bool pretty;

  /// Time format.
  @override
  @JsonKey()
  final String timeFormat;

  @override
  String toString() {
    return 'StdoutLoggerTransportOptions(colors: $colors, styled: $styled, pretty: $pretty, timeFormat: $timeFormat)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StdoutLoggerTransportOptions &&
            (identical(other.colors, colors) || other.colors == colors) &&
            (identical(other.styled, styled) || other.styled == styled) &&
            (identical(other.pretty, pretty) || other.pretty == pretty) &&
            (identical(other.timeFormat, timeFormat) ||
                other.timeFormat == timeFormat));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, colors, styled, pretty, timeFormat);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StdoutLoggerTransportOptionsCopyWith<_$_StdoutLoggerTransportOptions>
      get copyWith => __$$_StdoutLoggerTransportOptionsCopyWithImpl<
          _$_StdoutLoggerTransportOptions>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StdoutLoggerTransportOptionsToJson(
      this,
    );
  }
}

abstract class _StdoutLoggerTransportOptions
    extends StdoutLoggerTransportOptions {
  const factory _StdoutLoggerTransportOptions(
      {required final ColorMap colors,
      final bool styled,
      final bool pretty,
      final String timeFormat}) = _$_StdoutLoggerTransportOptions;
  const _StdoutLoggerTransportOptions._() : super._();

  factory _StdoutLoggerTransportOptions.fromJson(Map<String, dynamic> json) =
      _$_StdoutLoggerTransportOptions.fromJson;

  @override

  /// The color map.
  ColorMap get colors;
  @override

  /// Is message styled?
  bool get styled;
  @override

  /// Is message pretty styled?
  bool get pretty;
  @override

  /// Time format.
  String get timeFormat;
  @override
  @JsonKey(ignore: true)
  _$$_StdoutLoggerTransportOptionsCopyWith<_$_StdoutLoggerTransportOptions>
      get copyWith => throw _privateConstructorUsedError;
}
