import 'package:fx_client_app/domain/models/login.dart';
import 'package:fx_client_app/utilities/resource.dart';

abstract class AuthRepository {
  Stream<Resource<Login>> doLogin({required Map<String, String> body});
}