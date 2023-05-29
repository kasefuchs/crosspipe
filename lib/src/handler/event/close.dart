import '../../structure/application/connection/abstract.dart';
import '../../structure/model/enum/socket/close.dart';

/// Connection close handler.
class OnCloseHandler {
  /// Handles connection close.
  void call(AbstractConnection connection) {
    connection.cancelTimeouts();

    _removeConnectionIfFatal(connection);
    _logConnectionClose(connection);
  }


  /// Logs connection close.
  void _logConnectionClose(AbstractConnection connection) {
    CloseEventData closeData = connection.closeData;
    connection.log.info('Connection closed with ${closeData} (code: ${closeData.code}, fatal: ${closeData.fatal})');
  }

  /// Removes connection if the close was fatal
  void _removeConnectionIfFatal(AbstractConnection connection) {
    if (connection.closeData.fatal) {
      connection.application.connections.remove(connection.sessionId);
    }
  }
}
