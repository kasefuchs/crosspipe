import 'package:crosspipe/crosspipe.dart';

import 'abstract.dart';

class UserDeleteCommand extends AbstractUserCommand {
  final String name = 'delete';
  final String description = 'Deletes existing user';

  UserDeleteCommand() {
    argParser
      ..addOption('id')
      ..addOption('username');
  }

  @override
  Future<void> execute() async {
    await application.prisma.user.delete(
      where: UserWhereUniqueInput(
        name: argResults?['username'],
        id: argResults?['id'],
      ),
    );
  }
}
