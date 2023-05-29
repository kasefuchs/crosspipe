import 'package:json_annotation/json_annotation.dart';

@JsonEnum(valueField: 'code')
enum CloseEventData {
  // WebSocket Internal
  _Normal(1000, name: 'CLOSE_NORMAL', fatal: true),
  _GoingAway(1001, name: 'CLIENT_GOING_AWAY', fatal: true),
  _ProtocolError(1002, name: 'CLOSE_PROTOCOL_ERROR', fatal: true),
  _Unsupported(1003, name: 'CLOSE_UNSUPPORTED', fatal: true),
  _NoStatus(1005, name: 'CLOSED_NO_STATUS', fatal: true),
  _Abnormal(1006, name: 'CLOSE_ABNORMAL', fatal: true),
  _UnsupportedPayload(1007, name: 'UNSUPPORTED_PAYLOAD', fatal: true),
  _PolicyViolation(1008, name: 'POLICY_VIOLATION', fatal: true),
  _CloseTooLarge(1009, name: 'CLOSE_TOO_LARGE', fatal: true),
  _MandatoryExtension(1010, name: 'MANDATORY_EXTENSION', fatal: true),
  _ServerError(1011, name: 'SERVER_ERROR', fatal: true),
  _ServiceRestart(1012, name: 'SERVICE_RESTART', fatal: true),
  _TryAgainLater(1013, name: 'TRY_AGAIN_LATER', fatal: true),
  _BadGateway(1014, name: 'BAD_GATEWAY', fatal: true),
  _TlsHandshakeFail(1015, name: 'TLS_HANDSHAKE_FAIL', fatal: true),

  // CrossPipe Custom
  UnknownCloseCode(-1, name: 'UNKNOWN_CLOSE_CODE', fatal: true),
  UnknownError(4000, name: 'UNKNOWN_ERROR', fatal: true),
  InvalidPayload(4001, name: 'INVALID_PAYLOAD', fatal: true),
  DecodeError(4002, name: 'DECODE_ERROR', fatal: true),
  NotAuthenticated(4003, name: 'NOT_AUTHENTICATED', fatal: true),
  AuthenticationFailed(4004, name: 'AUTHENTICATION_FAILED', fatal: true),
  AlreadyAuthenticated(4005, name: 'ALREADY_AUTHENTICATED', fatal: true),
  InvalidSession(4006, name: 'INVALID_SESSION', fatal: true),
  InvalidResume(4007, name: 'INVALID_RESUME', fatal: true),
  RateLimited(4008, name: 'RATE_LIMITED', fatal: true),
  SessionTimedOut(4009, name: 'SESSION_TIMED_OUT', fatal: true),
  AccessDenied(4010, name: 'ACCESS_DENIED', fatal: true),
  Meowed(4999, name: 'MEOW', fatal: true);

  final int code;
  final bool fatal;
  final String name;

  const CloseEventData(
    this.code, {
    required this.fatal,
    required this.name,
  });

  @override
  String toString() => name;

  static CloseEventData whereCode(int code) => CloseEventData.values.firstWhere(
        (event) => event.code == code,
        orElse: () => CloseEventData.UnknownCloseCode,
      );
}
