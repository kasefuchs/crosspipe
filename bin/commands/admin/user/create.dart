import 'package:bcrypt/bcrypt.dart';
import 'package:crosspipe/src/structure/prisma/client.dart';

import 'abstract.dart';

class UserCreateCommand extends AbstractUserCommand {
  final String name = 'create';
  final String description = 'Creates new user';

  UserCreateCommand() {
    argParser
      ..addOption('username', mandatory: true)
      ..addOption('group', mandatory: true)
      ..addOption('password', abbr: 'p');
  }

  (String, String, String?) get credentials {
    String salt = BCrypt.gensalt();
    String? password = argResults?["password"];

    return (
      argResults!["username"],
      argResults!["group"],
      password != null
          ? BCrypt.hashpw(
              password,
              salt,
            )
          : null,
    );
  }

  @override
  Future<void> execute() async {
    final (
      String username,
      String groupName,
      String? passwordHash,
    ) = credentials;

    User user = await application.prisma.user.create(
      data: UserCreateInput(
          name: username,
          group: GroupCreateNestedOneWithoutUsersInput(
            connect: GroupWhereUniqueInput(
              name: groupName,
            ),
          ),
          passwordHash: passwordHash),
    );

    print(
      table
        ..insertRow(
          modelToRow(user),
        ),
    );
  }
}
