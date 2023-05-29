// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'record.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LogRecord _$$_LogRecordFromJson(Map<String, dynamic> json) => _$_LogRecord(
      level: $enumDecode(_$LogLevelEnumMap, json['level']),
      pid: json['pid'] as int,
      message: json['msg'] as String,
      time: const DatetimeUnixConverter().fromJson(json['time'] as int),
      tags:
          (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const [],
      object: json['object'],
    );

Map<String, dynamic> _$$_LogRecordToJson(_$_LogRecord instance) {
  final val = <String, dynamic>{
    'level': _$LogLevelEnumMap[instance.level]!,
    'pid': instance.pid,
    'msg': instance.message,
    'time': const DatetimeUnixConverter().toJson(instance.time),
    'tags': instance.tags,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('object', instance.object);
  return val;
}

const _$LogLevelEnumMap = {
  LogLevel.Trace: 'trace',
  LogLevel.Debug: 'debug',
  LogLevel.Info: 'info',
  LogLevel.Warn: 'warn',
  LogLevel.Error: 'error',
  LogLevel.Fatal: 'fatal',
};
