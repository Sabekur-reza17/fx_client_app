import 'package:injectable/injectable.dart';
import 'package:fx_client_app/core/base_view_model.dart';

import 'main_event.dart';
import 'main_state.dart';

@injectable
class MainViewModel extends BaseViewModel<MainState> {
  MainViewModel() : super();

  @override
  MainState build() {
    return MainState();
  }

  void onEvent(MainEvent event) {
    switch (event) {
      case NotificationPressed():
        setState((state) => state.copyWith(isNotificationPressed: true));
        break;
      case NavigationToNotification():
        setState((state) => state.copyWith(isNotificationPressed: false));
        break;
      case LoadCourses():
        break;
    }
  }
}
