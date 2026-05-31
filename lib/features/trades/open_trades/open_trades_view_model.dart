import 'package:fx_client_app/core/base_view_model.dart';
import 'package:fx_client_app/domain/repositories/trades_repository.dart';
import 'package:fx_client_app/utilities/resource.dart';
import 'package:injectable/injectable.dart';
import 'open_trades_event.dart';
import 'open_trades_state.dart';

@injectable
class OpenTradesViewModel extends BaseViewModel<OpenTradesState> {
  OpenTradesViewModel(this.repository);

  final TradesRepository repository;

  @override
  OpenTradesState build() {
    ref.onDispose(() {
      dispose();
    });
    
    _loadTrades();
    return const OpenTradesState();
  }

  void onEvent(OpenTradesEvent event) {
    switch (event) {
      case LoadOpenTrades():
        _loadTrades();
        break;
    }
  }

  void _loadTrades() {
    bag.add(
      repository.getOpenTrades().listen((resource) {
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
