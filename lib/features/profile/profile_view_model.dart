import 'package:fx_client_app/core/base_view_model.dart';
import 'package:fx_client_app/core/ui_text.dart';
import 'package:fx_client_app/domain/repositories/profile_repository.dart';
import 'package:fx_client_app/utilities/resource.dart';
import 'package:injectable/injectable.dart';

import 'profile_event.dart';
import 'profile_state.dart';

@injectable
class ProfileViewModel extends BaseViewModel<ProfileState> {
  ProfileViewModel(this.repository) : super();

  final ProfileRepository repository;

  @override
  ProfileState build() {
    _load();
    return const ProfileState();
  }

  void onEvent(ProfileEvent event) {
    switch (event) {
      case LoadProfile():
      case RetryLoadProfile():
        _load();
        break;
    }
  }

  void _load() {
    bag.add(
      repository.loadProfile().listen((resource) {
        resource.when(
          loading: () {
            if (!ref.mounted) return;
            setState((s) => s.copyWith(isLoading: true, error: null));
          },
          content: (profile) {
            if (!ref.mounted) return;
            setState((s) => s.copyWith(isLoading: false, profile: profile));
          },
          error: (msg) {
            if (!ref.mounted) return;
            setState(
              (s) => s.copyWith(
                isLoading: false,
                error: UiText.dynamic(msg),
              ),
            );
          },
        );
      }),
    );
  }
}

