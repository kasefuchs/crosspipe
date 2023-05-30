import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../structure/application.dart';
import '../../../../../structure/logger/transport/abstract.dart';
import '../../../../../structure/logger/transport/discord/transport.dart';
import '../../../../converter/duration.dart';
import '../../../../converter/uri.dart';
import '../color/map.dart';
import 'abstract.dart';

part 'discord.freezed.dart';

part 'discord.g.dart';

/// Discord Webhook logger transport options.
@freezed
class DiscordWebhookLoggerTransportOptions
    with _$DiscordWebhookLoggerTransportOptions
    implements AbstractLoggerTransportOptions {
  const DiscordWebhookLoggerTransportOptions._();

  const factory DiscordWebhookLoggerTransportOptions({
    /// The URL of the Discord webhook.
    @UriConverter() required Uri url,

    /// The flush interval.
    @DurationConverter() required Duration flushInterval,

    /// The URL of the avatar.
    @UriConverter() Uri? avatarUrl,

    /// The color map.
    required ColorMap colors,

    /// The content of the message.
    String? content,

    /// The username.
    String? username,
  }) = _DiscordWebhookLoggerTransportOptions;

  /// Creates DiscordWebhookLoggerTransportOptions instance from JSON.
  factory DiscordWebhookLoggerTransportOptions.fromJson(Map<String, dynamic> json) =>
      _$DiscordWebhookLoggerTransportOptionsFromJson(json);

  /// Returns an instance of DiscordWebhookLoggerTransport based on the specified application.
  @override
  AbstractLoggerTransport get(Application application) => DiscordWebhookLoggerTransport(application);
}
