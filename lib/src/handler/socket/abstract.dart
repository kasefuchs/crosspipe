import '../../structure/application.dart';
import '../event/close.dart';
import '../event/connect.dart';
import '../event/data.dart';

abstract class AbstractSocketHandler {
  final Application application;

  final OnDataHandler onData = OnDataHandler();

  final OnCloseHandler onClose = OnCloseHandler();

  final OnConnectHandler onConnect = OnConnectHandler();

  AbstractSocketHandler(this.application);
}
