import '../../model/config/logger/options/transport/none.dart';
import '../../model/logger/record.dart';
import 'abstract.dart';

/// A logger transport that performs no logging.
class NoneLoggerTransport extends AbstractLoggerTransport<NoneLoggerTransportOptions> {
  NoneLoggerTransport(super.application);

  @override
  void push(LogRecord record) {
    // Do nothing, as this transport performs no logging.
  }
}
