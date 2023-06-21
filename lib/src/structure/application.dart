import '../handler/socket/websocket.dart';
import '../model/config/application.dart';
import 'connection/abstract.dart';
import 'http/server.dart';
import 'logger/logger.dart';
import 'prisma/client.dart';

class Application {
  final Map<String, AbstractConnection> connections =
      Map<String, AbstractConnection>();

  final ApplicationConfig config;

  late final Logger log;

  late final HttpServer http;

  late final WebSocketHandler wsHandler;

  late final PrismaClient prisma;

  Application(this.config) {
    prisma = PrismaClient(datasources: Datasources(db: config.server.database));
    log = Logger(this);
    http = HttpServer(this);
    wsHandler = WebSocketHandler(this);
  }

  Future<void> start() async {
    http
      ..registerRoutes({
        '/': wsHandler.handleRequest,
      })
      ..bind();
  }
}
