import 'package:dart_console/dart_console.dart';
import 'package:orm/orm.dart';

import 'abstract.dart';

abstract class AbstractTableCommand<Model extends JsonSerializable>
    extends AbstractCommand {
  final Table table = Table()
    ..borderStyle = BorderStyle.rounded
    ..headerStyle = FontStyle.bold;

  List<Object> modelToRow(Model data);
}
