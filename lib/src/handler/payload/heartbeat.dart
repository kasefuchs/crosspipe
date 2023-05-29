import '../../structure/application/connection/abstract.dart';
import '../../structure/model/enum/socket/payload.dart';
import 'mixin.dart';

/// Handles the [Heartbeat] payload type.
class HeartbeatHandler with PayloadHandler<Null> {
  /// Handles the [Heartbeat] payload type.
  @override
  void call(AbstractConnection connection, Null data) {
    connection.resetHeartbeatTimeout();
    connection.send(PayloadType.Heartbeat);
  }
}
