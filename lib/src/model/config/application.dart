import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yaml/yaml.dart';
import 'package:yaml_extension/yaml_extension.dart';

import 'logger/logger.dart';
import 'security.dart';
import 'server/server.dart';

part 'application.freezed.dart';

part 'application.g.dart';

@freezed
class ApplicationConfig with _$ApplicationConfig {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory ApplicationConfig({
    required LoggerConfig logger,
    required SecurityConfig security,
    required ServerConfig server,
  }) = _ApplicationConfig;

  factory ApplicationConfig.fromJson(Map<String, dynamic> json) =>
      _$ApplicationConfigFromJson(json);

  factory ApplicationConfig.fromYaml(YamlMap yaml) =>
      _$ApplicationConfigFromJson(yaml.toMap());

  factory ApplicationConfig.fromFile(File file) {
    String content = file.readAsStringSync();
    YamlMap yaml = loadYaml(content);
    return ApplicationConfig.fromYaml(yaml);
  }
}
