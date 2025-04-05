import 'package:crosspipe/crosspipe.dart';
import 'package:foxid/foxid.dart';

import 'abstract.dart';

class GroupCreateCommand extends AbstractGroupCommand {
  final String name = 'create';
  final String description = 'Creates new group';

  GroupCreateCommand() {
    argParser
      ..addOption('name', mandatory: true)
      ..addMultiOption(
        'permission',
        allowed: GroupPermission.values.map(
          (permission) => permission.originalName!,
        ),
        abbr: 'p',
      )
      ..addFlag('allow_login_if_no_password_set', abbr: 'a');
  }

  @override
  Future<void> execute() async {
    List<String> rawPermissions = argResults!['permission']!;
    Iterable<GroupPermission> permissions = rawPermissions.map(
      (String permissionName) => GroupPermission.values.firstWhere(
        (permission) => permission.originalName == permissionName,
      ),
    );

    Group group = await application.prisma.group.create(
      data: GroupCreateInput(
        id: FOxID.generate().toJson(),
        name: argResults!['name'],
        permissions: permissions,
        allowLoginIfNoPasswordSet:
            argResults!['allow_login_if_no_password_set'],
      ),
    );

    print(
      table
        ..insertRow(
          modelToRow(group),
        ),
    );
  }
}
