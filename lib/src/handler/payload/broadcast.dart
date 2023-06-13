import '../../model/enum/socket/broadcast.dart';
import '../../model/enum/socket/close.dart';
import '../../model/enum/socket/payload.dart';
import '../../model/payload/data/broadcast/root.dart';
import '../../structure/connection/abstract.dart';
import '../../structure/prisma/client.dart';
import 'mixin.dart';

class BroadcastHandler with PayloadHandler<BroadcastRootPayload> {
  static const Map<BroadcastType, GroupPermission> _permissions = {
    BroadcastType.Execute: GroupPermission.broadcastExecute,
    BroadcastType.Message: GroupPermission.broadcastMessage,
  };

  @override
  void call(AbstractConnection connection, BroadcastRootPayload payload) {
    connection.log.debug('Received "${payload.type.name}" broadcast payload with data:', payload.data.toJson());

    GroupPermission? requiredPermission = _permissions[payload.type];
    bool hasAccess = connection.group!.permissions!.contains(requiredPermission);

    if (!hasAccess) return connection.close(CloseEventData.AccessDenied);

    _fetchRecipients(connection, payload.data.recipients).forEach((recipient) {
      connection.log.debug(
        'Broadcasting "${payload.type.name}" payload to connection $recipient with data:',
        payload.data.toJson(),
      );

      recipient.send(
        PayloadType.Broadcast,
        BroadcastRootPayload(
          payload.type,
          payload.data,
        ),
      );
    });
  }

  Iterable<AbstractConnection> _fetchRecipients(AbstractConnection connection, Iterable<String> recipients) {
    Iterable<AbstractConnection> allConnections = connection.application.connections.values;

    return recipients.expand((recipient) => _recipientFilter(allConnections, recipient)).toSet();
  }

  Iterable<AbstractConnection> _recipientFilter(Iterable<AbstractConnection> connections, String recipient) {
    List<String> recipientSplit = recipient.split(':');

    switch (recipientSplit.length) {
      case 1:
        switch (recipient) {
          case '*':
            return connections;
        }
      case 2:
        final [String type, String value] = recipientSplit;

        switch (type) {
          case 'session':
            return connections.where((connection) => connection.sessionId == value);
          case 'user':
            return connections.where((connection) => connection.user?.name == value);
          case 'group':
            return connections.where((connection) => connection.group?.name == value);
          case 'feed':
            return connections.where((connection) => connection.feeds?.contains(value) == true);
        }
    }

    return List<AbstractConnection>.empty();
  }
}
