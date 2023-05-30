import '../../model/enum/socket/payload.dart';
import '../../model/payload/data/hello.dart';
import '../../structure/connection/abstract.dart';

class OnConnectHandler {
  void call(AbstractConnection connection) {
    connection.log.info('Connected');

    connection.send(
      PayloadType.Hello,
      HelloPayloadData(
        heartbeatTimeout: connection.application.config.security.authentication.heartbeatTimeout,
        identifyTimeout: connection.application.config.security.authentication.identifyTimeout,
      ),
    );

    _setTimeouts(connection);
  }

  void _setTimeouts(AbstractConnection connection) {
    connection
      ..resetHeartbeatTimeout()
      ..setIdentifyTimeout();
  }
}
