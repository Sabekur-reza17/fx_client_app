import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';

import '../di/injection.dart';
import '../core/app_router.gr.dart';
import '../utilities/user_factory.dart';

@singleton
class AuthGuard extends AutoRouteGuard {
  UserFactory get _userFactory => getIt.get<UserFactory>();

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    if (_userFactory.hasLoggedIn()) {
      resolver.next(true);
    } else {
      resolver.redirectUntil(const LoginRoute());
    }
  }
}
