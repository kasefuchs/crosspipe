import 'package:freezed_annotation/freezed_annotation.dart';

import 'http.dart';

part 'server.freezed.dart';
part 'server.g.dart';

@freezed
class ServerConfig with _$ServerConfig {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory ServerConfig({
    required String database,
    required HttpServerConfig http,
  }) = _ServerConfig;

  factory ServerConfig.fromJson(Map<String, dynamic> json) =>
      _$ServerConfigFromJson(json);
}
