sealed class UpdatePasswordEvent {}

class SubmitUpdatePassword extends UpdatePasswordEvent {
  SubmitUpdatePassword({required this.oldPassword, required this.newPassword});
  final String oldPassword;
  final String newPassword;
}
