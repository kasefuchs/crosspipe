import '../../model/payload/data/abstract.dart';
import '../../structure/application/connection/abstract.dart';

/// Mixin used for payload handlers.
mixin PayloadHandler<PayloadData extends AbstractPayloadData?> {
  /// Handles the [PayloadData] payload type.
  void call(AbstractConnection connection, PayloadData data);
}
