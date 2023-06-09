import 'package:freezed_annotation/freezed_annotation.dart';

import 'abstract.dart';

part 'unknown.freezed.dart';
part 'unknown.g.dart';

@freezed
class UnknownPayloadData with _$UnknownPayloadData implements AbstractPayloadData {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory UnknownPayloadData() = _UnknownPayloadData;

  factory UnknownPayloadData.fromJson(Map<String, dynamic> json) => _$UnknownPayloadDataFromJson(json);
}
