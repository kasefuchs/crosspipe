import '../../model/enum/socket/close.dart';
import '../../structure/connection/abstract.dart';

class OnCloseHandler {
  void call(AbstractConnection connection) {
    connection.cancelTimeouts();

    _removeConnectionIfFatal(connection);
    _logConnectionClose(connection);
  }

  void _logConnectionClose(AbstractConnection connection) {
    CloseEventData closeData = connection.closeData;
    connection.log.info(
        'Connection closed with ${closeData} (code: ${closeData.code}, fatal: ${closeData.fatal})');
  }

  void _removeConnectionIfFatal(AbstractConnection connection) {
    if (connection.closeData.fatal) {
      connection.application.connections.remove(connection.sessionId);
    }
  }
}
