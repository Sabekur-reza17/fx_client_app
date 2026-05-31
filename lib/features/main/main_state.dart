import 'package:freezed_annotation/freezed_annotation.dart';

part 'main_state.freezed.dart';

@Freezed()
abstract class MainState with _$MainState {
  factory MainState({
    @Default(false) bool isLoading,
    @Default(false) bool isNotificationPressed,
  }) = _MainState;
}
