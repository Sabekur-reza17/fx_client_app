
import 'package:dio/dio.dart';
import 'package:fimber/fimber.dart';
import 'package:fx_client_app/data/fx_api_service.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../core/app_router.dart';
import '../data/auth_api_service.dart';
import '../utilities/build_config.dart';
import '../utilities/user_factory.dart';

@module
abstract class NetworkModule {
  @singleton
  UserFactory provideUserFactory(SharedPreferencesWithCache prefs) {
    return UserFactory(prefs);
  }

  @singleton
  Dio provideDio() {
    return Dio(BaseOptions(baseUrl: BuildConfig.peanutBaseUrl));
  }

  @singleton
  PeanutAuthApiService providePeanutAuthApiService(UserFactory userFactory) {
    final dio = Dio(
      BaseOptions(
        baseUrl: BuildConfig.peanutBaseUrl,
        headers: {"Content-Type": "application/json", "Accept": "*/*"},
      ),
    );
    dio.interceptors.add(
      PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseHeader: true,
        responseBody: true,
      ),
    );
    dio.interceptors.add(
      InterceptorsWrapper(
        onResponse: (Response response, ResponseInterceptorHandler handler) {
          // Peanut token is persisted from response body in repository.
          handler.next(response);
        },
      ),
    );

    return PeanutAuthApiService(dio);
  }

  @singleton
  PartnerAuthApiService providePartnerAuthApiService(UserFactory userFactory) {
    final dio = Dio(
      BaseOptions(
        baseUrl: BuildConfig.partnerBaseUrl,
        headers: {"Content-Type": "application/json", "Accept": "*/*"},
      ),
    );
    dio.interceptors.add(
      PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseHeader: true,
        responseBody: true,
      ),
    );
    return PartnerAuthApiService(dio);
  }

  @singleton
  @Named('fx_client')
  Dio provideFxClientDio(UserFactory userFactory, AppRouter appRouter) {
    final dio = Dio(
      BaseOptions(
        baseUrl: BuildConfig.partnerBaseUrl,
        headers: {"Content-Type": "application/json", "Accept": "*/*"},
        connectTimeout: Duration(seconds: 10),
        receiveTimeout: Duration(seconds: 10),
        sendTimeout: Duration(seconds: 10),
      ),
    );
    // dio.interceptors.add(tokenInterceptor);
    dio.interceptors.add(
      PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseHeader: true,
        responseBody: true,
        request: true,
        compact: false,
      ),
    );
    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          options.headers["sessionId"] = userFactory.getToken();
          options.headers["authorization"] = userFactory.getToken();
          // options.headers["authorization"] = userFactory.getToken();
          // options.headers["Language-Code"] = userFactory
          //     .getSelectedLanguage()
          //     .languageCode;
          Fimber.d("TopBarToken: request: ${userFactory.getToken()}");
          return handler.next(options);
        },
        onError: (e, handler) async {
          if (e.response?.statusCode == 401) {
            try {
              await userFactory.logout();
              //appRouter.replaceAll([const LoginRoute()]);
              return handler.reject(
                DioException(
                  requestOptions: e.requestOptions,
                  error: "Session expired, please login again",
                  type: DioExceptionType.cancel,
                ),
              );
            } catch (er) {
              Fimber.e(er.toString());
            }
          }
          return handler.next(e);
        },
      ),
    );
    return dio;
  }

  @singleton
  PartnerFxApiService providePartnerFxApiService(@Named('fx_client') Dio dio) {
    return PartnerFxApiService(dio);
  }

  // FxClientRepository is provided via @Singleton(as: FxClientRepository)
  // on FxClientRepositoryImpl.




  @singleton
  @Named('retina')
  Dio provideRetinaDio(UserFactory userFactory, AppRouter appRouter) {
    final dio = Dio(
      BaseOptions(
        baseUrl: BuildConfig.soapBaseUrl,
        headers: {"Content-Type": "application/json", "Accept": "*/*"},
        connectTimeout: Duration(seconds: 10),
        receiveTimeout: Duration(seconds: 10),
        sendTimeout: Duration(seconds: 10),
      ),
    );
    // dio.interceptors.add(tokenInterceptor);
    dio.interceptors.add(
      PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseHeader: true,
        responseBody: true,
        request: true,
        compact: false,
      ),
    );
    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          options.headers["sessionId"] = userFactory.getToken();
          options.headers["authorization"] = userFactory.getToken();
          // options.headers["authorization"] = userFactory.getToken();
          // options.headers["Language-Code"] = userFactory
          //     .getSelectedLanguage()
          //     .languageCode;
          Fimber.d("TopBarToken: request: ${userFactory.getToken()}");
          return handler.next(options);
        },
        onError: (e, handler) async {
          if (e.response?.statusCode == 401) {
            try {
              await userFactory.logout();
             // appRouter.replaceAll([const LoginRoute()]);
              return handler.reject(
                DioException(
                  requestOptions: e.requestOptions,
                  error: "Session expired, please login again",
                  type: DioExceptionType.cancel,
                ),
              );
            } catch (er) {
              Fimber.e(er.toString());
            }
          }
          return handler.next(e);
        },
      ),
    );
    return dio;
  }

  @singleton
  PeanutFxApiService providePeanutFxApiService(UserFactory userFactory) {
    final dio = Dio(
      BaseOptions(
        baseUrl: BuildConfig.peanutBaseUrl,
        headers: {"Content-Type": "application/json", "Accept": "*/*"},
        connectTimeout: const Duration(seconds: 10),
        receiveTimeout: const Duration(seconds: 10),
        sendTimeout: const Duration(seconds: 10),
      ),
    );
    dio.interceptors.add(
      PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseHeader: true,
        responseBody: true,
        request: true,
        compact: false,
      ),
    );
    return PeanutFxApiService(dio);
  }



  // Retina repository (if needed) will be reintroduced later; for now avoid
  // double-registering FxClientRepositoryImpl in DI.

}
