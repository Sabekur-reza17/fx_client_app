import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';
import 'app_router.gr.dart';
import '../core/auth_guard.dart';

@AutoRouterConfig(replaceInRouteName: "Screen,Route")
@singleton
class AppRouter extends RootStackRouter {
  AppRouter(this._authGuard);

  final AuthGuard _authGuard;

  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: LoginRoute.page, initial: true),
        AutoRoute(
          page: MainRoute.page,
          guards: [_authGuard],
          children: [
            AutoRoute(page: BottomNavigationRoute.page, initial: true, children: [
              AutoRoute(page: SignalsArchiveRoute.page),
              AutoRoute(page: PromoMaterialsRoute.page),
              AutoRoute(page: HomeRoute.page, initial: true),
              AutoRoute(page: ProfileRoute.page),
              AutoRoute(page: MoreRoute.page),
            ]),
          ],
        ),
        AutoRoute(page: OpenTradesRoute.page),
        AutoRoute(page: ClosedTradesRoute.page),
        AutoRoute(page: UpdatePasswordRoute.page),
  ];
}
