import 'package:freezed_annotation/freezed_annotation.dart';

import '../enum/socket/payload.dart';
import 'data/abstract.dart';

part 'root.freezed.dart';
part 'root.g.dart';

@Freezed(fromJson: false, toJson: true)
class RootPayload with _$RootPayload {
  const factory RootPayload(
    PayloadType type, [
    AbstractPayloadData? data,
  ]) = _RootPayload;

  factory RootPayload.fromJson(Map<String, dynamic> json) {
    PayloadType payloadType = $enumDecode(_$PayloadTypeEnumMap, json['type']);
    AbstractPayloadData? payloadData = json['data'] == null
        ? null
        : AbstractPayloadData.fromJson(
            json['data'],
            payloadType,
          );

    return RootPayload(payloadType, payloadData);
  }
}
