import '../../../model/logger/record.dart';
import '../../application.dart';


/// Abstract class representing a logger transport.
abstract class AbstractLoggerTransport<OptionsType> {
  /// Current application.
  final Application application;

  /// Logger transport options.
  late final OptionsType options;

  AbstractLoggerTransport(this.application) {
    options = application.config.logger.options as OptionsType;
  }

  /// Pushes a log [record] to the transport.
  void push(LogRecord record);
}
