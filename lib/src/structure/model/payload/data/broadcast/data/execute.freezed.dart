// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'execute.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BroadcastExecutePayloadData _$BroadcastExecutePayloadDataFromJson(
    Map<String, dynamic> json) {
  return _BroadcastExecutePayloadData.fromJson(json);
}

/// @nodoc
mixin _$BroadcastExecutePayloadData {
  Set<String> get recipients => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<dynamic> get arguments => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BroadcastExecutePayloadDataCopyWith<BroadcastExecutePayloadData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BroadcastExecutePayloadDataCopyWith<$Res> {
  factory $BroadcastExecutePayloadDataCopyWith(
          BroadcastExecutePayloadData value,
          $Res Function(BroadcastExecutePayloadData) then) =
      _$BroadcastExecutePayloadDataCopyWithImpl<$Res,
          BroadcastExecutePayloadData>;
  @useResult
  $Res call({Set<String> recipients, String name, List<dynamic> arguments});
}

/// @nodoc
class _$BroadcastExecutePayloadDataCopyWithImpl<$Res,
        $Val extends BroadcastExecutePayloadData>
    implements $BroadcastExecutePayloadDataCopyWith<$Res> {
  _$BroadcastExecutePayloadDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipients = null,
    Object? name = null,
    Object? arguments = null,
  }) {
    return _then(_value.copyWith(
      recipients: null == recipients
          ? _value.recipients
          : recipients // ignore: cast_nullable_to_non_nullable
              as Set<String>,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      arguments: null == arguments
          ? _value.arguments
          : arguments // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BroadcastExecutePayloadDataCopyWith<$Res>
    implements $BroadcastExecutePayloadDataCopyWith<$Res> {
  factory _$$_BroadcastExecutePayloadDataCopyWith(
          _$_BroadcastExecutePayloadData value,
          $Res Function(_$_BroadcastExecutePayloadData) then) =
      __$$_BroadcastExecutePayloadDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Set<String> recipients, String name, List<dynamic> arguments});
}

/// @nodoc
class __$$_BroadcastExecutePayloadDataCopyWithImpl<$Res>
    extends _$BroadcastExecutePayloadDataCopyWithImpl<$Res,
        _$_BroadcastExecutePayloadData>
    implements _$$_BroadcastExecutePayloadDataCopyWith<$Res> {
  __$$_BroadcastExecutePayloadDataCopyWithImpl(
      _$_BroadcastExecutePayloadData _value,
      $Res Function(_$_BroadcastExecutePayloadData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipients = null,
    Object? name = null,
    Object? arguments = null,
  }) {
    return _then(_$_BroadcastExecutePayloadData(
      recipients: null == recipients
          ? _value._recipients
          : recipients // ignore: cast_nullable_to_non_nullable
              as Set<String>,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      arguments: null == arguments
          ? _value._arguments
          : arguments // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BroadcastExecutePayloadData implements _BroadcastExecutePayloadData {
  const _$_BroadcastExecutePayloadData(
      {required final Set<String> recipients,
      required this.name,
      required final List<dynamic> arguments})
      : _recipients = recipients,
        _arguments = arguments;

  factory _$_BroadcastExecutePayloadData.fromJson(Map<String, dynamic> json) =>
      _$$_BroadcastExecutePayloadDataFromJson(json);

  final Set<String> _recipients;
  @override
  Set<String> get recipients {
    if (_recipients is EqualUnmodifiableSetView) return _recipients;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_recipients);
  }

  @override
  final String name;
  final List<dynamic> _arguments;
  @override
  List<dynamic> get arguments {
    if (_arguments is EqualUnmodifiableListView) return _arguments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_arguments);
  }

  @override
  String toString() {
    return 'BroadcastExecutePayloadData(recipients: $recipients, name: $name, arguments: $arguments)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BroadcastExecutePayloadData &&
            const DeepCollectionEquality()
                .equals(other._recipients, _recipients) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._arguments, _arguments));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_recipients),
      name,
      const DeepCollectionEquality().hash(_arguments));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BroadcastExecutePayloadDataCopyWith<_$_BroadcastExecutePayloadData>
      get copyWith => __$$_BroadcastExecutePayloadDataCopyWithImpl<
          _$_BroadcastExecutePayloadData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BroadcastExecutePayloadDataToJson(
      this,
    );
  }
}

abstract class _BroadcastExecutePayloadData
    implements BroadcastExecutePayloadData {
  const factory _BroadcastExecutePayloadData(
      {required final Set<String> recipients,
      required final String name,
      required final List<dynamic> arguments}) = _$_BroadcastExecutePayloadData;

  factory _BroadcastExecutePayloadData.fromJson(Map<String, dynamic> json) =
      _$_BroadcastExecutePayloadData.fromJson;

  @override
  Set<String> get recipients;
  @override
  String get name;
  @override
  List<dynamic> get arguments;
  @override
  @JsonKey(ignore: true)
  _$$_BroadcastExecutePayloadDataCopyWith<_$_BroadcastExecutePayloadData>
      get copyWith => throw _privateConstructorUsedError;
}
