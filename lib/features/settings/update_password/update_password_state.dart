import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_password_state.freezed.dart';

@freezed
abstract class UpdatePasswordState with _$UpdatePasswordState {
  const factory UpdatePasswordState({
    @Default(false) bool isSubmitting,
    @Default(false) bool isSuccess,
    String? error,
  }) = _UpdatePasswordState;
}
