import 'dart:io' hide HttpServer;
import 'dart:io' as IO;

import '../../model/config/server/http.dart';
import '../application.dart';
import '../logger/logger.dart';
import 'request.dart';
import 'response.dart';

class HttpServer {
  late final HttpServerConfig config;

  late final Logger log;

  final Map<String, Future<void> Function(HttpRequest, HttpResponse)> _routes =
      {};

  late final IO.HttpServer _http;

  HttpServer(Application application) {
    config = application.config.server.http;
    log = application.log.child('HTTP Server');

    BetterHttpRequest.forwardedForHeader = config.forwardedForHeader;
  }

  Future<void> bind() async {
    try {
      _http = await IO.HttpServer.bind(config.host, config.port);

      log.info(
          'HTTP Server on ${config.host}:${config.port} is now active and ready to accept incoming connections');

      await for (HttpRequest request in _http) await _handle(request);
    } on SocketException {
      log.fatal(
          'Unable to bind ${config.host}:${config.port} because it is already being used by another process');
    }
  }

  void registerRoute(
          String path,
          Future<void> Function(HttpRequest request, HttpResponse response)
              handler) =>
      _routes.putIfAbsent(path, () => handler);

  void registerRoutes(
          Map<
                  String,
                  Future<void> Function(
                      HttpRequest request, HttpResponse response)>
              routes) =>
      _routes.addAll(routes);

  Future<void> _handle(HttpRequest request) async {
    String routeKey = request.uri.path;

    Future<void> Function(HttpRequest, HttpResponse)? handler =
        _routes[routeKey];

    log.info('${request.ip} ${request.method} $routeKey');

    (handler ?? _handleNotFound)(request, request.response);
  }

  Future<void> _handleNotFound(
          HttpRequest request, HttpResponse response) async =>
      await response.status(HttpStatus.notFound);
}
