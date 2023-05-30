import 'package:args/command_runner.dart';

import 'commands/start.dart';

void main(List<String> arguments) {
  CommandRunner runner = CommandRunner(
    'crosspipe',
    'An efficient IPC server that enables seamless and secure communication between processes in web applications, enhancing performance and simplifying development.',
  )..addCommand(
      StartCommand(),
    );

  runner.run(arguments).catchError(print);
}
