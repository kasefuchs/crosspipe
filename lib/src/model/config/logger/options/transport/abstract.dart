import '../../../../../structure/application.dart';
import '../../../../../structure/logger/transport/abstract.dart';
import '../../../../enum/logger/transport.dart';
import 'discord.dart';
import 'file.dart';
import 'none.dart';
import 'stdout.dart';

abstract class AbstractLoggerTransportOptions {
  AbstractLoggerTransportOptions();

  factory AbstractLoggerTransportOptions.fromJson(Map<String, dynamic> json, LoggerTransportType type) {
    switch (type) {
      case LoggerTransportType.DiscordWebhook:
        return DiscordWebhookLoggerTransportOptions.fromJson(json);
      case LoggerTransportType.File:
        return FileLoggerTransportOptions.fromJson(json);
      case LoggerTransportType.Stdout:
        return StdoutLoggerTransportOptions.fromJson(json);
      case LoggerTransportType.None:
        return NoneLoggerTransportOptions();
    }
  }

  AbstractLoggerTransport get(Application application);

  Map toJson();
}
