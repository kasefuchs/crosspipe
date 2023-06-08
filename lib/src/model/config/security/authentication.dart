import 'package:freezed_annotation/freezed_annotation.dart';

import '../../converter/duration.dart';

part 'authentication.freezed.dart';
part 'authentication.g.dart';

@freezed
class AuthenticationConfig with _$AuthenticationConfig {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory AuthenticationConfig({
    @DurationConverter() required Duration identifyTimeout,
    @DurationConverter() required Duration heartbeatTimeout,
    @Default(16) int sessionIdLength,
  }) = _AuthenticationConfig;

  factory AuthenticationConfig.fromJson(Map<String, dynamic> json) => _$AuthenticationConfigFromJson(json);
}
