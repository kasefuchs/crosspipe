import 'package:args/command_runner.dart';

import 'commands/start.dart';

void main(List<String> arguments) {
  CommandRunner runner = CommandRunner('crosspipe', 'Yet another IPC server')
    ..addCommand(
      StartCommand(),
    );

  runner.run(arguments).catchError(print);
}
