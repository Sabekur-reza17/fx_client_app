import 'package:fx_client_app/core/base_view_model.dart';
import 'package:fx_client_app/utilities/user_factory.dart';
import 'package:injectable/injectable.dart';
import 'more_event.dart';
import 'more_state.dart';

@injectable
class MoreViewModel extends BaseViewModel<MoreState> {
  MoreViewModel(this.userFactory);

  final UserFactory userFactory;

  @override
  MoreState build() {
    ref.onDispose(() {
      dispose();
    });
    return const MoreState();
  }

  void onEvent(MoreEvent event) {
    switch (event) {
      case LogoutEvent():
        _logout();
        break;
    }
  }

  Future<void> _logout() async {
    setState((state) => state.copyWith(isLoading: true));
    await userFactory.logout();
    setState((state) => state.copyWith(isLoading: false));
  }
}
