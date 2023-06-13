import 'package:args/command_runner.dart';

import 'create.dart';
import 'delete.dart';
import 'list.dart';

class GroupCommand extends Command {
  final String name = 'group';
  final String description = 'Group operations';

  GroupCommand() {
    addSubcommand(GroupListCommand());
    addSubcommand(GroupCreateCommand());
    addSubcommand(GroupDeleteCommand());
  }
}
