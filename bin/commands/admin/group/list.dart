import 'package:crosspipe/src/structure/prisma/client.dart';

import 'abstract.dart';

class GroupListCommand extends AbstractGroupCommand {
  final String name = 'list';
  final String description = 'Lists all groups that exist';

  @override
  Future<void>  execute() async {
    Iterable<Group> groups = await application.prisma.group.findMany();

    print(
      table
        ..insertRows(
          groups.map(modelToRow).toList(),
        ),
    );
  }
}
