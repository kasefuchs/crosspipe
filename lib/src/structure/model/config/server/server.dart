import 'package:freezed_annotation/freezed_annotation.dart';

import 'http.dart';

part 'server.freezed.dart';

part 'server.g.dart';

/// Server configuration.
@freezed
class ServerConfig with _$ServerConfig {
  const factory ServerConfig({
    /// HTTP server configuration.
    required HttpServerConfig http,
  }) = _ServerConfig;

  /// Factory method to create a ServerConfig instance from JSON.
  factory ServerConfig.fromJson(Map<String, dynamic> json) => _$ServerConfigFromJson(json);
}
