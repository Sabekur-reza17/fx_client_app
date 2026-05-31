import 'package:fx_client_app/data/fx_api_service.dart';
import 'package:fx_client_app/domain/repositories/settings_repository.dart';
import 'package:fx_client_app/utilities/resource.dart';
import 'package:fx_client_app/utilities/user_factory.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: SettingsRepository)
class SettingsRepositoryImpl implements SettingsRepository {
  SettingsRepositoryImpl(this._apiService, this._userFactory);

  final PeanutFxApiService _apiService;
  final UserFactory _userFactory;

  @override
  Future<Resource<void>> updatePassword(String oldPassword, String newPassword) async {
    try {
      final login = int.tryParse(_userFactory.getLogin()) ?? 0;
      final token = _userFactory.getToken();
      
      final body = <String, dynamic>{
        'login': login,
        'token': token,
        'oldPassword': oldPassword,
        'newPassword': newPassword,
      };
      
      await _apiService.updatePassword(body: body);
      return const Resource.content(null);
    } catch (e) {
      return Resource.error(e.toString());
    }
  }
}
