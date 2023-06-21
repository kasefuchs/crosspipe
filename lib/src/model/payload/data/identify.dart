import 'package:freezed_annotation/freezed_annotation.dart';

import 'abstract.dart';

part 'identify.freezed.dart';
part 'identify.g.dart';

@freezed
class IdentifyPayloadData
    with _$IdentifyPayloadData
    implements AbstractPayloadData {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory IdentifyPayloadData({
    required String login,
    String? password,
    Set<String>? feeds,
  }) = _IdentifyPayloadData;

  factory IdentifyPayloadData.fromJson(Map<String, dynamic> json) =>
      _$IdentifyPayloadDataFromJson(json);
}
