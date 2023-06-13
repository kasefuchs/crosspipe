import 'package:args/command_runner.dart';

import 'create.dart';
import 'delete.dart';
import 'list.dart';

class UserCommand extends Command {
  final String name = 'user';
  final String description = 'User operations';

  UserCommand() {
    addSubcommand(UserListCommand());
    addSubcommand(UserCreateCommand());
    addSubcommand(UserDeleteCommand());
  }
}
