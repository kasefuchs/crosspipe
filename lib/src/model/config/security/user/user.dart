import 'package:freezed_annotation/freezed_annotation.dart';

import 'credentials.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class UserConfig with _$UserConfig {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory UserConfig({
    required UserCredentials credentials,
    required String group,
  }) = _UserConfig;

  factory UserConfig.fromJson(Map<String, dynamic> json) => _$UserConfigFromJson(json);
}
