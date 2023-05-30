import '../../structure/application.dart';
import '../event/close.dart';
import '../event/connect.dart';
import '../event/data.dart';

abstract class AbstractSocketHandler {
  /// Application instance.
  final Application application;

  /// Connection data handler.
  final OnDataHandler onData = OnDataHandler();

  /// Connection close handler.
  final OnCloseHandler onClose = OnCloseHandler();

  /// Connection open handler.
  final OnConnectHandler onConnect = OnConnectHandler();

  AbstractSocketHandler(this.application);
}
