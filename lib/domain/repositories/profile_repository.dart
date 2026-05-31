import 'package:fx_client_app/domain/models/user_profile.dart';
import 'package:fx_client_app/utilities/resource.dart';

abstract class ProfileRepository {
  Stream<Resource<UserProfile>> loadProfile();
}

