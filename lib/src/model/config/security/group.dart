import 'package:freezed_annotation/freezed_annotation.dart';

import '../../enum/socket/permission.dart';

part 'group.freezed.dart';
part 'group.g.dart';

@freezed
class GroupConfig with _$GroupConfig {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory GroupConfig({
    required String name,
    @Default(false) bool allowLoginIfNoPasswordSet,
    @Default([]) List<Permission> permissions,
  }) = _GroupConfig;

  factory GroupConfig.fromJson(Map<String, dynamic> json) => _$GroupConfigFromJson(json);
}
