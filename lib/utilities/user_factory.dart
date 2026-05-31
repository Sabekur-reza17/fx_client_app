import 'package:shared_preferences/shared_preferences.dart';

class UserFactory {
  final SharedPreferencesWithCache prefs;

  UserFactory(this.prefs);

  static const String _prefRememberMe = "remember_me";

  static const String _prefJwtToken = "jwt_token";
  static const String _prefPartnerToken = "partner_token";
  static const String _prefLogin = "login";
  static const String _prefPassword = "password";


  bool isRememberMe() {
    return prefs.getBool(_prefRememberMe) ?? false;
  }

  Future<void> saveRememberMe(bool isRememberMe) async {
    await prefs.setBool(_prefRememberMe, isRememberMe);
  }




  bool hasLoggedIn() {
    return  getToken().isNotEmpty;
  }



  Future<void> saveToken(String token) async {
    await prefs.setString(_prefJwtToken, token);
  }

  // String getRefreshToken() => prefs.getString(_prefRefreshToken) ?? "";

  String getToken() => prefs.getString(_prefJwtToken) ?? "";

  Future<void> savePartnerToken(String token) async {
    await prefs.setString(_prefPartnerToken, token);
  }

  String getPartnerToken() => prefs.getString(_prefPartnerToken) ?? "";

  Future<void> saveLogin(String login) async {
    await prefs.setString(_prefLogin, login);
  }

  String getLogin() => prefs.getString(_prefLogin) ?? "";

  Future<void> savePassword(String password) async {
    await prefs.setString(_prefPassword, password);
  }

  String getPassword() => prefs.getString(_prefPassword) ?? "";






  Future<void> logout() async {
    final rememberMe = isRememberMe();

    await prefs.clear();
    if(rememberMe){
      await saveRememberMe(rememberMe);
    }
  }
}
