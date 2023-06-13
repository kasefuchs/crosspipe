import 'package:crosspipe/src/structure/prisma/client.dart';

import '../../table.dart';

abstract class AbstractGroupCommand extends AbstractTableCommand<Group> {
  AbstractGroupCommand() {
    table
      ..insertColumn(header: "ID")
      ..insertColumn(header: "Name")
      ..insertColumn(header: "Permissions")
      ..insertColumn(header: "Allow login if no password set");
  }

  @override
  List<Object> modelToRow(model) => [
        model.id,
        model.name,
        model.permissions!.map((permission) => permission.originalName).join(", "),
        model.allowLoginIfNoPasswordSet,
      ];
}
