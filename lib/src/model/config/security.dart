import 'package:freezed_annotation/freezed_annotation.dart';

import '../converter/duration.dart';

part 'security.freezed.dart';
part 'security.g.dart';

@freezed
class SecurityConfig with _$SecurityConfig {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory SecurityConfig({
    @DurationConverter() required Duration identifyTimeout,
    @DurationConverter() required Duration heartbeatTimeout,
  }) = _SecurityConfig;

  factory SecurityConfig.fromJson(Map<String, dynamic> json) =>
      _$SecurityConfigFromJson(json);
}
