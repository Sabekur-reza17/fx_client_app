import 'package:fx_client_app/domain/models/promo_material.dart';
import 'package:fx_client_app/domain/models/signal.dart';
import 'package:fx_client_app/utilities/resource.dart';

abstract class FxClientRepository {
  Stream<Resource<List<Signal>>> getSignals(
    List<String> pairs,
    int fromDate,
    int toDate,
  );

  Stream<Resource<List<PromoMaterial>>> getPromoMaterials();
}
