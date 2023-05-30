import 'package:bcrypt/bcrypt.dart';

import '../../model/config/security/group.dart';
import '../../model/config/security/user/user.dart';
import '../../model/enum/socket/close.dart';
import '../../model/enum/socket/payload.dart';
import '../../model/payload/data/identify.dart';
import '../../model/payload/data/ready.dart';
import '../../structure/application/connection/abstract.dart';

import 'mixin.dart';

/// Handles the [Identify] payload type.
class IdentifyHandler with PayloadHandler<IdentifyPayloadData> {
  /// Handles the [Identify] payload type.
  @override
  void call(AbstractConnection connection, IdentifyPayloadData data) {
    connection.identifyTimeout?.cancel();

    final (
      bool authenticationSucceed,
      UserConfig? user,
      GroupConfig? group,
    ) = _performAuthentication(connection, data);

    if (connection.identified) return connection.close(CloseEventData.AlreadyAuthenticated);
    if (!authenticationSucceed) return connection.close(CloseEventData.AuthenticationFailed);

    connection
      ..identified = true
      ..user = user
      ..group = group
      ..feeds = data.feeds;

    connection.send(
      PayloadType.Ready,
      ReadyPayloadData(
        sessionId: connection.sessionId,
      ),
    );
  }

  /// Checks and performs user authorization.
  (bool, UserConfig?, GroupConfig?) _performAuthentication(AbstractConnection connection, IdentifyPayloadData data) {
    try {
      UserConfig user = connection.application.config.security.users.firstWhere(
        (user) => user.credentials.login == data.login,
      );

      GroupConfig group = connection.application.config.security.groups.firstWhere(
        (group) => group.name == user.group,
      );

      return (
        user.credentials.passwordHash == null
            ? group.allowLoginIfNoPasswordSet
            : BCrypt.checkpw(
                data.password!,
                user.credentials.passwordHash!,
              ),
        user,
        group,
      );
    } on TypeError {
      // Simply ignore
    } catch (error) {
      connection.log.error('An error occurred during authorization: ${error.runtimeType} ', error);
    }

    return (false, null, null);
  }
}
