import 'package:freezed_annotation/freezed_annotation.dart';

import '../../converter/duration.dart';

part 'authentication.freezed.dart';

part 'authentication.g.dart';

/// Authentication configuration.
@freezed
class AuthenticationConfig with _$AuthenticationConfig {
  const factory AuthenticationConfig({
    /// Identify timeout duration.
    @DurationConverter() required Duration identifyTimeout,

    /// Heartbeat timeout duration.
    @DurationConverter() required Duration heartbeatTimeout,

    /// Length of session ID.
    @Default(16) int sessionIdLength,
  }) = _AuthenticationConfig;

  /// Factory method to create an AuthenticationConfig instance from JSON.
  factory AuthenticationConfig.fromJson(Map<String, dynamic> json) => _$AuthenticationConfigFromJson(json);
}
