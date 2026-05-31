// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i12;
import 'package:flutter/material.dart' as _i13;
import 'package:fx_client_app/features/auth/login/login_screen.dart' as _i4;
import 'package:fx_client_app/features/home/home_screen.dart' as _i3;
import 'package:fx_client_app/features/main/main_screen.dart' as _i5;
import 'package:fx_client_app/features/main/nav/bottom_navigation_screen.dart'
    as _i1;
import 'package:fx_client_app/features/more/more_screen.dart' as _i6;
import 'package:fx_client_app/features/profile/profile_screen.dart' as _i8;
import 'package:fx_client_app/features/promo_materials/promo_materials_screen.dart'
    as _i9;
import 'package:fx_client_app/features/settings/update_password/update_password_screen.dart'
    as _i11;
import 'package:fx_client_app/features/signals_archive/signals_archive_screen.dart'
    as _i10;
import 'package:fx_client_app/features/trades/closed_trades/closed_trades_screen.dart'
    as _i2;
import 'package:fx_client_app/features/trades/open_trades/open_trades_screen.dart'
    as _i7;

/// generated route for
/// [_i1.BottomNavigationScreen]
class BottomNavigationRoute
    extends _i12.PageRouteInfo<BottomNavigationRouteArgs> {
  BottomNavigationRoute({_i13.Key? key, List<_i12.PageRouteInfo>? children})
    : super(
        BottomNavigationRoute.name,
        args: BottomNavigationRouteArgs(key: key),
        initialChildren: children,
      );

  static const String name = 'BottomNavigationRoute';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<BottomNavigationRouteArgs>(
        orElse: () => const BottomNavigationRouteArgs(),
      );
      return _i1.BottomNavigationScreen(key: args.key);
    },
  );
}

class BottomNavigationRouteArgs {
  const BottomNavigationRouteArgs({this.key});

  final _i13.Key? key;

  @override
  String toString() {
    return 'BottomNavigationRouteArgs{key: $key}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! BottomNavigationRouteArgs) return false;
    return key == other.key;
  }

  @override
  int get hashCode => key.hashCode;
}

/// generated route for
/// [_i2.ClosedTradesScreen]
class ClosedTradesRoute extends _i12.PageRouteInfo<void> {
  const ClosedTradesRoute({List<_i12.PageRouteInfo>? children})
    : super(ClosedTradesRoute.name, initialChildren: children);

  static const String name = 'ClosedTradesRoute';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      return const _i2.ClosedTradesScreen();
    },
  );
}

/// generated route for
/// [_i3.HomeScreen]
class HomeRoute extends _i12.PageRouteInfo<void> {
  const HomeRoute({List<_i12.PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      return const _i3.HomeScreen();
    },
  );
}

/// generated route for
/// [_i4.LoginScreen]
class LoginRoute extends _i12.PageRouteInfo<void> {
  const LoginRoute({List<_i12.PageRouteInfo>? children})
    : super(LoginRoute.name, initialChildren: children);

  static const String name = 'LoginRoute';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      return const _i4.LoginScreen();
    },
  );
}

/// generated route for
/// [_i5.MainScreen]
class MainRoute extends _i12.PageRouteInfo<void> {
  const MainRoute({List<_i12.PageRouteInfo>? children})
    : super(MainRoute.name, initialChildren: children);

  static const String name = 'MainRoute';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      return const _i5.MainScreen();
    },
  );
}

/// generated route for
/// [_i6.MoreScreen]
class MoreRoute extends _i12.PageRouteInfo<void> {
  const MoreRoute({List<_i12.PageRouteInfo>? children})
    : super(MoreRoute.name, initialChildren: children);

  static const String name = 'MoreRoute';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      return const _i6.MoreScreen();
    },
  );
}

/// generated route for
/// [_i7.OpenTradesScreen]
class OpenTradesRoute extends _i12.PageRouteInfo<void> {
  const OpenTradesRoute({List<_i12.PageRouteInfo>? children})
    : super(OpenTradesRoute.name, initialChildren: children);

  static const String name = 'OpenTradesRoute';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      return const _i7.OpenTradesScreen();
    },
  );
}

/// generated route for
/// [_i8.ProfileScreen]
class ProfileRoute extends _i12.PageRouteInfo<void> {
  const ProfileRoute({List<_i12.PageRouteInfo>? children})
    : super(ProfileRoute.name, initialChildren: children);

  static const String name = 'ProfileRoute';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      return const _i8.ProfileScreen();
    },
  );
}

/// generated route for
/// [_i9.PromoMaterialsScreen]
class PromoMaterialsRoute extends _i12.PageRouteInfo<void> {
  const PromoMaterialsRoute({List<_i12.PageRouteInfo>? children})
    : super(PromoMaterialsRoute.name, initialChildren: children);

  static const String name = 'PromoMaterialsRoute';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      return const _i9.PromoMaterialsScreen();
    },
  );
}

/// generated route for
/// [_i10.SignalsArchiveScreen]
class SignalsArchiveRoute extends _i12.PageRouteInfo<void> {
  const SignalsArchiveRoute({List<_i12.PageRouteInfo>? children})
    : super(SignalsArchiveRoute.name, initialChildren: children);

  static const String name = 'SignalsArchiveRoute';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      return const _i10.SignalsArchiveScreen();
    },
  );
}

/// generated route for
/// [_i11.UpdatePasswordScreen]
class UpdatePasswordRoute extends _i12.PageRouteInfo<void> {
  const UpdatePasswordRoute({List<_i12.PageRouteInfo>? children})
    : super(UpdatePasswordRoute.name, initialChildren: children);

  static const String name = 'UpdatePasswordRoute';

  static _i12.PageInfo page = _i12.PageInfo(
    name,
    builder: (data) {
      return const _i11.UpdatePasswordScreen();
    },
  );
}
