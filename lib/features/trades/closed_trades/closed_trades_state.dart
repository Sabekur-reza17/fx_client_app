import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fx_client_app/domain/models/trade.dart';

part 'closed_trades_state.freezed.dart';

@freezed
abstract class ClosedTradesState with _$ClosedTradesState {
  const factory ClosedTradesState({
    @Default(false) bool isLoading,
    @Default([]) List<Trade> trades,
    String? error,
  }) = _ClosedTradesState;
}
