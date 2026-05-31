import 'package:fx_client_app/data/fx_api_service.dart';
import 'package:fx_client_app/domain/models/user_profile.dart';
import 'package:fx_client_app/domain/repositories/profile_repository.dart';
import 'package:fx_client_app/utilities/extensions/error_message_extensions.dart';
import 'package:fx_client_app/utilities/resource.dart';
import 'package:fx_client_app/utilities/user_factory.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

@Singleton(as: ProfileRepository)
class ProfileRepositoryImpl extends ProfileRepository {
  ProfileRepositoryImpl(this.api, this.userFactory);

  final PeanutFxApiService api;
  final UserFactory userFactory;

  @override
  Stream<Resource<UserProfile>> loadProfile() {
    final login = userFactory.getLogin();
    final token = userFactory.getToken();

    final body = <String, dynamic>{
      'login': int.tryParse(login) ?? login,
      'token': token,
    };

    final account$ = api
        .getAccountInformation(body: body)
        .map((dto) => dto);
    final phone$ = api.getLastFourNumbersPhone(body: body);

    return Rx.combineLatest2(account$, phone$, (dto, maskedPhone) {
      return dto.toDomain(maskedPhone);
    })
        .map((profile) => Resource.content(profile))
        .onErrorReturnWith((e, st) => Resource.error(e.errorMessage()))
        .startWith(const Resource.loading());
  }
}

