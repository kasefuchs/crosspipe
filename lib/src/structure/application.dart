import '../handler/socket/websocket.dart';
import 'connection/abstract.dart';
import 'http/server.dart';
import 'logger/logger.dart';
import '../model/config/application.dart';

/// Represents the application.
class Application {
  /// A map that stores the active connections in the application.
  final Map<String, AbstractConnection> connections = Map<String, AbstractConnection>();

  /// The configuration for the application.
  final ApplicationConfig config;

  /// The logger instance for the application.
  late final Logger log;

  /// The HTTP server instance for the application.
  late final HttpServer http;

  /// The WebSocket handler instance for the application.
  late final WebSocketHandler wsHandler;

  /// Constructs an application instance.
  ///
  /// The [config] parameter is the configuration for the application.
  Application(this.config) {
    log = Logger(this);
    http = HttpServer(this);
    wsHandler = WebSocketHandler(this);
  }

  /// Starts the application.
  void start() {
    http
      ..registerRoutes({
        '/': wsHandler.handleRequest,
      })
      ..bind();
  }
}
