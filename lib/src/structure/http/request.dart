import 'dart:io';

extension BetterHttpRequest on HttpRequest {
  static late String forwardedForHeader;

  String get ip =>
      headers.value(forwardedForHeader) ??
      connectionInfo?.remoteAddress.address ??
      "UNAVAILABLE_IP";
}
