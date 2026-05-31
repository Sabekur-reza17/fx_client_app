import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fx_client_app/domain/models/trade.dart';

part 'open_trades_state.freezed.dart';

@freezed
abstract class OpenTradesState with _$OpenTradesState {
  const factory OpenTradesState({
    @Default(false) bool isLoading,
    @Default([]) List<Trade> trades,
    String? error,
  }) = _OpenTradesState;
}
