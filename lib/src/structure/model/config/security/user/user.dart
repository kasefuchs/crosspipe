import 'package:freezed_annotation/freezed_annotation.dart';

import 'credentials.dart';

part 'user.freezed.dart';

part 'user.g.dart';

/// User configuration.
@freezed
class UserConfig with _$UserConfig {
  const factory UserConfig({
    /// User credentials.
    required UserCredentials credentials,

    /// User group.
    required String group,
  }) = _UserConfig;

  /// Factory method to create a UserConfig instance from JSON.
  factory UserConfig.fromJson(Map<String, dynamic> json) => _$UserConfigFromJson(json);
}
