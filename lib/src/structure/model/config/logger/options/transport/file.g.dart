// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'file.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FileLoggerTransportOptions _$$_FileLoggerTransportOptionsFromJson(
        Map<String, dynamic> json) =>
    _$_FileLoggerTransportOptions(
      file: const FileConverter().fromJson(json['path'] as String),
      flushInterval:
          const DurationConverter().fromJson(json['flush_interval'] as int),
    );

Map<String, dynamic> _$$_FileLoggerTransportOptionsToJson(
        _$_FileLoggerTransportOptions instance) =>
    <String, dynamic>{
      'path': const FileConverter().toJson(instance.file),
      'flush_interval':
          const DurationConverter().toJson(instance.flushInterval),
    };
