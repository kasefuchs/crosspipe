// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'record.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LogRecord _$LogRecordFromJson(Map<String, dynamic> json) {
  return _LogRecord.fromJson(json);
}

/// @nodoc
mixin _$LogRecord {
  /// Log level.
  LogLevel get level => throw _privateConstructorUsedError;

  /// Pid of application.
  int get pid => throw _privateConstructorUsedError;

  /// Record content.
  @JsonKey(name: 'msg')
  String get message => throw _privateConstructorUsedError;

  /// Record time.
  @DatetimeUnixConverter()
  DateTime get time => throw _privateConstructorUsedError;

  /// Record tags.
  List<String> get tags => throw _privateConstructorUsedError;

  /// Attached object.
  Object? get object => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LogRecordCopyWith<LogRecord> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LogRecordCopyWith<$Res> {
  factory $LogRecordCopyWith(LogRecord value, $Res Function(LogRecord) then) =
      _$LogRecordCopyWithImpl<$Res, LogRecord>;
  @useResult
  $Res call(
      {LogLevel level,
      int pid,
      @JsonKey(name: 'msg') String message,
      @DatetimeUnixConverter() DateTime time,
      List<String> tags,
      Object? object});
}

/// @nodoc
class _$LogRecordCopyWithImpl<$Res, $Val extends LogRecord>
    implements $LogRecordCopyWith<$Res> {
  _$LogRecordCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? level = null,
    Object? pid = null,
    Object? message = null,
    Object? time = null,
    Object? tags = null,
    Object? object = freezed,
  }) {
    return _then(_value.copyWith(
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as LogLevel,
      pid: null == pid
          ? _value.pid
          : pid // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      object: freezed == object ? _value.object : object,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LogRecordCopyWith<$Res> implements $LogRecordCopyWith<$Res> {
  factory _$$_LogRecordCopyWith(
          _$_LogRecord value, $Res Function(_$_LogRecord) then) =
      __$$_LogRecordCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {LogLevel level,
      int pid,
      @JsonKey(name: 'msg') String message,
      @DatetimeUnixConverter() DateTime time,
      List<String> tags,
      Object? object});
}

/// @nodoc
class __$$_LogRecordCopyWithImpl<$Res>
    extends _$LogRecordCopyWithImpl<$Res, _$_LogRecord>
    implements _$$_LogRecordCopyWith<$Res> {
  __$$_LogRecordCopyWithImpl(
      _$_LogRecord _value, $Res Function(_$_LogRecord) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? level = null,
    Object? pid = null,
    Object? message = null,
    Object? time = null,
    Object? tags = null,
    Object? object = freezed,
  }) {
    return _then(_$_LogRecord(
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as LogLevel,
      pid: null == pid
          ? _value.pid
          : pid // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      object: freezed == object ? _value.object : object,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LogRecord implements _LogRecord {
  const _$_LogRecord(
      {required this.level,
      required this.pid,
      @JsonKey(name: 'msg') required this.message,
      @DatetimeUnixConverter() required this.time,
      final List<String> tags = const [],
      this.object})
      : _tags = tags;

  factory _$_LogRecord.fromJson(Map<String, dynamic> json) =>
      _$$_LogRecordFromJson(json);

  /// Log level.
  @override
  final LogLevel level;

  /// Pid of application.
  @override
  final int pid;

  /// Record content.
  @override
  @JsonKey(name: 'msg')
  final String message;

  /// Record time.
  @override
  @DatetimeUnixConverter()
  final DateTime time;

  /// Record tags.
  final List<String> _tags;

  /// Record tags.
  @override
  @JsonKey()
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  /// Attached object.
  @override
  final Object? object;

  @override
  String toString() {
    return 'LogRecord(level: $level, pid: $pid, message: $message, time: $time, tags: $tags, object: $object)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LogRecord &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.pid, pid) || other.pid == pid) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.time, time) || other.time == time) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            const DeepCollectionEquality().equals(other.object, object));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      level,
      pid,
      message,
      time,
      const DeepCollectionEquality().hash(_tags),
      const DeepCollectionEquality().hash(object));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LogRecordCopyWith<_$_LogRecord> get copyWith =>
      __$$_LogRecordCopyWithImpl<_$_LogRecord>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LogRecordToJson(
      this,
    );
  }
}

abstract class _LogRecord implements LogRecord {
  const factory _LogRecord(
      {required final LogLevel level,
      required final int pid,
      @JsonKey(name: 'msg') required final String message,
      @DatetimeUnixConverter() required final DateTime time,
      final List<String> tags,
      final Object? object}) = _$_LogRecord;

  factory _LogRecord.fromJson(Map<String, dynamic> json) =
      _$_LogRecord.fromJson;

  @override

  /// Log level.
  LogLevel get level;
  @override

  /// Pid of application.
  int get pid;
  @override

  /// Record content.
  @JsonKey(name: 'msg')
  String get message;
  @override

  /// Record time.
  @DatetimeUnixConverter()
  DateTime get time;
  @override

  /// Record tags.
  List<String> get tags;
  @override

  /// Attached object.
  Object? get object;
  @override
  @JsonKey(ignore: true)
  _$$_LogRecordCopyWith<_$_LogRecord> get copyWith =>
      throw _privateConstructorUsedError;
}
