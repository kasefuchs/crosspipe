
import '../../../../../structure/application/application.dart';
import '../../../../../structure/logger/transport/abstract.dart';
import '../../../../enum/logger/transport.dart';
import 'discord.dart';
import 'file.dart';
import 'none.dart';
import 'stdout.dart';

/// Abstract base class for logger transport options.
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

  /// Returns an instance of AbstractLoggerTransport based on the specified application.
  AbstractLoggerTransport get(Application application);

  /// Converts the options to its JSON representation.
  Map toJson();
}
