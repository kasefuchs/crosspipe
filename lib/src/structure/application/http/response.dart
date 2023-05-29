import 'dart:convert';
import 'dart:io';

import 'package:http_status_code/http_status_code.dart';

/// Extension on [HttpResponse] to provide better response handling.
extension BetterHttpResponse on HttpResponse {
  /// Sends a JSON response with the specified JSON object.
  Future<void> json(
    Object json, {
    Map<String, String>? headers,
    int? status,
  }) {
    String serializedJson = jsonEncode(json);

    Map<String, String> contentHeaders = Map<String, String>.from(headers ?? {})
      ..putIfAbsent(HttpHeaders.contentTypeHeader, () => ContentType.json.mimeType);

    return send(
      serializedJson,
      status: status,
      headers: contentHeaders,
    );
  }

  /// Sends a response with the specified data.
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

  /// Sends a response with the specified status code.
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
