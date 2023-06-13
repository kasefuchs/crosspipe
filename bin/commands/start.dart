import 'abstract.dart';

class StartCommand extends AbstractCommand {
  final String name = 'start';
  final String description = 'Starts the server';

  @override
  Future<void> execute() => application.start();
}
