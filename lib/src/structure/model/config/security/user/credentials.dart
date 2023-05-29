import 'package:freezed_annotation/freezed_annotation.dart';

part 'credentials.freezed.dart';

part 'credentials.g.dart';

/// User credentials.
@freezed
class UserCredentials with _$UserCredentials {
  const factory UserCredentials({
    /// The user's login.
    required String login,

    /// The hashed password.
    String? passwordHash,
  }) = _UserCredentials;

  /// Factory method to create a UserCredentials instance from JSON.
  factory UserCredentials.fromJson(Map<String, dynamic> json) => _$UserCredentialsFromJson(json);
}
