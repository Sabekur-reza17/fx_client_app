import 'package:flutter/foundation.dart';
import 'package:fx_client_app/core/base_view_model.dart';
import 'package:fx_client_app/core/password_validator.dart';
import 'package:fx_client_app/core/phone_number_validator.dart';
import 'package:fx_client_app/core/ui_text.dart';
import 'package:fx_client_app/domain/models/login.dart';
import 'package:fx_client_app/domain/repositories/auth_repository.dart';
import 'package:fx_client_app/utilities/user_factory.dart';
import 'package:injectable/injectable.dart';
import 'package:fx_client_app/utilities/resource.dart';
import 'login_event.dart';
import 'login_state.dart';

@injectable
class LoginViewModel extends BaseViewModel<LoginState> {
  final UserFactory userFactory;
  final AuthRepository authRepository;

  LoginViewModel(this.userFactory, this.authRepository) : super();

  @override
  LoginState build() {
    ref.onDispose(() {
      dispose();
    });

    bool isRememberMe = userFactory.isRememberMe();
    if (kDebugMode) {
      isRememberMe = true;
    }
    final storedPhone = isRememberMe ? userFactory.getLogin() : '';
    final storePassword = isRememberMe ? userFactory.getPassword() : '';
    final phoneNumber = PhoneNumberValidator.toNationalDisplay(storedPhone);
    return LoginState(
      phoneNumber: phoneNumber,
      isPhoneValid: PhoneNumberValidator.isValid(phoneNumber),
      password: storePassword,
      rememberMe: userFactory.isRememberMe(),
    );
  }



  @override
  void dispose() {

    if (isDisposed) {
      return;
    }
    super.dispose();
  }

  void updateIsLoggedIn() {
    setState((state) => state.copyWith(isLoggedIn: false));
  }

  void onEvent(LoginEvent event) {
    switch (event) {
      case OnPhoneNumberChanged event:
        final phone = event.phoneNumber;
        setState(
          (state) => state.copyWith(
            phoneNumber: phone,
            isPhoneValid: PhoneNumberValidator.isValid(phone),
            phoneError: null,
            error: null,
          ),
        );
        break;
      case OnPasswordChanged event:
        setState(
          (state) => state.copyWith(password: event.password, error: null),
        );
        break;
      case OnRememberMeToggled event:
        setState((state) => state.copyWith(rememberMe: event.value));
        userFactory.saveRememberMe(event.value);
        break;
      case OnTogglePasswordVisibility():
        setState(
          (state) =>
              state.copyWith(isPasswordVisible: !state.isPasswordVisible),
        );
        break;
      case OnLoginPressed():
        if (!_validatePhoneForLogin()) {
          return;
        }
        if (state.password.isEmpty) {
          setState(
            (state) => state.copyWith(
              error: UiText.localized('phoneNumberOrPasswordIncorrect'),
            ),
          );
          return;
        }
        if (!_validatePasswordForLogin()) {
          return;
        }
        _doLogin();
        break;
    }
  }

  bool _validatePhoneForLogin() {
    final phone = state.phoneNumber.trim();
    if (phone.isEmpty) {
      setState(
        (state) => state.copyWith(
          isPhoneValid: false,
          phoneError: UiText.localized('loginPhoneRequired'),
          error: null,
        ),
      );
      return false;
    }

    final e164Digits = PhoneNumberValidator.toE164Digits(phone);
    if (e164Digits == null) {
      setState(
        (state) => state.copyWith(
          isPhoneValid: false,
          phoneError: UiText.localized('invalidPhoneNumber'),
          error: null,
        ),
      );
      return false;
    }

    setState((state) => state.copyWith(isPhoneValid: true, phoneError: null));
    return true;
  }

  String get _loginUsername =>
      PhoneNumberValidator.toE164Digits(state.phoneNumber.trim()) ??
      state.phoneNumber.trim();

  bool _validatePasswordForLogin() {
    if (PasswordValidator.containsDisallowedCharacters(state.password)) {
      setState(
        (state) => state.copyWith(
          error: UiText.localized('passwordEnglishCharactersOnly'),
          isLoggedIn: false,
        ),
      );
      return false;
    }
    setState((state) => state.copyWith(error: null));
    return true;
  }

  void _doLogin() {
    bag.add(
      authRepository
          .doLogin(
            body: {'login': _loginUsername, 'password': state.password},
          )
          .listen((resource) {
            resource.when(
              loading: () {
                if (!ref.mounted) return;
                setState(
                  (state) => state.copyWith(
                    isLoading: true,
                    error: null,
                    isLoggedIn: false,
                  ),
                );
              },
              content: (Login login) async {
                if (state.rememberMe) {
                  await userFactory.saveLogin(_loginUsername);
                  await userFactory.savePassword(state.password);
                }
                if (!ref.mounted) return;
                setState(
                  (state) => state.copyWith(isLoading: false, isLoggedIn: true),
                );
              },
              error: (String? message) {
                if (!ref.mounted) return;
                setState(
                  (state) => state.copyWith(
                    isLoading: false,
                    isLoggedIn: false,
                    error: UiText.dynamic(message ?? "Login failed"),
                    // error: UiText.localized("noInformationIsAvailable"),
                  ),
                );
              },
            );
          }),
    );
  }
}
