import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../structure/application.dart';
import '../../../../../structure/logger/transport/abstract.dart';
import '../../../../../structure/logger/transport/stdout.dart';
import '../color/map.dart';
import 'abstract.dart';

part 'stdout.freezed.dart';

part 'stdout.g.dart';

/// Options for the stdout logger transport.
@freezed
class StdoutLoggerTransportOptions with _$StdoutLoggerTransportOptions implements AbstractLoggerTransportOptions {
  const StdoutLoggerTransportOptions._();

  const factory StdoutLoggerTransportOptions({
    /// The color map.
    required ColorMap colors,

    /// Is message styled?
    @Default(true) bool styled,

    /// Is message pretty styled?
    @Default(true) bool pretty,

    /// Time format.
    @Default('HH:mm:ss.SSS') String timeFormat,
  }) = _StdoutLoggerTransportOptions;

  /// Creates an instance of StdoutLoggerTransportOptions from JSON.
  factory StdoutLoggerTransportOptions.fromJson(Map<String, dynamic> json) =>
      _$StdoutLoggerTransportOptionsFromJson(json);

  /// Returns an instance of StdoutLoggerTransport based on the specified application.
  @override
  AbstractLoggerTransport get(Application application) => StdoutLoggerTransport(application);
}
