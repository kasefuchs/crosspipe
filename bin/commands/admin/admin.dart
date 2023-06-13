import 'package:args/command_runner.dart';

import 'group/group.dart';
import 'user/user.dart';

class AdminCommand extends Command {
  final String name = 'admin';
  final String description = 'Admin operations';

  AdminCommand() {
    addSubcommand(UserCommand());
    addSubcommand(GroupCommand());
  }
}
