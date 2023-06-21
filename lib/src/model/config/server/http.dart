import 'package:freezed_annotation/freezed_annotation.dart';

part 'http.freezed.dart';
part 'http.g.dart';

@freezed
class HttpServerConfig with _$HttpServerConfig {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory HttpServerConfig({
    @Default('127.0.0.1') String host,
    @Default(8080) int port,
  }) = _HttpServerConfig;

  factory HttpServerConfig.fromJson(Map<String, dynamic> json) =>
      _$HttpServerConfigFromJson(json);
}
