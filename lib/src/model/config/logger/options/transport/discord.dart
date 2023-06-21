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

@freezed
class DiscordWebhookLoggerTransportOptions
    with _$DiscordWebhookLoggerTransportOptions
    implements AbstractLoggerTransportOptions {
  const DiscordWebhookLoggerTransportOptions._();

  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory DiscordWebhookLoggerTransportOptions({
    @UriConverter() required Uri url,
    @DurationConverter() required Duration flushInterval,
    @UriConverter() Uri? avatarUrl,
    required ColorMap colors,
    String? content,
    String? username,
  }) = _DiscordWebhookLoggerTransportOptions;

  factory DiscordWebhookLoggerTransportOptions.fromJson(
          Map<String, dynamic> json) =>
      _$DiscordWebhookLoggerTransportOptionsFromJson(json);

  @override
  AbstractLoggerTransport get(Application application) =>
      DiscordWebhookLoggerTransport(application);
}
