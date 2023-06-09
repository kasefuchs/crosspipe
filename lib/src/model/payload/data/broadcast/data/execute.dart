import 'package:freezed_annotation/freezed_annotation.dart';

import 'abstract.dart';

part 'execute.freezed.dart';
part 'execute.g.dart';

@freezed
class BroadcastExecutePayloadData with _$BroadcastExecutePayloadData implements AbstractBroadcastPayloadData {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory BroadcastExecutePayloadData({
    required Set<String> recipients,
    required String name,
    required List<dynamic> arguments,
  }) = _BroadcastExecutePayloadData;

  factory BroadcastExecutePayloadData.fromJson(Map<String, dynamic> json) =>
      _$BroadcastExecutePayloadDataFromJson(json);
}
