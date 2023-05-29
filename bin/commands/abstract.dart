import 'package:args/command_runner.dart';

/// An abstract command with predefined parameters.
abstract class AbstractCommand extends Command {
  AbstractCommand() {
    argParser
      ..addOption(
        'config',
        abbr: 'c',
        aliases: [
          'config-path',
        ],
        help: 'CrossPipe configuration file path.',
        defaultsTo: 'config.yaml',
      );
  }
}
