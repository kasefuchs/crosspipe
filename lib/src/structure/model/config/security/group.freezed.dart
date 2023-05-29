// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'group.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GroupConfig _$GroupConfigFromJson(Map<String, dynamic> json) {
  return _GroupConfig.fromJson(json);
}

/// @nodoc
mixin _$GroupConfig {
  /// Group name.
  String get name => throw _privateConstructorUsedError;

  /// Indicates if login is allowed when no password is set.
  bool get allowLoginIfNoPasswordSet => throw _privateConstructorUsedError;

  /// List of permissions for the group.
  List<Permission> get permissions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GroupConfigCopyWith<GroupConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupConfigCopyWith<$Res> {
  factory $GroupConfigCopyWith(
          GroupConfig value, $Res Function(GroupConfig) then) =
      _$GroupConfigCopyWithImpl<$Res, GroupConfig>;
  @useResult
  $Res call(
      {String name,
      bool allowLoginIfNoPasswordSet,
      List<Permission> permissions});
}

/// @nodoc
class _$GroupConfigCopyWithImpl<$Res, $Val extends GroupConfig>
    implements $GroupConfigCopyWith<$Res> {
  _$GroupConfigCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? allowLoginIfNoPasswordSet = null,
    Object? permissions = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      allowLoginIfNoPasswordSet: null == allowLoginIfNoPasswordSet
          ? _value.allowLoginIfNoPasswordSet
          : allowLoginIfNoPasswordSet // ignore: cast_nullable_to_non_nullable
              as bool,
      permissions: null == permissions
          ? _value.permissions
          : permissions // ignore: cast_nullable_to_non_nullable
              as List<Permission>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GroupConfigCopyWith<$Res>
    implements $GroupConfigCopyWith<$Res> {
  factory _$$_GroupConfigCopyWith(
          _$_GroupConfig value, $Res Function(_$_GroupConfig) then) =
      __$$_GroupConfigCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      bool allowLoginIfNoPasswordSet,
      List<Permission> permissions});
}

/// @nodoc
class __$$_GroupConfigCopyWithImpl<$Res>
    extends _$GroupConfigCopyWithImpl<$Res, _$_GroupConfig>
    implements _$$_GroupConfigCopyWith<$Res> {
  __$$_GroupConfigCopyWithImpl(
      _$_GroupConfig _value, $Res Function(_$_GroupConfig) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? allowLoginIfNoPasswordSet = null,
    Object? permissions = null,
  }) {
    return _then(_$_GroupConfig(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      allowLoginIfNoPasswordSet: null == allowLoginIfNoPasswordSet
          ? _value.allowLoginIfNoPasswordSet
          : allowLoginIfNoPasswordSet // ignore: cast_nullable_to_non_nullable
              as bool,
      permissions: null == permissions
          ? _value._permissions
          : permissions // ignore: cast_nullable_to_non_nullable
              as List<Permission>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GroupConfig implements _GroupConfig {
  const _$_GroupConfig(
      {required this.name,
      this.allowLoginIfNoPasswordSet = false,
      final List<Permission> permissions = const []})
      : _permissions = permissions;

  factory _$_GroupConfig.fromJson(Map<String, dynamic> json) =>
      _$$_GroupConfigFromJson(json);

  /// Group name.
  @override
  final String name;

  /// Indicates if login is allowed when no password is set.
  @override
  @JsonKey()
  final bool allowLoginIfNoPasswordSet;

  /// List of permissions for the group.
  final List<Permission> _permissions;

  /// List of permissions for the group.
  @override
  @JsonKey()
  List<Permission> get permissions {
    if (_permissions is EqualUnmodifiableListView) return _permissions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_permissions);
  }

  @override
  String toString() {
    return 'GroupConfig(name: $name, allowLoginIfNoPasswordSet: $allowLoginIfNoPasswordSet, permissions: $permissions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GroupConfig &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.allowLoginIfNoPasswordSet,
                    allowLoginIfNoPasswordSet) ||
                other.allowLoginIfNoPasswordSet == allowLoginIfNoPasswordSet) &&
            const DeepCollectionEquality()
                .equals(other._permissions, _permissions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, allowLoginIfNoPasswordSet,
      const DeepCollectionEquality().hash(_permissions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GroupConfigCopyWith<_$_GroupConfig> get copyWith =>
      __$$_GroupConfigCopyWithImpl<_$_GroupConfig>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GroupConfigToJson(
      this,
    );
  }
}

abstract class _GroupConfig implements GroupConfig {
  const factory _GroupConfig(
      {required final String name,
      final bool allowLoginIfNoPasswordSet,
      final List<Permission> permissions}) = _$_GroupConfig;

  factory _GroupConfig.fromJson(Map<String, dynamic> json) =
      _$_GroupConfig.fromJson;

  @override

  /// Group name.
  String get name;
  @override

  /// Indicates if login is allowed when no password is set.
  bool get allowLoginIfNoPasswordSet;
  @override

  /// List of permissions for the group.
  List<Permission> get permissions;
  @override
  @JsonKey(ignore: true)
  _$$_GroupConfigCopyWith<_$_GroupConfig> get copyWith =>
      throw _privateConstructorUsedError;
}
