import 'dart:io';

import 'package:crosspipe/crosspipe.dart';

import 'abstract.dart';

/// The command that starts the server
class StartCommand extends AbstractCommand {
  final String name = 'start';
  final String description = 'Starts the server';

  @override
  void run() {
    File configFile = File(argResults!['config']);

    ApplicationConfig applicationConfig = ApplicationConfig.fromFile(configFile);

    Application(applicationConfig).start();
  }
}
