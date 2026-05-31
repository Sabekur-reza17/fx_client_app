import 'package:fx_client_app/data/auth_api_service.dart';
import 'package:fx_client_app/domain/repositories/auth_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';
import 'package:fx_client_app/utilities/extensions/error_message_extensions.dart';
import 'package:fx_client_app/utilities/resource.dart';
import 'package:fx_client_app/domain/models/login.dart';
import 'package:fx_client_app/utilities/user_factory.dart';

@Singleton(as: AuthRepository)
class AuthRepositoryImpl extends AuthRepository {
  final PeanutAuthApiService peanutApi;
  final PartnerAuthApiService partnerApi;
  final UserFactory userFactory;

  AuthRepositoryImpl(this.peanutApi, this.partnerApi, this.userFactory);


  @override
  Stream<Resource<Login>> doLogin({required Map<String, String> body}) {
    return peanutApi
        .isAccountCredentialsCorrect(body: body)
        .asyncMap((peanut) async {
          final ok = peanut.result ?? false;
          if (!ok) {
            throw StateError('Invalid login or password');
          }

          final peanutToken = peanut.token ?? '';
          if (peanutToken.isEmpty) {
            throw StateError('Missing Peanut token');
          }
          await userFactory.saveToken(peanutToken);

          final partnerToken =
              await partnerApi.requestMoblieCabinetApiToken(body: body).first;
          if (partnerToken.trim().isEmpty) {
            throw StateError('Missing Partner token');
          }
          await userFactory.savePartnerToken(partnerToken.trim());

          return Resource.content(Login(username: body['login'] ?? ''));
        })
        .onErrorReturnWith(
          (error, stackTrace) => Resource.error(error.errorMessage()),
        )
        .startWith(const Resource.loading());
  }
}