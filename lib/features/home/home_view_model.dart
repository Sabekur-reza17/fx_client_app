import 'package:fx_client_app/core/base_view_model.dart';
import 'package:fx_client_app/domain/repositories/home_repository.dart';
import 'package:fx_client_app/utilities/resource.dart';
import 'package:injectable/injectable.dart';
import 'home_event.dart';
import 'home_state.dart';

@injectable
class HomeViewModel extends BaseViewModel<HomeState> {
  HomeViewModel(this.repository);

  final HomeRepository repository;

  @override
  HomeState build() {
    ref.onDispose(() {
      dispose();
    });
    
    _loadStats();
    return const HomeState();
  }

  void onEvent(HomeEvent event) {
    switch (event) {
      case RetryLoadStats():
        _loadStats();
        break;
    }
  }

  void _loadStats() {
    bag.add(
      repository.getStats().listen((resource) {
        resource.when(
          loading: () {
            if (!ref.mounted) return;
            setState((state) => state.copyWith(isLoading: true, error: null));
          },
          content: (stats) {
            if (!ref.mounted) return;
            setState((state) => state.copyWith(isLoading: false, stats: stats, error: null));
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

