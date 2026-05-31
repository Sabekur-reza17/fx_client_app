import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fx_client_app/domain/models/signal.dart';

part 'signals_archive_state.freezed.dart';

@freezed
abstract class SignalsArchiveState with _$SignalsArchiveState {
  const factory SignalsArchiveState({
    @Default(false) bool isLoading,
    @Default([]) List<Signal> signals,
    @Default([]) List<String> selectedPairs,
    DateTime? startDate,
    DateTime? endDate,
    String? error,
  }) = _SignalsArchiveState;
}
