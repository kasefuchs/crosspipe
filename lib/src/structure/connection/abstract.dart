import 'dart:async';
import 'dart:math';

import 'package:foxid/foxid.dart';

import '../../model/enum/socket/close.dart';
import '../../model/enum/socket/payload.dart';
import '../../model/payload/data/abstract.dart';
import '../application.dart';
import '../logger/logger.dart';
import '../prisma/client.dart';

abstract class AbstractConnection<StreamType extends Stream> {
  final Application application;

  final StreamType socket;

  late final Logger log;

  late final String sessionId;

  Timer? heartbeatTimeout;

  Timer? identifyTimeout;

  Set<String>? feeds;

  User? user;

  Group? group;

  bool identified = false;

  AbstractConnection(this.application, this.socket) {
    sessionId = FOxID.generate().toJson();
    log = application.log.child('Session $sessionId');
  }

  void resetHeartbeatTimeout() {
    heartbeatTimeout?.cancel();
    heartbeatTimeout = Timer(
      application.config.security.heartbeatTimeout,
      () => close(CloseEventData.SessionTimedOut),
    );
  }

  void setIdentifyTimeout() {
    identifyTimeout = Timer(
      application.config.security.identifyTimeout,
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
