import 'dart:io';

import '../../model/enum/logger/level.dart';
import '../../model/logger/record.dart';
import '../application.dart';
import 'transport/abstract.dart';

class Logger {
  /// The application instance associated with the logger.
  final Application application;

  /// The logger transport used for log message output.
  late final AbstractLoggerTransport transport;

  /// The list of tags associated with the logger.
  final List<String> _tags;

  /// Constructs a `Logger` instance.
  ///
  /// The [application] parameter is the application instance.
  /// The [tags] parameter is a list of tags associated with the logger (optional).
  Logger(
    this.application, {
    List<String>? tags,
  })  : this._tags = tags ?? List<String>.empty(growable: true),
        transport = application.config.logger.options.get(application);

  /// Writes a log message to the logger transport.
  ///
  /// The [level] parameter is the log level.
  /// The [message] parameter is the log message.
  /// The [object] parameter is an additional object associated with the log message (optional).
  void call(LogLevel level, String message, [Object? object]) {
    if (application.config.logger.level.index <= level.index) {
      transport.push(
        LogRecord(
          level: level,
          message: message,
          object: object,
          tags: _tags,
          time: DateTime.now(),
          pid: pid,
        ),
      );
    }
  }

  /// Creates a child logger with an additional tag.
  ///
  /// The [tag] parameter is the additional tag for the child logger.
  /// Returns a new `Logger` instance with the additional tag.
  Logger child(String tag) => Logger(application, tags: [..._tags, tag]);

  /// Writes a debug-level log message to the logger.
  ///
  /// The [message] parameter is the log message.
  /// The [object] parameter is an additional object associated with the log message (optional).
  void debug(String message, [Object? object]) => call(LogLevel.Debug, message, object);

  /// Writes a error-level log message to the logger.
  ///
  /// The [message] parameter is the log message.
  /// The [object] parameter is an additional object associated with the log message (optional).
  void error(String message, [Object? object]) => call(LogLevel.Error, message, object);

  /// Writes a fatal-level log message to the logger.
  ///
  /// The [message] parameter is the log message.
  /// The [object] parameter is an additional object associated with the log message (optional).
  void fatal(String message, [Object? object]) => call(LogLevel.Fatal, message, object);

  /// Writes a info-level log message to the logger.
  ///
  /// The [message] parameter is the log message.
  /// The [object] parameter is an additional object associated with the log message (optional).
  void info(String message, [Object? object]) => call(LogLevel.Info, message, object);

  /// Writes a trace-level log message to the logger.
  ///
  /// The [message] parameter is the log message.
  /// The [object] parameter is an additional object associated with the log message (optional).
  void trace(String message, [Object? object]) => call(LogLevel.Trace, message, object);

  /// Writes a warn-level log message to the logger.
  ///
  /// The [message] parameter is the log message.
  /// The [object] parameter is an additional object associated with the log message (optional).
  void warn(String message, [Object? object]) => call(LogLevel.Warn, message, object);
}
