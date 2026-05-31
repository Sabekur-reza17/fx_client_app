import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shared_preferences_android/shared_preferences_android.dart';

@module
abstract class PrefsModule {
  @preResolve
  Future<SharedPreferencesWithCache> providePrefs() async {
    const options = SharedPreferencesAsyncAndroidOptions(
      backend: SharedPreferencesAndroidBackendLibrary.SharedPreferences,
      originalSharedPreferencesOptions: AndroidSharedPreferencesStoreOptions(
        fileName: 'fx_client_preferences',
      ),
    );
    return SharedPreferencesWithCache.create(
      cacheOptions: const SharedPreferencesWithCacheOptions(),
      sharedPreferencesOptions: options,
    );
  }
}

