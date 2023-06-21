import '../../../../../structure/application.dart';
import '../../../../../structure/logger/transport/abstract.dart';
import '../../../../../structure/logger/transport/none.dart';
import 'abstract.dart';

class NoneLoggerTransportOptions implements AbstractLoggerTransportOptions {
  NoneLoggerTransportOptions();

  @override
  AbstractLoggerTransport get(Application application) =>
      NoneLoggerTransport(application);

  @override
  Map toJson() => {};
}
