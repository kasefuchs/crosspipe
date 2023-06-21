import 'package:freezed_annotation/freezed_annotation.dart';

import 'abstract.dart';

part 'ready.freezed.dart';
part 'ready.g.dart';

@freezed
class ReadyPayloadData with _$ReadyPayloadData implements AbstractPayloadData {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory ReadyPayloadData({
    required String sessionId,
  }) = _ReadyPayloadData;

  factory ReadyPayloadData.fromJson(Map<String, dynamic> json) =>
      _$ReadyPayloadDataFromJson(json);
}
