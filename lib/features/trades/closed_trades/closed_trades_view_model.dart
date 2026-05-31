import 'package:fx_client_app/core/base_view_model.dart';
import 'package:fx_client_app/domain/repositories/trades_repository.dart';
import 'package:fx_client_app/utilities/resource.dart';
import 'package:injectable/injectable.dart';
import 'closed_trades_event.dart';
import 'closed_trades_state.dart';

@injectable
class ClosedTradesViewModel extends BaseViewModel<ClosedTradesState> {
  ClosedTradesViewModel(this.repository);

  final TradesRepository repository;

  @override
  ClosedTradesState build() {
    ref.onDispose(() {
      dispose();
    });
    
    _loadTrades();
    return const ClosedTradesState();
  }

  void onEvent(ClosedTradesEvent event) {
    switch (event) {
      case LoadClosedTrades():
        _loadTrades();
        break;
    }
  }

  void _loadTrades() {
    bag.add(
      repository.getClosedTrades().listen((resource) {
        resource.when(
          loading: () {
            if (!ref.mounted) return;
            setState((state) => state.copyWith(isLoading: true, error: null));
          },
          content: (trades) {
            if (!ref.mounted) return;
            setState((state) => state.copyWith(isLoading: false, trades: trades, error: null));
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
