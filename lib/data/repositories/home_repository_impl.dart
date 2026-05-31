import 'package:fx_client_app/data/fx_api_service.dart';
import 'package:fx_client_app/domain/models/my_stats.dart';
import 'package:fx_client_app/domain/repositories/home_repository.dart';
import 'package:fx_client_app/utilities/extensions/error_message_extensions.dart';
import 'package:fx_client_app/utilities/resource.dart';
import 'package:fx_client_app/utilities/user_factory.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: HomeRepository)
class HomeRepositoryImpl extends HomeRepository {
  HomeRepositoryImpl(this.api, this.userFactory);

  final PeanutFxApiService api;
  final UserFactory userFactory;

  @override
  Stream<Resource<MyStats>> getStats() async* {
    yield const Resource.loading();
    try {
      final login = userFactory.getLogin();
      final token = userFactory.getToken();

      final body = <String, dynamic>{
        'login': int.tryParse(login) ?? login,
        'token': token,
      };

      final stats = await api.getMyStats(body: body);
      yield Resource.content(stats.toDomain());
    } catch (e) {
      yield Resource.error(e.errorMessage());
    }
  }
}
