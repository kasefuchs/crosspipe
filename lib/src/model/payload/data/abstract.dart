import '../../enum/socket/payload.dart';
import 'broadcast/root.dart';
import 'hello.dart';
import 'identify.dart';
import 'unknown.dart';

abstract class AbstractPayloadData {
  static Map<PayloadType, AbstractPayloadData Function(Map<String, dynamic>)> _payloadDataFactories = {
    PayloadType.Broadcast: BroadcastRootPayload.fromJson,
    PayloadType.Identify: IdentifyPayloadData.fromJson,
    PayloadType.Hello: HelloPayloadData.fromJson,
  };

  AbstractPayloadData();

  factory AbstractPayloadData.fromJson(
    Map<String, dynamic> json,
    PayloadType type,
  ) {
    AbstractPayloadData Function(Map<String, dynamic>)? payloadDataFactory = _payloadDataFactories[type];

    if (payloadDataFactory != null) {
      return payloadDataFactory(json);
    } else {
      return UnknownPayloadData.fromJson(json);
    }
  }

  Map toJson();
}
