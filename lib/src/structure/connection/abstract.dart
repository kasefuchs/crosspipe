import 'dart:async';

import '../../model/config/security/group.dart';
import '../../model/config/security/user/user.dart';
import '../../model/enum/socket/close.dart';
import '../../model/enum/socket/payload.dart';
import '../../model/payload/data/abstract.dart';
import '../../utility/id.dart';
import '../application.dart';
import '../logger/logger.dart';

abstract class AbstractConnection<StreamType extends Stream> {
  final Application application;

  final StreamType socket;

  late final Logger log;

  late final String sessionId;

  Timer? heartbeatTimeout;

  Timer? identifyTimeout;

  Set<String>? feeds;

  UserConfig? user;

  GroupConfig? group;

  bool identified = false;

  AbstractConnection(this.application, this.socket) {
    sessionId = generateRandomId(
      application.config.security.authentication.sessionIdLength,
      application.connections.keys,
    );
    log = application.log.child('Session $sessionId');
  }

  void resetHeartbeatTimeout() {
    heartbeatTimeout?.cancel();
    heartbeatTimeout = Timer(
      application.config.security.authentication.heartbeatTimeout,
          () => close(CloseEventData.SessionTimedOut),
    );
  }

  void setIdentifyTimeout() {
    identifyTimeout = Timer(
      application.config.security.authentication.identifyTimeout,
          () => close(CloseEventData.SessionTimedOut),
    );
  }

  void cancelTimeouts() {
    heartbeatTimeout?.cancel();
    identifyTimeout?.cancel();
  }

  void send(PayloadType type, [AbstractPayloadData? data]);

  void close(CloseEventData event);

  CloseEventData get closeData;

  @override
  String toString() => sessionId;
}
