// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'embed.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Embed _$EmbedFromJson(Map<String, dynamic> json) {
  return _Embed.fromJson(json);
}

/// @nodoc
mixin _$Embed {
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  List<EmbedField>? get fields => throw _privateConstructorUsedError;
  EmbedFooter? get footer => throw _privateConstructorUsedError;
  @UriConverter()
  Uri? get url => throw _privateConstructorUsedError;
  @DatetimeIso8601Converter()
  DateTime? get timestamp => throw _privateConstructorUsedError;
  @ColorDataConverter()
  ColorData? get color => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmbedCopyWith<Embed> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmbedCopyWith<$Res> {
  factory $EmbedCopyWith(Embed value, $Res Function(Embed) then) =
      _$EmbedCopyWithImpl<$Res, Embed>;
  @useResult
  $Res call(
      {String? title,
      String? description,
      List<EmbedField>? fields,
      EmbedFooter? footer,
      @UriConverter() Uri? url,
      @DatetimeIso8601Converter() DateTime? timestamp,
      @ColorDataConverter() ColorData? color});

  $EmbedFooterCopyWith<$Res>? get footer;
}

/// @nodoc
class _$EmbedCopyWithImpl<$Res, $Val extends Embed>
    implements $EmbedCopyWith<$Res> {
  _$EmbedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? fields = freezed,
    Object? footer = freezed,
    Object? url = freezed,
    Object? timestamp = freezed,
    Object? color = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      fields: freezed == fields
          ? _value.fields
          : fields // ignore: cast_nullable_to_non_nullable
              as List<EmbedField>?,
      footer: freezed == footer
          ? _value.footer
          : footer // ignore: cast_nullable_to_non_nullable
              as EmbedFooter?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as Uri?,
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as ColorData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $EmbedFooterCopyWith<$Res>? get footer {
    if (_value.footer == null) {
      return null;
    }

    return $EmbedFooterCopyWith<$Res>(_value.footer!, (value) {
      return _then(_value.copyWith(footer: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_EmbedCopyWith<$Res> implements $EmbedCopyWith<$Res> {
  factory _$$_EmbedCopyWith(_$_Embed value, $Res Function(_$_Embed) then) =
      __$$_EmbedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? title,
      String? description,
      List<EmbedField>? fields,
      EmbedFooter? footer,
      @UriConverter() Uri? url,
      @DatetimeIso8601Converter() DateTime? timestamp,
      @ColorDataConverter() ColorData? color});

  @override
  $EmbedFooterCopyWith<$Res>? get footer;
}

/// @nodoc
class __$$_EmbedCopyWithImpl<$Res> extends _$EmbedCopyWithImpl<$Res, _$_Embed>
    implements _$$_EmbedCopyWith<$Res> {
  __$$_EmbedCopyWithImpl(_$_Embed _value, $Res Function(_$_Embed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? fields = freezed,
    Object? footer = freezed,
    Object? url = freezed,
    Object? timestamp = freezed,
    Object? color = freezed,
  }) {
    return _then(_$_Embed(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      fields: freezed == fields
          ? _value._fields
          : fields // ignore: cast_nullable_to_non_nullable
              as List<EmbedField>?,
      footer: freezed == footer
          ? _value.footer
          : footer // ignore: cast_nullable_to_non_nullable
              as EmbedFooter?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as Uri?,
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as ColorData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Embed implements _Embed {
  const _$_Embed(
      {this.title,
      this.description,
      final List<EmbedField>? fields,
      this.footer,
      @UriConverter() this.url,
      @DatetimeIso8601Converter() this.timestamp,
      @ColorDataConverter() this.color})
      : _fields = fields;

  factory _$_Embed.fromJson(Map<String, dynamic> json) =>
      _$$_EmbedFromJson(json);

  @override
  final String? title;
  @override
  final String? description;
  final List<EmbedField>? _fields;
  @override
  List<EmbedField>? get fields {
    final value = _fields;
    if (value == null) return null;
    if (_fields is EqualUnmodifiableListView) return _fields;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final EmbedFooter? footer;
  @override
  @UriConverter()
  final Uri? url;
  @override
  @DatetimeIso8601Converter()
  final DateTime? timestamp;
  @override
  @ColorDataConverter()
  final ColorData? color;

  @override
  String toString() {
    return 'Embed(title: $title, description: $description, fields: $fields, footer: $footer, url: $url, timestamp: $timestamp, color: $color)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Embed &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._fields, _fields) &&
            (identical(other.footer, footer) || other.footer == footer) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.color, color) || other.color == color));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      title,
      description,
      const DeepCollectionEquality().hash(_fields),
      footer,
      url,
      timestamp,
      color);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EmbedCopyWith<_$_Embed> get copyWith =>
      __$$_EmbedCopyWithImpl<_$_Embed>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EmbedToJson(
      this,
    );
  }
}

abstract class _Embed implements Embed {
  const factory _Embed(
      {final String? title,
      final String? description,
      final List<EmbedField>? fields,
      final EmbedFooter? footer,
      @UriConverter() final Uri? url,
      @DatetimeIso8601Converter() final DateTime? timestamp,
      @ColorDataConverter() final ColorData? color}) = _$_Embed;

  factory _Embed.fromJson(Map<String, dynamic> json) = _$_Embed.fromJson;

  @override
  String? get title;
  @override
  String? get description;
  @override
  List<EmbedField>? get fields;
  @override
  EmbedFooter? get footer;
  @override
  @UriConverter()
  Uri? get url;
  @override
  @DatetimeIso8601Converter()
  DateTime? get timestamp;
  @override
  @ColorDataConverter()
  ColorData? get color;
  @override
  @JsonKey(ignore: true)
  _$$_EmbedCopyWith<_$_Embed> get copyWith =>
      throw _privateConstructorUsedError;
}
