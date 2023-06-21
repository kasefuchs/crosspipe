import 'dart:convert';

import '../../model/enum/socket/close.dart';
import '../../model/enum/socket/payload.dart';
import '../../model/payload/root.dart';
import '../../structure/connection/abstract.dart';
import '../payload/broadcast.dart';
import '../payload/heartbeat.dart';
import '../payload/identify.dart';
import '../payload/mixin.dart';

class OnDataHandler {
  static const Set<PayloadType> _unauthenticatedAllowedHandlerTypes = {
    PayloadType.Identify,
    PayloadType.Heartbeat,
  };

  static final Map<PayloadType, PayloadHandler> _payloadHandlers = {
    PayloadType.Identify: IdentifyHandler(),
    PayloadType.Heartbeat: HeartbeatHandler(),
    PayloadType.Broadcast: BroadcastHandler(),
  };

  void call(AbstractConnection connection, String data) {
    try {
      Map<String, dynamic> payloadData = jsonDecode(data);
      RootPayload payload = RootPayload.fromJson(payloadData);

      _handlePayload(connection, payload);
    } on FormatException {
      connection.close(CloseEventData.DecodeError);
    } on TypeError {
      connection.close(CloseEventData.InvalidPayload);
    } catch (error, trace) {
      _handleUnknownError(connection, error, trace);
    }
  }

  void _handlePayload(AbstractConnection connection, RootPayload payload) {
    PayloadHandler? handler = _payloadHandlers[payload.type];

    connection.log.debug('Received "${payload.type.name}" payload, with data:',
        payload.toJson());

    if (_isUserUnauthenticatedForPayloadType(connection, payload)) {
      connection.close(CloseEventData.NotAuthenticated);
    } else if (handler != null) {
      handler(connection, payload.data);
    } else {
      connection.log.debug('Received unknown payload type');
      connection.close(CloseEventData.InvalidPayload);
    }
  }

  bool _isUserUnauthenticatedForPayloadType(
          AbstractConnection connection, RootPayload payload) =>
      connection.user == null &&
      !_unauthenticatedAllowedHandlerTypes.contains(payload.type);

  void _handleUnknownError(
      AbstractConnection connection, Object error, StackTrace trace) {
    connection.log.error(
        'Unknown error: ${error.runtimeType} ${error}', trace.toString());
    connection.close(CloseEventData.UnknownError);
  }
}
