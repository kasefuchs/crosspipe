import 'dart:io';

import 'package:args/command_runner.dart';

import 'commands/admin/admin.dart';
import 'commands/start.dart';

void main(List<String> arguments) async {
  CommandRunner runner = CommandRunner(
    'crosspipe',
    'An efficient IPC server that enables seamless and secure communication between processes in web applications, enhancing performance and simplifying development.',
  )
    ..addCommand(StartCommand())
    ..addCommand(AdminCommand());

  runner.run(arguments);
  //    .catchError(
  //  (error) {
  //    if (error is! UsageException) throw error;
  //    print(error);
  //    exit(64);
  //  },
  //);
}
