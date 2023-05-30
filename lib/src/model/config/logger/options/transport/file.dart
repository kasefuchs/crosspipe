import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../structure/application.dart';
import '../../../../../structure/logger/transport/abstract.dart';
import '../../../../../structure/logger/transport/file.dart';
import '../../../../converter/duration.dart';
import '../../../../converter/file.dart';
import 'abstract.dart';

part 'file.freezed.dart';
part 'file.g.dart';

@freezed
class FileLoggerTransportOptions with _$FileLoggerTransportOptions implements AbstractLoggerTransportOptions {
  const FileLoggerTransportOptions._();

  const factory FileLoggerTransportOptions({
    @JsonKey(name: 'path') @FileConverter() required File file,
    @DurationConverter() required Duration flushInterval,
  }) = _FileLoggerTransportOptions;

  factory FileLoggerTransportOptions.fromJson(Map<String, dynamic> json) => _$FileLoggerTransportOptionsFromJson(json);

  @override
  AbstractLoggerTransport get(Application application) => FileLoggerTransport(application);
}
