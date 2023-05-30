import 'package:freezed_annotation/freezed_annotation.dart';

import '../../enum/socket/permission.dart';

part 'group.freezed.dart';

part 'group.g.dart';

/// Group configuration.
@freezed
class GroupConfig with _$GroupConfig {
  const factory GroupConfig({
    /// Group name.
    required String name,

    /// Indicates if login is allowed when no password is set.
    @Default(false) bool allowLoginIfNoPasswordSet,

    /// List of permissions for the group.
    @Default([]) List<Permission> permissions,
  }) = _GroupConfig;

  /// Factory method to create a GroupConfig instance from JSON.
  factory GroupConfig.fromJson(Map<String, dynamic> json) => _$GroupConfigFromJson(json);
}
