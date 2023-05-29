import '../../../../../application/application.dart';
import '../../../../../logger/transport/abstract.dart';
import '../../../../../logger/transport/none.dart';
import 'abstract.dart';

/// Options for the none logger transport.
class NoneLoggerTransportOptions implements AbstractLoggerTransportOptions {
  NoneLoggerTransportOptions();

  /// Returns an instance of NoneLoggerTransport based on the specified application.
  @override
  AbstractLoggerTransport get(Application application) => NoneLoggerTransport(application);

  /// Converts the options to JSON format.
  @override
  Map toJson() => {};
}
