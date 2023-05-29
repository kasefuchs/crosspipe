// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'file.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FileLoggerTransportOptions _$FileLoggerTransportOptionsFromJson(
    Map<String, dynamic> json) {
  return _FileLoggerTransportOptions.fromJson(json);
}

/// @nodoc
mixin _$FileLoggerTransportOptions {
  /// The file to write logs to.
  @JsonKey(name: 'path')
  @FileConverter()
  File get file => throw _privateConstructorUsedError;

  /// The flush interval.
  @DurationConverter()
  Duration get flushInterval => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FileLoggerTransportOptionsCopyWith<FileLoggerTransportOptions>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FileLoggerTransportOptionsCopyWith<$Res> {
  factory $FileLoggerTransportOptionsCopyWith(FileLoggerTransportOptions value,
          $Res Function(FileLoggerTransportOptions) then) =
      _$FileLoggerTransportOptionsCopyWithImpl<$Res,
          FileLoggerTransportOptions>;
  @useResult
  $Res call(
      {@JsonKey(name: 'path') @FileConverter() File file,
      @DurationConverter() Duration flushInterval});
}

/// @nodoc
class _$FileLoggerTransportOptionsCopyWithImpl<$Res,
        $Val extends FileLoggerTransportOptions>
    implements $FileLoggerTransportOptionsCopyWith<$Res> {
  _$FileLoggerTransportOptionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? file = null,
    Object? flushInterval = null,
  }) {
    return _then(_value.copyWith(
      file: null == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as File,
      flushInterval: null == flushInterval
          ? _value.flushInterval
          : flushInterval // ignore: cast_nullable_to_non_nullable
              as Duration,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FileLoggerTransportOptionsCopyWith<$Res>
    implements $FileLoggerTransportOptionsCopyWith<$Res> {
  factory _$$_FileLoggerTransportOptionsCopyWith(
          _$_FileLoggerTransportOptions value,
          $Res Function(_$_FileLoggerTransportOptions) then) =
      __$$_FileLoggerTransportOptionsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'path') @FileConverter() File file,
      @DurationConverter() Duration flushInterval});
}

/// @nodoc
class __$$_FileLoggerTransportOptionsCopyWithImpl<$Res>
    extends _$FileLoggerTransportOptionsCopyWithImpl<$Res,
        _$_FileLoggerTransportOptions>
    implements _$$_FileLoggerTransportOptionsCopyWith<$Res> {
  __$$_FileLoggerTransportOptionsCopyWithImpl(
      _$_FileLoggerTransportOptions _value,
      $Res Function(_$_FileLoggerTransportOptions) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? file = null,
    Object? flushInterval = null,
  }) {
    return _then(_$_FileLoggerTransportOptions(
      file: null == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as File,
      flushInterval: null == flushInterval
          ? _value.flushInterval
          : flushInterval // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FileLoggerTransportOptions extends _FileLoggerTransportOptions {
  const _$_FileLoggerTransportOptions(
      {@JsonKey(name: 'path') @FileConverter() required this.file,
      @DurationConverter() required this.flushInterval})
      : super._();

  factory _$_FileLoggerTransportOptions.fromJson(Map<String, dynamic> json) =>
      _$$_FileLoggerTransportOptionsFromJson(json);

  /// The file to write logs to.
  @override
  @JsonKey(name: 'path')
  @FileConverter()
  final File file;

  /// The flush interval.
  @override
  @DurationConverter()
  final Duration flushInterval;

  @override
  String toString() {
    return 'FileLoggerTransportOptions(file: $file, flushInterval: $flushInterval)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FileLoggerTransportOptions &&
            (identical(other.file, file) || other.file == file) &&
            (identical(other.flushInterval, flushInterval) ||
                other.flushInterval == flushInterval));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, file, flushInterval);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FileLoggerTransportOptionsCopyWith<_$_FileLoggerTransportOptions>
      get copyWith => __$$_FileLoggerTransportOptionsCopyWithImpl<
          _$_FileLoggerTransportOptions>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FileLoggerTransportOptionsToJson(
      this,
    );
  }
}

abstract class _FileLoggerTransportOptions extends FileLoggerTransportOptions {
  const factory _FileLoggerTransportOptions(
          {@JsonKey(name: 'path') @FileConverter() required final File file,
          @DurationConverter() required final Duration flushInterval}) =
      _$_FileLoggerTransportOptions;
  const _FileLoggerTransportOptions._() : super._();

  factory _FileLoggerTransportOptions.fromJson(Map<String, dynamic> json) =
      _$_FileLoggerTransportOptions.fromJson;

  @override

  /// The file to write logs to.
  @JsonKey(name: 'path')
  @FileConverter()
  File get file;
  @override

  /// The flush interval.
  @DurationConverter()
  Duration get flushInterval;
  @override
  @JsonKey(ignore: true)
  _$$_FileLoggerTransportOptionsCopyWith<_$_FileLoggerTransportOptions>
      get copyWith => throw _privateConstructorUsedError;
}
