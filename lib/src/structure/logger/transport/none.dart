import '../../../model/config/logger/options/transport/none.dart';
import '../../../model/logger/record.dart';
import 'abstract.dart';

class NoneLoggerTransport extends AbstractLoggerTransport<NoneLoggerTransportOptions> {
  NoneLoggerTransport(super.application);

  @override
  void push(LogRecord record) {}
}
