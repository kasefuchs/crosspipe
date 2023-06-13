import 'dart:async';
import 'dart:io';

import 'package:args/command_runner.dart';
import 'package:crosspipe/crosspipe.dart';

abstract class AbstractCommand extends Command {
  AbstractCommand() {
    argParser
      ..addOption(
        'config',
        abbr: 'c',
        aliases: [
          'config-path',
        ],
        help: 'configuration file path.',
        defaultsTo: 'config.yaml',
      );
  }

  Application? _currentApplication;

  Application _createApplication() {
    File configFile = File(argResults!['config']);

    ApplicationConfig applicationConfig = ApplicationConfig.fromFile(configFile);

    return _currentApplication = Application(applicationConfig);
  }

  Application get application => _currentApplication ?? _createApplication();

  @override
  Future<void> run() async {
    try {
      await execute();
    } finally {
      await application.prisma.$disconnect();
    }
  }

  Future<void> execute();
}
