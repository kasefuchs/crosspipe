import 'package:crosspipe/src/structure/prisma/client.dart';

import 'abstract.dart';

class UserListCommand extends AbstractUserCommand {
  final String name = 'list';
  final String description = 'Lists all users that exist';

  @override
  Future<void> execute() async {
    Iterable<User> users = await application.prisma.user.findMany();

    print(
      table
        ..insertRows(
          users.map(modelToRow).toList(),
        ),
    );
  }
}
