import 'package:freezed_annotation/freezed_annotation.dart';

part 'credentials.freezed.dart';
part 'credentials.g.dart';

@freezed
class UserCredentials with _$UserCredentials {
  const factory UserCredentials({
    required String login,
    String? passwordHash,
  }) = _UserCredentials;

  factory UserCredentials.fromJson(Map<String, dynamic> json) => _$UserCredentialsFromJson(json);
}
