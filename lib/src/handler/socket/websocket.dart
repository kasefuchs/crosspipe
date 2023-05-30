import 'dart:io';

import '../../structure/connection/abstract.dart';
import '../../structure/connection/websocket.dart';
import '../../structure/http/response.dart';
import 'abstract.dart';

class WebSocketHandler extends AbstractSocketHandler {
  WebSocketHandler(super.application);

  /// Handles and upgrades HTTP request to WebSocket connection.
  Future<void> handleRequest(HttpRequest request, HttpResponse response) async {
    final bool upgradable = WebSocketTransformer.isUpgradeRequest(request);

    if (!upgradable) {
      return await response.status(
        HttpStatus.badRequest,
        'Invalid WebSocket upgrade request',
      );
    }

    WebSocket socket = await WebSocketTransformer.upgrade(
      request,
      compression: CompressionOptions.compressionOff,
    );

    AbstractConnection connection = WebSocketConnection(application, socket);

    socket.listen(
      (data) => onData(connection, data),
      onDone: () => onClose(connection),
      onError: (Object error) => onClose(connection),
    );

    application.connections.putIfAbsent(
      connection.sessionId,
      () => connection,
    );

    onConnect(connection);
  }
}
