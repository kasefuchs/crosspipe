import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yaml/yaml.dart';

import '../../../utility/yaml.dart';
import 'logger/logger.dart';
import 'security/security.dart';
import 'server/server.dart';

part 'application.freezed.dart';

part 'application.g.dart';

/// Application configuration.
@freezed
class ApplicationConfig with _$ApplicationConfig {
  const factory ApplicationConfig({
    /// Logger configuration.
    required LoggerConfig logger,

    /// Security configuration.
    required SecurityConfig security,

    /// Server configuration.
    required ServerConfig server,
  }) = _ApplicationConfig;

  /// Factory method to create an ApplicationConfig instance from JSON.
  factory ApplicationConfig.fromJson(Map<String, dynamic> json) => _$ApplicationConfigFromJson(json);

  /// Factory method to create an ApplicationConfig instance from a file.
  factory ApplicationConfig.fromFile(File file) {
    String content = file.readAsStringSync();
    YamlMap yaml = loadYaml(content);
    return ApplicationConfig.fromYaml(yaml);
  }

  /// Factory method to create an ApplicationConfig instance from a YAML map.
  factory ApplicationConfig.fromYaml(YamlMap yaml) {
    Map<String, dynamic> regularMap = convertYamlMapToMap(yaml);
    return ApplicationConfig.fromJson(regularMap);
  }
}
