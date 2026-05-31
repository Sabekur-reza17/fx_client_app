import 'package:fx_client_app/utilities/resource.dart';

abstract class SettingsRepository {
  Future<Resource<void>> updatePassword(String oldPassword, String newPassword);
}
