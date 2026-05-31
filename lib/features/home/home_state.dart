import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fx_client_app/domain/models/my_stats.dart';

part 'home_state.freezed.dart';

@freezed
abstract class HomeState with _$HomeState {
  const factory HomeState({
    @Default(false) bool isLoading,
    MyStats? stats,
    String? error,
  }) = _HomeState;
}
