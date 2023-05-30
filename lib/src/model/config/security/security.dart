import 'package:freezed_annotation/freezed_annotation.dart';

import 'authentication.dart';
import 'group.dart';
import 'user/user.dart';

part 'security.freezed.dart';
part 'security.g.dart';

@freezed
class SecurityConfig with _$SecurityConfig {
  const factory SecurityConfig({
    required AuthenticationConfig authentication,
    required List<GroupConfig> groups,
    required List<UserConfig> users,
  }) = _SecurityConfig;

  factory SecurityConfig.fromJson(Map<String, dynamic> json) => _$SecurityConfigFromJson(json);
}
