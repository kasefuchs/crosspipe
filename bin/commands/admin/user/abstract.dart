import 'package:crosspipe/src/structure/prisma/client.dart';

import '../../table.dart';

abstract class AbstractUserCommand extends AbstractTableCommand<User> {
  AbstractUserCommand() {
    table
      ..insertColumn(header: 'ID')
      ..insertColumn(header: 'Username')
      ..insertColumn(header: 'Group ID')
      ..insertColumn(header: 'Password hash');
  }

  @override
  List<Object> modelToRow(User model) => [
    model.id,
    model.name,
    model.groupId,
    model.passwordHash.toString(),
  ];
}
