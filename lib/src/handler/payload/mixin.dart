import '../../model/payload/data/abstract.dart';
import '../../structure/connection/abstract.dart';

mixin PayloadHandler<PayloadData extends AbstractPayloadData?> {
  void call(AbstractConnection connection, PayloadData data);
}
