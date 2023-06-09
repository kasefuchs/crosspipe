import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../model/converter/uri.dart';
import 'embed/embed.dart';

part 'message.freezed.dart';
part 'message.g.dart';

@freezed
class Message with _$Message {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory Message({
    @UriConverter() Uri? avatarUrl,
    String? content,
    String? username,
    List<Embed>? embeds,
  }) = _Message;

  factory Message.fromJson(Map<String, dynamic> json) => _$MessageFromJson(json);
}
