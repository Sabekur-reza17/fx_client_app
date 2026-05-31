import 'package:fx_client_app/core/base_view_model.dart';
import 'package:fx_client_app/domain/repositories/fx_client_repository.dart';
import 'package:injectable/injectable.dart';
import '../../utilities/resource.dart';
import 'promo_materials_event.dart';
import 'promo_materials_state.dart';

@injectable
class PromoMaterialsViewModel extends BaseViewModel<PromoMaterialsState> {
  PromoMaterialsViewModel(this.repository);

  final FxClientRepository repository;

  @override
  PromoMaterialsState build() {
    ref.onDispose(() {
      dispose();
    });
    
    _loadPromos();
    return const PromoMaterialsState();
  }

  void onEvent(PromoMaterialsEvent event) {
    switch (event) {
      case RetryLoadPromos():
        _loadPromos();
        break;
    }
  }

  void _loadPromos() {
    bag.add(
      repository.getPromoMaterials().listen((resource) {
        resource.when(
          loading: () {
            if (!ref.mounted) return;
            setState((state) => state.copyWith(isLoading: true, error: null));
          },
          content: (promos) {
            if (!ref.mounted) return;
            setState((state) => state.copyWith(isLoading: false, promos: promos, error: null));
          },
          error: (message) {
            if (!ref.mounted) return;
            setState((state) => state.copyWith(isLoading: false, error: message));
          },
        );
      }),
    );
  }
}
