import 'dart:async';

import '../../../utility/id.dart';
import '../../logger/logger.dart';
import '../../../model/config/security/group.dart';
import '../../../model/config/security/user/user.dart';
import '../../../model/enum/socket/close.dart';
import '../../../model/enum/socket/payload.dart';
import '../../../model/payload/data/abstract.dart';
import '../application.dart';

/// Represents an abstract connection to a stream of data.
abstract class AbstractConnection<StreamType extends Stream> {
  /// Reference to the application instance.
  final Application application;

  /// The underlying data stream.
  final StreamType socket;

  /// Logger instance for logging connection events.
  late final Logger log;

  /// The ID of the connection session.
  late final String sessionId;

  /// Timer for heartbeat timeout.

  Timer? heartbeatTimeout;

  /// Timer for identification timeout.
  Timer? identifyTimeout;

  /// Set of feeds associated with the connection.
  Set<String>? feeds;

  /// User configuration associated with the connection.

  UserConfig? user;

  /// Group configuration associated with the connection.
  GroupConfig? group;

  /// Flag indicating if connection is identified.
  bool identified = false;

  AbstractConnection(this.application, this.socket) {
    sessionId = generateRandomId(
      application.config.security.authentication.sessionIdLength,
      application.connections.keys,
    );
    log = application.log.child('Session $sessionId');
  }

  /// Resets the heartbeat timeout.
  void resetHeartbeatTimeout() {
    heartbeatTimeout?.cancel();
    heartbeatTimeout = Timer(
      application.config.security.authentication.heartbeatTimeout,
          () => close(CloseEventData.SessionTimedOut),
    );
  }

  /// Sets the identification timeout.
  void setIdentifyTimeout() {
    identifyTimeout = Timer(
      application.config.security.authentication.identifyTimeout,
          () => close(CloseEventData.SessionTimedOut),
    );
  }

  /// Cancels all active timeouts.
  void cancelTimeouts() {
    heartbeatTimeout?.cancel();
    identifyTimeout?.cancel();
  }

  /// Sends a payload over the connection.
  void send(PayloadType type, [AbstractPayloadData? data]);

  /// Closes the connection with the specified event data.
  void close(CloseEventData event);

  /// Gets the close event data for the connection.
  CloseEventData get closeData;

  @override
  String toString() => sessionId;
}
