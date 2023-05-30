import '../../../model/logger/record.dart';
import '../../application.dart';

abstract class AbstractLoggerTransport<OptionsType> {
  final Application application;

  late final OptionsType options;

  AbstractLoggerTransport(this.application) {
    options = application.config.logger.options as OptionsType;
  }

  void push(LogRecord record);
}
