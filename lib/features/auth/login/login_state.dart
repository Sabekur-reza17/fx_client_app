import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fx_client_app/core/ui_text.dart';

part 'login_state.freezed.dart';

@Freezed()
abstract class LoginState with _$LoginState {
  factory LoginState({
    @Default(false) bool isLoading,
    @Default(false) bool isLoggedIn,
    @Default('') String phoneNumber,
    @Default(false) bool isPhoneValid,
    @Default(null) UiText? phoneError,

    @Default('') String password,
    @Default(false) bool rememberMe,
    @Default(false) bool isPasswordVisible,
    @Default(null) UiText? error,
  }) = _LoginState;
}
