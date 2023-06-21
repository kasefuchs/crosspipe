import 'dart:convert';
import 'dart:io';

import 'package:http_status_code/http_status_code.dart';

extension BetterHttpResponse on HttpResponse {
  Future<void> json(
    Object json, {
    Map<String, String>? headers,
    int? status,
  }) {
    String serializedJson = jsonEncode(json);

    Map<String, String> contentHeaders = Map<String, String>.from(headers ?? {})
      ..putIfAbsent(
          HttpHeaders.contentTypeHeader, () => ContentType.json.mimeType);

    return send(
      serializedJson,
      status: status,
      headers: contentHeaders,
    );
  }

  Future<void> send(
    Object data, {
    Map<String, String>? headers,
    int? status,
  }) {
    this
      ..headers.forEach(this.headers.set)
      ..statusCode = status ?? HttpStatus.ok
      ..write(data);

    return close();
  }

  Future<void> status(
    int status, [
    String? message,
  ]) =>
      json(
        {
          'code': status,
          'message': message ?? getStatusMessage(status),
        },
        status: status,
      );
}
