import 'package:freezed_annotation/freezed_annotation.dart';

part 'http.freezed.dart';

part 'http.g.dart';

/// HTTP server configuration.
@freezed
class HttpServerConfig with _$HttpServerConfig {
  const factory HttpServerConfig({
    /// The host IP address.
    @Default('127.0.0.1') String host,

    /// The server port.
    @Default(8080) int port,
  }) = _HttpServerConfig;

  /// Factory method to create an HttpServerConfig instance from JSON.
  factory HttpServerConfig.fromJson(Map<String, dynamic> json) => _$HttpServerConfigFromJson(json);
}
