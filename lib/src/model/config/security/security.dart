import 'package:freezed_annotation/freezed_annotation.dart';

import 'authentication.dart';
import 'group.dart';
import 'user/user.dart';

part 'security.freezed.dart';

part 'security.g.dart';

/// Security configuration.
@freezed
class SecurityConfig with _$SecurityConfig {
  const factory SecurityConfig({
    /// Authentication configuration.
    required AuthenticationConfig authentication,

    /// List of group configurations.
    required List<GroupConfig> groups,

    /// List of user configurations.
    required List<UserConfig> users,
  }) = _SecurityConfig;

  /// Factory method to create a SecurityConfig instance from JSON.
  factory SecurityConfig.fromJson(Map<String, dynamic> json) => _$SecurityConfigFromJson(json);
}
