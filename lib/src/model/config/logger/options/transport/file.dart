import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../structure/application/application.dart';
import '../../../../../structure/logger/transport/abstract.dart';
import '../../../../../structure/logger/transport/file.dart';
import '../../../../converter/duration.dart';
import '../../../../converter/file.dart';
import 'abstract.dart';

part 'file.freezed.dart';

part 'file.g.dart';

/// File logger transport options.
@freezed
class FileLoggerTransportOptions with _$FileLoggerTransportOptions implements AbstractLoggerTransportOptions {
  const FileLoggerTransportOptions._();

  const factory FileLoggerTransportOptions({
    /// The file to write logs to.
    @JsonKey(name: 'path') @FileConverter() required File file,

    /// The flush interval.
    @DurationConverter() required Duration flushInterval,
  }) = _FileLoggerTransportOptions;

  /// Creates FileLoggerTransportOptions instance from JSON.
  factory FileLoggerTransportOptions.fromJson(Map<String, dynamic> json) => _$FileLoggerTransportOptionsFromJson(json);

  /// Returns an instance of FileLoggerTransport based on the specified application.
  @override
  AbstractLoggerTransport get(Application application) => FileLoggerTransport(application);
}
