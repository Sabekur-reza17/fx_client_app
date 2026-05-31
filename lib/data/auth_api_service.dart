import 'package:dio/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

import 'models/peanut_auth_response_dto.dart';

part 'auth_api_service.g.dart';

@RestApi(parser: Parser.JsonSerializable)
abstract class PeanutAuthApiService {
  factory PeanutAuthApiService(Dio dio, {String? baseUrl}) =
      _PeanutAuthApiService;

  @POST('/api/ClientCabinetBasic/IsAccountCredentialsCorrect')
  Stream<PeanutAuthResponseDto> isAccountCredentialsCorrect({
    @Body() required Map<String, String> body,
  });
}

@RestApi(parser: Parser.JsonSerializable)
abstract class PartnerAuthApiService {
  factory PartnerAuthApiService(Dio dio, {String? baseUrl}) =
      _PartnerAuthApiService;

  @POST('/api/Authentication/RequestMoblieCabinetApiToken')
  Stream<String> requestMoblieCabinetApiToken({
    @Body() required Map<String, String> body,
  });
}
