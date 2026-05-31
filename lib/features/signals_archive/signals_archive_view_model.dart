import 'package:fx_client_app/core/base_view_model.dart';
import 'package:fx_client_app/domain/repositories/fx_client_repository.dart';
import 'package:injectable/injectable.dart';
import '../../utilities/resource.dart';
import 'signals_archive_event.dart';
import 'signals_archive_state.dart';

@injectable
class SignalsArchiveViewModel extends BaseViewModel<SignalsArchiveState> {
  SignalsArchiveViewModel(this.repository);

  final FxClientRepository repository;

  @override
  SignalsArchiveState build() {
    ref.onDispose(() {
      dispose();
    });
    
    // Default 30 days
    final toDate = DateTime.now();
    final fromDate = toDate.subtract(const Duration(days: 30));
    
    Future.microtask(() {
      setState((state) => state.copyWith(
        startDate: fromDate,
        endDate: toDate,
        selectedPairs: ['EURUSD', 'GBPUSD'],
      ));
      _loadSignals();
    });

    return const SignalsArchiveState();
  }

  void onEvent(SignalsArchiveEvent event) {
    switch (event) {
      case RetryLoadSignals():
        _loadSignals();
        break;
      case UpdateFilter():
        setState((state) => state.copyWith(
          selectedPairs: event.selectedPairs ?? state.selectedPairs,
          startDate: event.startDate ?? state.startDate,
          endDate: event.endDate ?? state.endDate,
        ));
        _loadSignals();
        break;
    }
  }

  void _loadSignals() {
    if (state.startDate == null || state.endDate == null || state.selectedPairs.isEmpty) {
       return;
    }

    final fromUnix = (state.startDate!.millisecondsSinceEpoch / 1000).round();
    final toUnix = (state.endDate!.millisecondsSinceEpoch / 1000).round();

    bag.add(
      repository.getSignals(state.selectedPairs, fromUnix, toUnix).listen((resource) {
        resource.when(
          loading: () {
            if (!ref.mounted) return;
            setState((state) => state.copyWith(isLoading: true, error: null));
          },
          content: (signals) {
            if (!ref.mounted) return;
            setState((state) => state.copyWith(isLoading: false, signals: signals, error: null));
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
