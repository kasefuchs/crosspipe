// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'logger.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$$_LoggerConfigToJson(_$_LoggerConfig instance) =>
    <String, dynamic>{
      'level': _$LogLevelEnumMap[instance.level]!,
      'type': _$LoggerTransportTypeEnumMap[instance.type]!,
      'options': instance.options.toJson(),
    };

const _$LogLevelEnumMap = {
  LogLevel.Trace: 'trace',
  LogLevel.Debug: 'debug',
  LogLevel.Info: 'info',
  LogLevel.Warn: 'warn',
  LogLevel.Error: 'error',
  LogLevel.Fatal: 'fatal',
};

const _$LoggerTransportTypeEnumMap = {
  LoggerTransportType.DiscordWebhook: 'discord_webhook',
  LoggerTransportType.File: 'file',
  LoggerTransportType.Stdout: 'stdout',
  LoggerTransportType.None: 'none',
};
