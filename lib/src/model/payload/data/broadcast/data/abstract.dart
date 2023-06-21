import '../../../../enum/socket/broadcast.dart';
import '../../abstract.dart';
import 'execute.dart';
import 'message.dart';

abstract class AbstractBroadcastPayloadData implements AbstractPayloadData {
  static Map<BroadcastType,
          AbstractBroadcastPayloadData Function(Map<String, dynamic>)>
      _broadcastDataFactories = {
    BroadcastType.Message: BroadcastMessagePayloadData.fromJson,
    BroadcastType.Execute: BroadcastExecutePayloadData.fromJson,
  };

  final Set<String> recipients;

  AbstractBroadcastPayloadData({
    required this.recipients,
  });

  factory AbstractBroadcastPayloadData.fromJson(
    Map<String, dynamic> json,
    BroadcastType type,
  ) {
    AbstractBroadcastPayloadData Function(Map<String, dynamic>)?
        payloadDataFactory = _broadcastDataFactories[type];

    if (payloadDataFactory != null) {
      return payloadDataFactory(json);
    } else {
      throw TypeError();
    }
  }

  Map toJson();
}
