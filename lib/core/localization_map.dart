import '../l10n/app_localizations.dart';

typedef LocalizationGetter = String Function(
  AppLocalizations loc,
  Map<String, Object> args,
);

/// Minimal key->getter map used by [UiText.localized].
///
/// As we add features, keep this list small and aligned with `app_en.arb`.
final Map<String, LocalizationGetter> localizationMap = {
  'appName': (loc, _) => loc.appName,
  'welcomeBack': (loc, _) => loc.welcomeBack,
  'getBackLearning': (loc, _) => loc.getBackLearning,
  'phoneNumber': (loc, _) => loc.phoneNumber,
  'enterPhoneNumber': (loc, _) => loc.enterPhoneNumber,
  'password': (loc, _) => loc.password,
  'enterPassword': (loc, _) => loc.enterPassword,
  'rememberMe': (loc, _) => loc.rememberMe,
  'forgotPassword': (loc, _) => loc.forgotPassword,
  'login': (loc, _) => loc.login,
  'dontHaveAccount': (loc, _) => loc.dontHaveAccount,
  'createAccount': (loc, _) => loc.createAccount,
  'setPassword': (loc, _) => loc.setPassword,
  'loginPhoneRequired': (loc, _) => loc.loginPhoneRequired,
  'invalidPhoneNumber': (loc, _) => loc.invalidPhoneNumber,
  'phoneNumberOrPasswordIncorrect': (loc, _) =>
      loc.phoneNumberOrPasswordIncorrect,
  'passwordEnglishCharactersOnly': (loc, _) => loc.passwordEnglishCharactersOnly,
};

