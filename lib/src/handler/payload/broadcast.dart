import '../../model/enum/socket/broadcast.dart';
import '../../model/enum/socket/close.dart';
import '../../model/enum/socket/payload.dart';
import '../../model/enum/socket/permission.dart';
import '../../model/payload/data/broadcast/root.dart';
import '../../structure/application/connection/abstract.dart';
import 'mixin.dart';

/// Handles the [Broadcast] payload type.
class BroadcastHandler with PayloadHandler<BroadcastRootPayload> {
  /// Map containing broadcast payload types related to their permissions.
  static const Map<BroadcastType, Permission> _permissions = {
    BroadcastType.Execute: Permission.BroadcastExecute,
    BroadcastType.Message: Permission.BroadcastMessage,
  };

  /// Handles the [Broadcast] payload type.
  @override
  void call(AbstractConnection connection, BroadcastRootPayload payload) {
    connection.log.debug('Received "${payload.type.name}" broadcast payload with data:', payload.data.toJson());

    Permission? requiredPermission = _permissions[payload.type];
    bool hasAccess = connection.group!.permissions.contains(requiredPermission);

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

  /// Gets a list of connections based on a list of recipients.
  Iterable<AbstractConnection> _fetchRecipients(AbstractConnection connection, Iterable<String> recipients) {
    Iterable<AbstractConnection> allConnections = connection.application.connections.values;

    return recipients.expand((recipient) => _recipientFilter(allConnections, recipient)).toSet();
  }

  /// Filters connections from recipient string.
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
            return connections.where((connection) => connection.user?.credentials.login == value);
          case 'group':
            return connections.where((connection) => connection.group?.name == value);
          case 'feed':
            return connections.where((connection) => connection.feeds?.contains(value) == true);
        }
    }

    return List<AbstractConnection>.empty();
  }
}
