// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'footer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EmbedFooter _$EmbedFooterFromJson(Map<String, dynamic> json) {
  return _EmbedFooter.fromJson(json);
}

/// @nodoc
mixin _$EmbedFooter {
  String get text => throw _privateConstructorUsedError;
  @UriConverter()
  Uri? get iconUrl => throw _privateConstructorUsedError;
  @UriConverter()
  Uri? get proxyIconUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmbedFooterCopyWith<EmbedFooter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmbedFooterCopyWith<$Res> {
  factory $EmbedFooterCopyWith(
          EmbedFooter value, $Res Function(EmbedFooter) then) =
      _$EmbedFooterCopyWithImpl<$Res, EmbedFooter>;
  @useResult
  $Res call(
      {String text,
      @UriConverter() Uri? iconUrl,
      @UriConverter() Uri? proxyIconUrl});
}

/// @nodoc
class _$EmbedFooterCopyWithImpl<$Res, $Val extends EmbedFooter>
    implements $EmbedFooterCopyWith<$Res> {
  _$EmbedFooterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? iconUrl = freezed,
    Object? proxyIconUrl = freezed,
  }) {
    return _then(_value.copyWith(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      iconUrl: freezed == iconUrl
          ? _value.iconUrl
          : iconUrl // ignore: cast_nullable_to_non_nullable
              as Uri?,
      proxyIconUrl: freezed == proxyIconUrl
          ? _value.proxyIconUrl
          : proxyIconUrl // ignore: cast_nullable_to_non_nullable
              as Uri?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EmbedFooterCopyWith<$Res>
    implements $EmbedFooterCopyWith<$Res> {
  factory _$$_EmbedFooterCopyWith(
          _$_EmbedFooter value, $Res Function(_$_EmbedFooter) then) =
      __$$_EmbedFooterCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String text,
      @UriConverter() Uri? iconUrl,
      @UriConverter() Uri? proxyIconUrl});
}

/// @nodoc
class __$$_EmbedFooterCopyWithImpl<$Res>
    extends _$EmbedFooterCopyWithImpl<$Res, _$_EmbedFooter>
    implements _$$_EmbedFooterCopyWith<$Res> {
  __$$_EmbedFooterCopyWithImpl(
      _$_EmbedFooter _value, $Res Function(_$_EmbedFooter) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? iconUrl = freezed,
    Object? proxyIconUrl = freezed,
  }) {
    return _then(_$_EmbedFooter(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      iconUrl: freezed == iconUrl
          ? _value.iconUrl
          : iconUrl // ignore: cast_nullable_to_non_nullable
              as Uri?,
      proxyIconUrl: freezed == proxyIconUrl
          ? _value.proxyIconUrl
          : proxyIconUrl // ignore: cast_nullable_to_non_nullable
              as Uri?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EmbedFooter implements _EmbedFooter {
  const _$_EmbedFooter(
      {required this.text,
      @UriConverter() this.iconUrl,
      @UriConverter() this.proxyIconUrl});

  factory _$_EmbedFooter.fromJson(Map<String, dynamic> json) =>
      _$$_EmbedFooterFromJson(json);

  @override
  final String text;
  @override
  @UriConverter()
  final Uri? iconUrl;
  @override
  @UriConverter()
  final Uri? proxyIconUrl;

  @override
  String toString() {
    return 'EmbedFooter(text: $text, iconUrl: $iconUrl, proxyIconUrl: $proxyIconUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EmbedFooter &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.iconUrl, iconUrl) || other.iconUrl == iconUrl) &&
            (identical(other.proxyIconUrl, proxyIconUrl) ||
                other.proxyIconUrl == proxyIconUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, text, iconUrl, proxyIconUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EmbedFooterCopyWith<_$_EmbedFooter> get copyWith =>
      __$$_EmbedFooterCopyWithImpl<_$_EmbedFooter>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EmbedFooterToJson(
      this,
    );
  }
}

abstract class _EmbedFooter implements EmbedFooter {
  const factory _EmbedFooter(
      {required final String text,
      @UriConverter() final Uri? iconUrl,
      @UriConverter() final Uri? proxyIconUrl}) = _$_EmbedFooter;

  factory _EmbedFooter.fromJson(Map<String, dynamic> json) =
      _$_EmbedFooter.fromJson;

  @override
  String get text;
  @override
  @UriConverter()
  Uri? get iconUrl;
  @override
  @UriConverter()
  Uri? get proxyIconUrl;
  @override
  @JsonKey(ignore: true)
  _$$_EmbedFooterCopyWith<_$_EmbedFooter> get copyWith =>
      throw _privateConstructorUsedError;
}
