import 'package:bcrypt/bcrypt.dart';
import 'package:crosspipe/src/structure/prisma/client.dart';

import '../../model/enum/socket/close.dart';
import '../../model/enum/socket/payload.dart';
import '../../model/payload/data/identify.dart';
import '../../model/payload/data/ready.dart';
import '../../structure/connection/abstract.dart';
import 'mixin.dart';

class IdentifyHandler with PayloadHandler<IdentifyPayloadData> {
  @override
  void call(AbstractConnection connection, IdentifyPayloadData data) async {
    connection.identifyTimeout?.cancel();

    final (
      bool authenticationSucceed,
      User? user,
      Group? group,
    ) = await _performAuthentication(connection, data);

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

  Future<(bool, User?, Group?)> _performAuthentication(AbstractConnection connection, IdentifyPayloadData data) async {
    try {
      UserFluent<User?> userFluent = connection.application.prisma.user.findUnique(
        where: UserWhereUniqueInput(name: data.login),
      );
      User? user = await userFluent;
      Group? group = await userFluent.group();

      return (
        user?.passwordHash == null
            ? group.allowLoginIfNoPasswordSet
            : BCrypt.checkpw(
                data.password!,
                user!.passwordHash!,
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
