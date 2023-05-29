import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../model/converter/uri.dart';

part 'footer.freezed.dart';
part 'footer.g.dart';

@freezed
class EmbedFooter with _$EmbedFooter {
  const factory EmbedFooter({
    required String text,
    @UriConverter() Uri? iconUrl,
    @UriConverter() Uri? proxyIconUrl,
  }) = _EmbedFooter;

  factory EmbedFooter.fromJson(Map<String, dynamic> json) => _$EmbedFooterFromJson(json);
}
