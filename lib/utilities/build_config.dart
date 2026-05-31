import 'package:flutter_dotenv/flutter_dotenv.dart';

class BuildConfig {
  const BuildConfig._();

  static String get peanutBaseUrl => dotenv.env['PEANUT_BASE_URL'] ?? '';
  static String get partnerBaseUrl => dotenv.env['PARTNER_BASE_URL'] ?? '';
  static String get soapBaseUrl => dotenv.env['SOAP_BASE_URL'] ?? '';

  static void validate() {
    if (peanutBaseUrl.isEmpty || partnerBaseUrl.isEmpty || soapBaseUrl.isEmpty) {
      throw StateError(
        'Missing .env config. Ensure PEANUT_BASE_URL, PARTNER_BASE_URL, SOAP_BASE_URL are set.',
      );
    }
  }
}