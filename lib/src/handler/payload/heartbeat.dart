import '../../model/enum/socket/payload.dart';
import '../../structure/connection/abstract.dart';
import 'mixin.dart';

class HeartbeatHandler with PayloadHandler<Null> {
  @override
  void call(AbstractConnection connection, Null data) {
    connection.resetHeartbeatTimeout();
    connection.send(PayloadType.Heartbeat);
  }
}
