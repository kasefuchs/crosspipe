import 'package:freezed_annotation/freezed_annotation.dart';

import 'http.dart';

part 'server.freezed.dart';
part 'server.g.dart';

@freezed
class ServerConfig with _$ServerConfig {
  const factory ServerConfig({
    required HttpServerConfig http,
  }) = _ServerConfig;

  factory ServerConfig.fromJson(Map<String, dynamic> json) => _$ServerConfigFromJson(json);
}
