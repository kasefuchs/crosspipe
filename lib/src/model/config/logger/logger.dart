import 'package:freezed_annotation/freezed_annotation.dart';

import '../../enum/logger/level.dart';
import '../../enum/logger/transport.dart';
import 'options/transport/abstract.dart';

part 'logger.freezed.dart';
part 'logger.g.dart';

@Freezed(fromJson: false, toJson: true)
class LoggerConfig with _$LoggerConfig {
  const factory LoggerConfig(
    LogLevel level,
    LoggerTransportType type,
    AbstractLoggerTransportOptions options,
  ) = _LoggerConfig;

  factory LoggerConfig.fromJson(Map<String, dynamic> json) {
    LoggerTransportType transport =
        $enumDecode(_$LoggerTransportTypeEnumMap, json['type']);
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
