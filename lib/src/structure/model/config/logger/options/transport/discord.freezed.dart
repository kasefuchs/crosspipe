// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'discord.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DiscordWebhookLoggerTransportOptions
    _$DiscordWebhookLoggerTransportOptionsFromJson(Map<String, dynamic> json) {
  return _DiscordWebhookLoggerTransportOptions.fromJson(json);
}

/// @nodoc
mixin _$DiscordWebhookLoggerTransportOptions {
  /// The URL of the Discord webhook.
  @UriConverter()
  Uri get url => throw _privateConstructorUsedError;

  /// The flush interval.
  @DurationConverter()
  Duration get flushInterval => throw _privateConstructorUsedError;

  /// The URL of the avatar.
  @UriConverter()
  Uri? get avatarUrl => throw _privateConstructorUsedError;

  /// The color map.
  ColorMap get colors => throw _privateConstructorUsedError;

  /// The content of the message.
  String? get content => throw _privateConstructorUsedError;

  /// The username.
  String? get username => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DiscordWebhookLoggerTransportOptionsCopyWith<
          DiscordWebhookLoggerTransportOptions>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiscordWebhookLoggerTransportOptionsCopyWith<$Res> {
  factory $DiscordWebhookLoggerTransportOptionsCopyWith(
          DiscordWebhookLoggerTransportOptions value,
          $Res Function(DiscordWebhookLoggerTransportOptions) then) =
      _$DiscordWebhookLoggerTransportOptionsCopyWithImpl<$Res,
          DiscordWebhookLoggerTransportOptions>;
  @useResult
  $Res call(
      {@UriConverter() Uri url,
      @DurationConverter() Duration flushInterval,
      @UriConverter() Uri? avatarUrl,
      ColorMap colors,
      String? content,
      String? username});
}

/// @nodoc
class _$DiscordWebhookLoggerTransportOptionsCopyWithImpl<$Res,
        $Val extends DiscordWebhookLoggerTransportOptions>
    implements $DiscordWebhookLoggerTransportOptionsCopyWith<$Res> {
  _$DiscordWebhookLoggerTransportOptionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? flushInterval = null,
    Object? avatarUrl = freezed,
    Object? colors = null,
    Object? content = freezed,
    Object? username = freezed,
  }) {
    return _then(_value.copyWith(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as Uri,
      flushInterval: null == flushInterval
          ? _value.flushInterval
          : flushInterval // ignore: cast_nullable_to_non_nullable
              as Duration,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as Uri?,
      colors: null == colors
          ? _value.colors
          : colors // ignore: cast_nullable_to_non_nullable
              as ColorMap,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DiscordWebhookLoggerTransportOptionsCopyWith<$Res>
    implements $DiscordWebhookLoggerTransportOptionsCopyWith<$Res> {
  factory _$$_DiscordWebhookLoggerTransportOptionsCopyWith(
          _$_DiscordWebhookLoggerTransportOptions value,
          $Res Function(_$_DiscordWebhookLoggerTransportOptions) then) =
      __$$_DiscordWebhookLoggerTransportOptionsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@UriConverter() Uri url,
      @DurationConverter() Duration flushInterval,
      @UriConverter() Uri? avatarUrl,
      ColorMap colors,
      String? content,
      String? username});
}

/// @nodoc
class __$$_DiscordWebhookLoggerTransportOptionsCopyWithImpl<$Res>
    extends _$DiscordWebhookLoggerTransportOptionsCopyWithImpl<$Res,
        _$_DiscordWebhookLoggerTransportOptions>
    implements _$$_DiscordWebhookLoggerTransportOptionsCopyWith<$Res> {
  __$$_DiscordWebhookLoggerTransportOptionsCopyWithImpl(
      _$_DiscordWebhookLoggerTransportOptions _value,
      $Res Function(_$_DiscordWebhookLoggerTransportOptions) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? flushInterval = null,
    Object? avatarUrl = freezed,
    Object? colors = null,
    Object? content = freezed,
    Object? username = freezed,
  }) {
    return _then(_$_DiscordWebhookLoggerTransportOptions(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as Uri,
      flushInterval: null == flushInterval
          ? _value.flushInterval
          : flushInterval // ignore: cast_nullable_to_non_nullable
              as Duration,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as Uri?,
      colors: null == colors
          ? _value.colors
          : colors // ignore: cast_nullable_to_non_nullable
              as ColorMap,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DiscordWebhookLoggerTransportOptions
    extends _DiscordWebhookLoggerTransportOptions {
  const _$_DiscordWebhookLoggerTransportOptions(
      {@UriConverter() required this.url,
      @DurationConverter() required this.flushInterval,
      @UriConverter() this.avatarUrl,
      required this.colors,
      this.content,
      this.username})
      : super._();

  factory _$_DiscordWebhookLoggerTransportOptions.fromJson(
          Map<String, dynamic> json) =>
      _$$_DiscordWebhookLoggerTransportOptionsFromJson(json);

  /// The URL of the Discord webhook.
  @override
  @UriConverter()
  final Uri url;

  /// The flush interval.
  @override
  @DurationConverter()
  final Duration flushInterval;

  /// The URL of the avatar.
  @override
  @UriConverter()
  final Uri? avatarUrl;

  /// The color map.
  @override
  final ColorMap colors;

  /// The content of the message.
  @override
  final String? content;

  /// The username.
  @override
  final String? username;

  @override
  String toString() {
    return 'DiscordWebhookLoggerTransportOptions(url: $url, flushInterval: $flushInterval, avatarUrl: $avatarUrl, colors: $colors, content: $content, username: $username)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DiscordWebhookLoggerTransportOptions &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.flushInterval, flushInterval) ||
                other.flushInterval == flushInterval) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl) &&
            (identical(other.colors, colors) || other.colors == colors) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.username, username) ||
                other.username == username));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, url, flushInterval, avatarUrl, colors, content, username);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DiscordWebhookLoggerTransportOptionsCopyWith<
          _$_DiscordWebhookLoggerTransportOptions>
      get copyWith => __$$_DiscordWebhookLoggerTransportOptionsCopyWithImpl<
          _$_DiscordWebhookLoggerTransportOptions>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DiscordWebhookLoggerTransportOptionsToJson(
      this,
    );
  }
}

abstract class _DiscordWebhookLoggerTransportOptions
    extends DiscordWebhookLoggerTransportOptions {
  const factory _DiscordWebhookLoggerTransportOptions(
      {@UriConverter() required final Uri url,
      @DurationConverter() required final Duration flushInterval,
      @UriConverter() final Uri? avatarUrl,
      required final ColorMap colors,
      final String? content,
      final String? username}) = _$_DiscordWebhookLoggerTransportOptions;
  const _DiscordWebhookLoggerTransportOptions._() : super._();

  factory _DiscordWebhookLoggerTransportOptions.fromJson(
          Map<String, dynamic> json) =
      _$_DiscordWebhookLoggerTransportOptions.fromJson;

  @override

  /// The URL of the Discord webhook.
  @UriConverter()
  Uri get url;
  @override

  /// The flush interval.
  @DurationConverter()
  Duration get flushInterval;
  @override

  /// The URL of the avatar.
  @UriConverter()
  Uri? get avatarUrl;
  @override

  /// The color map.
  ColorMap get colors;
  @override

  /// The content of the message.
  String? get content;
  @override

  /// The username.
  String? get username;
  @override
  @JsonKey(ignore: true)
  _$$_DiscordWebhookLoggerTransportOptionsCopyWith<
          _$_DiscordWebhookLoggerTransportOptions>
      get copyWith => throw _privateConstructorUsedError;
}
