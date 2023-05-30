import 'dart:io' hide HttpServer;
import 'dart:io' as IO;

import '../../logger/logger.dart';
import '../../../model/config/server/http.dart';
import '../application.dart';
import 'response.dart';

/// A simple HTTP server.
class HttpServer {
  /// The configuration for the HTTP server.
  final HttpServerConfig config;

  /// The logger instance for the HTTP server.
  final Logger log;

  /// A map that stores the routes and their corresponding handler functions.
  final Map<String, Future<void> Function(HttpRequest, HttpResponse)> _routes = {};

  /// Internal HTTP server.
  late final IO.HttpServer _http;

  HttpServer(Application application)
      : config = application.config.server.http,
        log = application.log.child('Server');

  /// Binds server to specified host and port.
  Future<void> bind() async {
    try {
      _http = await IO.HttpServer.bind(config.host, config.port);

      log.info('Server on ${config.host}:${config.port} is now active and ready to accept incoming connections');

      await for (HttpRequest request in _http) await _handle(request);
    } on SocketException {
      log.fatal('Unable to bind ${config.host}:${config.port} because it is already being used by another process');
    }
  }

  /// Registers a route with the specified path and handler function.
  void registerRoute(String path, Future<void> Function(HttpRequest request, HttpResponse response) handler) =>
      _routes.putIfAbsent(path, () => handler);

  /// Registers multiple routes at once.
  void registerRoutes(Map<String, Future<void> Function(HttpRequest request, HttpResponse response)> routes) =>
      _routes.addAll(routes);

  /// Handles incoming HTTP request.
  Future<void> _handle(HttpRequest request) async {
    String routeKey = request.uri.path;

    Future<void> Function(HttpRequest, HttpResponse)? handler = _routes[routeKey];

    (handler ?? _handleNotFound)(request, request.response);
  }

  /// Handles a not found (404) response.
  Future<void> _handleNotFound(HttpRequest request, HttpResponse response) async =>
      await response.status(HttpStatus.notFound);
}
