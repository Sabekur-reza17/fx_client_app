import 'package:fx_client_app/core/base_view_model.dart';
import 'package:fx_client_app/domain/repositories/settings_repository.dart';
import 'package:fx_client_app/utilities/resource.dart';
import 'package:injectable/injectable.dart';
import 'update_password_event.dart';
import 'update_password_state.dart';

@injectable
class UpdatePasswordViewModel extends BaseViewModel<UpdatePasswordState> {
  UpdatePasswordViewModel(this.repository);

  final SettingsRepository repository;

  @override
  UpdatePasswordState build() {
    return const UpdatePasswordState();
  }

  void onEvent(UpdatePasswordEvent event) {
    switch (event) {
      case SubmitUpdatePassword():
        _updatePassword(event.oldPassword, event.newPassword);
        break;
    }
  }

  Future<void> _updatePassword(String oldPassword, String newPassword) async {
    setState((state) => state.copyWith(isSubmitting: true, error: null, isSuccess: false));
    final resource = await repository.updatePassword(oldPassword, newPassword);
    if (!ref.mounted) return;

    resource.when(
      loading: () {}, // Not used since it's a Future
      content: (_) {
        setState((state) => state.copyWith(isSubmitting: false, isSuccess: true, error: null));
      },
      error: (message) {
        setState((state) => state.copyWith(isSubmitting: false, error: message, isSuccess: false));
      },
    );
  }
}
