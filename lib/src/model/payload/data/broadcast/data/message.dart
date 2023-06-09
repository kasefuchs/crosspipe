import 'package:freezed_annotation/freezed_annotation.dart';

import 'abstract.dart';

part 'message.freezed.dart';
part 'message.g.dart';

@freezed
class BroadcastMessagePayloadData with _$BroadcastMessagePayloadData implements AbstractBroadcastPayloadData {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory BroadcastMessagePayloadData({
    required Set<String> recipients,
    required dynamic content,
  }) = _BroadcastMessagePayloadData;

  factory BroadcastMessagePayloadData.fromJson(Map<String, dynamic> json) =>
      _$BroadcastMessagePayloadDataFromJson(json);
}
