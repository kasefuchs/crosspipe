import 'package:freezed_annotation/freezed_annotation.dart';

import '../../converter/duration.dart';
import 'abstract.dart';

part 'hello.freezed.dart';
part 'hello.g.dart';

@freezed
class HelloPayloadData with _$HelloPayloadData implements AbstractPayloadData {
  const factory HelloPayloadData({
    @DurationConverter() required Duration heartbeatTimeout,
    @DurationConverter() required Duration identifyTimeout,
  }) = _HelloPayloadData;

  factory HelloPayloadData.fromJson(Map<String, dynamic> json) => _$HelloPayloadDataFromJson(json);
}
