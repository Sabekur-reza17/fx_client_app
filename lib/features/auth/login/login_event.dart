sealed class LoginEvent {}

class OnPhoneNumberChanged extends LoginEvent {
  final String phoneNumber;
  OnPhoneNumberChanged({required this.phoneNumber});
}

class OnTogglePasswordVisibility extends LoginEvent {}

class OnLoginPressed extends LoginEvent {}

class OnPasswordChanged extends LoginEvent {
  final String password;
  OnPasswordChanged({required this.password});
}

class OnRememberMeToggled extends LoginEvent {
  final bool value;
  OnRememberMeToggled({required this.value});
}

