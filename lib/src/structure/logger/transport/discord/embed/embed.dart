import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../model/config/logger/options/color/data.dart';
import '../../../../../model/converter/color.dart';
import '../../../../../model/converter/datetime/iso8601.dart';
import '../../../../../model/converter/uri.dart';
import 'field.dart';
import 'footer.dart';

part 'embed.freezed.dart';
part 'embed.g.dart';

@freezed
class Embed with _$Embed {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory Embed({
    String? title,
    String? description,
    List<EmbedField>? fields,
    EmbedFooter? footer,
    @UriConverter() Uri? url,
    @DatetimeIso8601Converter() DateTime? timestamp,
    @ColorDataConverter() ColorData? color,
  }) = _Embed;

  factory Embed.fromJson(Map<String, dynamic> json) => _$EmbedFromJson(json);
}
