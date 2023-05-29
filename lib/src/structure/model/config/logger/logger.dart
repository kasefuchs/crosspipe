import 'package:freezed_annotation/freezed_annotation.dart';

import '../../enum/logger/level.dart';
import '../../enum/logger/transport.dart';
import 'options/transport/abstract.dart';

part 'logger.freezed.dart';

part 'logger.g.dart';

/// Configuration for the logger.
@Freezed(fromJson: false, toJson: true)
class LoggerConfig with _$LoggerConfig {
  const factory LoggerConfig(
    /// Log level.
    LogLevel level,

    /// Logger transport type.
    LoggerTransportType type,

    /// Logger transport options.
    AbstractLoggerTransportOptions options,
  ) = _LoggerConfig;

  /// Factory method to create a LoggerConfig instance from JSON.
  factory LoggerConfig.fromJson(Map<String, dynamic> json) {
    LoggerTransportType transport = $enumDecode(_$LoggerTransportTypeEnumMap, json['type']);
    LogLevel level = $enumDecode(_$LogLevelEnumMap, json['level']);

    return LoggerConfig(
      level,
      transport,
      AbstractLoggerTransportOptions.fromJson(
        json,
        transport,
      ),
    );
  }
}
