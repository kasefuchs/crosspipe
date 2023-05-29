import 'dart:io';

import 'package:crosspipe/src/handler/socket/abstract.dart';

import '../../structure/application/connection/abstract.dart';
import '../../structure/application/connection/websocket.dart';
import '../../structure/application/http/response.dart';

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
