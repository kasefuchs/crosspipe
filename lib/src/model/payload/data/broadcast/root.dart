import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../enum/socket/broadcast.dart';
import '../abstract.dart';
import 'data/abstract.dart';

part 'root.freezed.dart';
part 'root.g.dart';

@Freezed(fromJson: false, toJson: true)
class BroadcastRootPayload with _$BroadcastRootPayload implements AbstractPayloadData {
  const factory BroadcastRootPayload(
    BroadcastType type,
    AbstractBroadcastPayloadData data,
  ) = _BroadcastRootPayload;

  factory BroadcastRootPayload.fromJson(Map<String, dynamic> json) {
    BroadcastType payloadType = $enumDecode(_$BroadcastTypeEnumMap, json['type']);
    AbstractBroadcastPayloadData payloadData = AbstractBroadcastPayloadData.fromJson(json['data'], payloadType);

    return BroadcastRootPayload(payloadType, payloadData);
  }
}
