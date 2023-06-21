import 'dart:async';
import 'dart:io';
import 'package:http/http.dart';
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

    ApplicationConfig applicationConfig =
        ApplicationConfig.fromFile(configFile);

    return _currentApplication = Application(applicationConfig);
  }

  Application get application => _currentApplication ?? _createApplication();

  @override
  Future<void> run() async {
    try {
      await application.prisma.$connect();
      await execute();
    } on ClientException catch (error, trace) {
      application.log.child("Prisma").fatal(error.message, trace);
    } finally {
      await application.prisma.$disconnect();
    }
  }

  Future<void> execute();
}
