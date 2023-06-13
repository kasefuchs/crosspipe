import 'package:crosspipe/src/structure/prisma/client.dart';

import 'abstract.dart';

class GroupDeleteCommand extends AbstractGroupCommand {
  final String name = 'delete';
  final String description = 'Deletes existing group';

  GroupDeleteCommand() {
    argParser
      ..addOption('id')
      ..addOption('name');
  }

  @override
  Future<void> execute() async {
    await application.prisma.group.delete(
      where: GroupWhereUniqueInput(
        name: argResults?['name'],
        id: argResults?['id'],
      ),
    );
  }
}
