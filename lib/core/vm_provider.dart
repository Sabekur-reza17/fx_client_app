
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../di/injection.dart';
import '../features/auth/login/login_state.dart';
import '../features/auth/login/login_view_model.dart';
import '../features/home/home_state.dart';
import '../features/home/home_view_model.dart';
import '../features/main/main_state.dart';
import '../features/main/main_view_model.dart';
import '../features/more/more_state.dart';
import '../features/more/more_view_model.dart';
import '../features/profile/profile_state.dart';
import '../features/profile/profile_view_model.dart';
import '../features/promo_materials/promo_materials_state.dart';
import '../features/promo_materials/promo_materials_view_model.dart';
import '../features/signals_archive/signals_archive_state.dart';
import '../features/signals_archive/signals_archive_view_model.dart';
import '../features/trades/open_trades/open_trades_state.dart';
import '../features/trades/open_trades/open_trades_view_model.dart';
import '../features/trades/closed_trades/closed_trades_state.dart';
import '../features/trades/closed_trades/closed_trades_view_model.dart';
import '../features/settings/update_password/update_password_state.dart';
import '../features/settings/update_password/update_password_view_model.dart';

class VmProvider {
  static final loginVMP = NotifierProvider<LoginViewModel, LoginState>(() {
    return getIt.get<LoginViewModel>();
  });

  static final homeVMP = NotifierProvider<HomeViewModel, HomeState>(() {
    return getIt.get<HomeViewModel>();
  });

  static final promoMaterialsVMP = NotifierProvider<PromoMaterialsViewModel, PromoMaterialsState>(() {
    return getIt.get<PromoMaterialsViewModel>();
  });

  static final signalsArchiveVMP = NotifierProvider<SignalsArchiveViewModel, SignalsArchiveState>(() {
    return getIt.get<SignalsArchiveViewModel>();
  });

  static final moreVMP = NotifierProvider<MoreViewModel, MoreState>(() {
    return getIt.get<MoreViewModel>();
  });

  static final mainVMP = NotifierProvider<MainViewModel, MainState>(() {
    return getIt.get<MainViewModel>();
  });

  static final profileVMP =
      NotifierProvider<ProfileViewModel, ProfileState>(() {
    return getIt.get<ProfileViewModel>();
  });

  static final openTradesVMP = NotifierProvider<OpenTradesViewModel, OpenTradesState>(() {
    return getIt.get<OpenTradesViewModel>();
  });

  static final closedTradesVMP = NotifierProvider<ClosedTradesViewModel, ClosedTradesState>(() {
    return getIt.get<ClosedTradesViewModel>();
  });

  static final updatePasswordVMP = NotifierProvider<UpdatePasswordViewModel, UpdatePasswordState>(() {
    return getIt.get<UpdatePasswordViewModel>();
  });

  static final themeProvider = NotifierProvider<ThemeNotifier, ThemeMode>(() {
    return ThemeNotifier();
  });
}

class ThemeNotifier extends Notifier<ThemeMode> {
  @override
  ThemeMode build() => ThemeMode.system;

  void updateTheme(ThemeMode mode) {
    state = mode;
  }
}

