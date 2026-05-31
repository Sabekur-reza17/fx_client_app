// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:fx_client_app/core/app_router.dart' as _i424;
import 'package:fx_client_app/core/auth_guard.dart' as _i800;
import 'package:fx_client_app/data/auth_api_service.dart' as _i761;
import 'package:fx_client_app/data/fx_api_service.dart' as _i932;
import 'package:fx_client_app/data/repositories/auth_repository_impl.dart'
    as _i387;
import 'package:fx_client_app/data/repositories/fx_client_repository_impl.dart'
    as _i671;
import 'package:fx_client_app/data/repositories/home_repository_impl.dart'
    as _i915;
import 'package:fx_client_app/data/repositories/profile_repository_impl.dart'
    as _i183;
import 'package:fx_client_app/data/repositories/settings_repository_impl.dart'
    as _i929;
import 'package:fx_client_app/data/repositories/trades_repository_impl.dart'
    as _i1;
import 'package:fx_client_app/di/network_module.dart' as _i867;
import 'package:fx_client_app/di/prefs_module.dart' as _i918;
import 'package:fx_client_app/domain/repositories/auth_repository.dart'
    as _i917;
import 'package:fx_client_app/domain/repositories/fx_client_repository.dart'
    as _i156;
import 'package:fx_client_app/domain/repositories/home_repository.dart'
    as _i527;
import 'package:fx_client_app/domain/repositories/profile_repository.dart'
    as _i229;
import 'package:fx_client_app/domain/repositories/settings_repository.dart'
    as _i875;
import 'package:fx_client_app/domain/repositories/trades_repository.dart'
    as _i206;
import 'package:fx_client_app/features/auth/login/login_view_model.dart'
    as _i938;
import 'package:fx_client_app/features/home/home_view_model.dart' as _i273;
import 'package:fx_client_app/features/main/main_view_model.dart' as _i857;
import 'package:fx_client_app/features/more/more_view_model.dart' as _i954;
import 'package:fx_client_app/features/profile/profile_view_model.dart'
    as _i848;
import 'package:fx_client_app/features/promo_materials/promo_materials_view_model.dart'
    as _i408;
import 'package:fx_client_app/features/settings/update_password/update_password_view_model.dart'
    as _i889;
import 'package:fx_client_app/features/signals_archive/signals_archive_view_model.dart'
    as _i427;
import 'package:fx_client_app/features/trades/closed_trades/closed_trades_view_model.dart'
    as _i1048;
import 'package:fx_client_app/features/trades/open_trades/open_trades_view_model.dart'
    as _i66;
import 'package:fx_client_app/utilities/user_factory.dart' as _i666;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final prefsModule = _$PrefsModule();
    final networkModule = _$NetworkModule();
    await gh.factoryAsync<_i460.SharedPreferencesWithCache>(
      () => prefsModule.providePrefs(),
      preResolve: true,
    );
    gh.factory<_i857.MainViewModel>(() => _i857.MainViewModel());
    gh.singleton<_i800.AuthGuard>(() => _i800.AuthGuard());
    gh.singleton<_i361.Dio>(() => networkModule.provideDio());
    gh.singleton<_i666.UserFactory>(
      () => networkModule.provideUserFactory(
        gh<_i460.SharedPreferencesWithCache>(),
      ),
    );
    gh.singleton<_i424.AppRouter>(() => _i424.AppRouter(gh<_i800.AuthGuard>()));
    gh.singleton<_i761.PeanutAuthApiService>(
      () => networkModule.providePeanutAuthApiService(gh<_i666.UserFactory>()),
    );
    gh.singleton<_i761.PartnerAuthApiService>(
      () => networkModule.providePartnerAuthApiService(gh<_i666.UserFactory>()),
    );
    gh.singleton<_i932.PeanutFxApiService>(
      () => networkModule.providePeanutFxApiService(gh<_i666.UserFactory>()),
    );
    gh.factory<_i954.MoreViewModel>(
      () => _i954.MoreViewModel(gh<_i666.UserFactory>()),
    );
    gh.singleton<_i361.Dio>(
      () => networkModule.provideFxClientDio(
        gh<_i666.UserFactory>(),
        gh<_i424.AppRouter>(),
      ),
      instanceName: 'fx_client',
    );
    gh.singleton<_i917.AuthRepository>(
      () => _i387.AuthRepositoryImpl(
        gh<_i761.PeanutAuthApiService>(),
        gh<_i761.PartnerAuthApiService>(),
        gh<_i666.UserFactory>(),
      ),
    );
    gh.singleton<_i361.Dio>(
      () => networkModule.provideRetinaDio(
        gh<_i666.UserFactory>(),
        gh<_i424.AppRouter>(),
      ),
      instanceName: 'retina',
    );
    gh.factory<_i206.TradesRepository>(
      () => _i1.TradesRepositoryImpl(
        gh<_i932.PeanutFxApiService>(),
        gh<_i666.UserFactory>(),
      ),
    );
    gh.singleton<_i932.PartnerFxApiService>(
      () => networkModule.providePartnerFxApiService(
        gh<_i361.Dio>(instanceName: 'fx_client'),
      ),
    );
    gh.singleton<_i229.ProfileRepository>(
      () => _i183.ProfileRepositoryImpl(
        gh<_i932.PeanutFxApiService>(),
        gh<_i666.UserFactory>(),
      ),
    );
    gh.singleton<_i527.HomeRepository>(
      () => _i915.HomeRepositoryImpl(
        gh<_i932.PeanutFxApiService>(),
        gh<_i666.UserFactory>(),
      ),
    );
    gh.factory<_i938.LoginViewModel>(
      () => _i938.LoginViewModel(
        gh<_i666.UserFactory>(),
        gh<_i917.AuthRepository>(),
      ),
    );
    gh.factory<_i875.SettingsRepository>(
      () => _i929.SettingsRepositoryImpl(
        gh<_i932.PeanutFxApiService>(),
        gh<_i666.UserFactory>(),
      ),
    );
    gh.singleton<_i156.FxClientRepository>(
      () => _i671.FxClientRepositoryImpl(
        gh<_i932.PartnerFxApiService>(),
        gh<_i361.Dio>(),
        gh<_i666.UserFactory>(),
      ),
    );
    gh.factory<_i408.PromoMaterialsViewModel>(
      () => _i408.PromoMaterialsViewModel(gh<_i156.FxClientRepository>()),
    );
    gh.factory<_i427.SignalsArchiveViewModel>(
      () => _i427.SignalsArchiveViewModel(gh<_i156.FxClientRepository>()),
    );
    gh.factory<_i1048.ClosedTradesViewModel>(
      () => _i1048.ClosedTradesViewModel(gh<_i206.TradesRepository>()),
    );
    gh.factory<_i66.OpenTradesViewModel>(
      () => _i66.OpenTradesViewModel(gh<_i206.TradesRepository>()),
    );
    gh.factory<_i273.HomeViewModel>(
      () => _i273.HomeViewModel(gh<_i527.HomeRepository>()),
    );
    gh.factory<_i848.ProfileViewModel>(
      () => _i848.ProfileViewModel(gh<_i229.ProfileRepository>()),
    );
    gh.factory<_i889.UpdatePasswordViewModel>(
      () => _i889.UpdatePasswordViewModel(gh<_i875.SettingsRepository>()),
    );
    return this;
  }
}

class _$PrefsModule extends _i918.PrefsModule {}

class _$NetworkModule extends _i867.NetworkModule {}
