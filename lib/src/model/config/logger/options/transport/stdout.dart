import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../structure/application.dart';
import '../../../../../structure/logger/transport/abstract.dart';
import '../../../../../structure/logger/transport/stdout.dart';
import '../color/map.dart';
import 'abstract.dart';

part 'stdout.freezed.dart';
part 'stdout.g.dart';

@freezed
class StdoutLoggerTransportOptions
    with _$StdoutLoggerTransportOptions
    implements AbstractLoggerTransportOptions {
  const StdoutLoggerTransportOptions._();

  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory StdoutLoggerTransportOptions({
    required ColorMap colors,
    @Default(true) bool styled,
    @Default(true) bool pretty,
    @Default('HH:mm:ss.SSS') String timeFormat,
  }) = _StdoutLoggerTransportOptions;

  factory StdoutLoggerTransportOptions.fromJson(Map<String, dynamic> json) =>
      _$StdoutLoggerTransportOptionsFromJson(json);

  @override
  AbstractLoggerTransport get(Application application) =>
      StdoutLoggerTransport(application);
}
