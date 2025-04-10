import 'dart:convert';
import 'dart:io';

import '../../model/enum/socket/close.dart';
import '../../model/enum/socket/payload.dart';
import '../../model/payload/data/abstract.dart';
import '../../model/payload/root.dart';
import '../application.dart';
import 'abstract.dart';

class WebSocketConnection extends AbstractConnection<WebSocket> {
  WebSocketConnection(Application application, WebSocket socket)
      : super(application, socket);

  @override
  CloseEventData get closeData =>
      CloseEventData.whereCode(socket.closeCode ?? -1);

  @override
  void send(PayloadType type, [AbstractPayloadData? data]) {
    RootPayload payload = RootPayload(type, data);

    Object json = payload.toJson();
    String encoded = jsonEncode(json);

    log.debug('Sending "${type.name}" payload, with data:', json);

    socket.add(encoded);
  }

  @override
  void close(CloseEventData event) => socket.close(event.code, event.name);
}
