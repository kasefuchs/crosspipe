import '../handler/socket/websocket.dart';
import '../model/config/application.dart';
import 'connection/abstract.dart';
import 'http/server.dart';
import 'logger/logger.dart';

class Application {
  final Map<String, AbstractConnection> connections = Map<String, AbstractConnection>();

  final ApplicationConfig config;

  late final Logger log;

  late final HttpServer http;

  late final WebSocketHandler wsHandler;

  Application(this.config) {
    log = Logger(this);
    http = HttpServer(this);
    wsHandler = WebSocketHandler(this);
  }

  void start() {
    http
      ..registerRoutes({
        '/': wsHandler.handleRequest,
      })
      ..bind();
  }
}
