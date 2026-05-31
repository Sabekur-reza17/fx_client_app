import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import 'models/my_stats_dto.dart';
import 'models/trade_dto.dart';
import 'models/account_information_dto.dart';

part 'fx_api_service.g.dart';

@RestApi(parser: Parser.JsonSerializable)
abstract class PeanutFxApiService {
  factory PeanutFxApiService(Dio dio, {String? baseUrl}) = _PeanutFxApiService;

  @POST('/api/ClientCabinetBasic/GetAccountInformation')
  Stream<AccountInformationDto> getAccountInformation({
    @Body() required Map<String, dynamic> body,
  });

  @POST('/api/ClientCabinetFavourite/GetMyStats')
  Future<MyStatsDto> getMyStats({
    @Body() required Map<String, dynamic> body,
  });

  @POST('/api/ClientCabinetBasic/GetLastFourNumbersPhone')
  Stream<String> getLastFourNumbersPhone({
    @Body() required Map<String, dynamic> body,
  });

  @POST('/api/ClientCabinetBasic/GetOpenTrades')
  Future<List<TradeDto>> getOpenTrades({
    @Body() required Map<String, dynamic> body,
  });

  @POST('/api/ClientCabinetBasic/GetClosedTrades')
  Future<List<TradeDto>> getClosedTrades({
    @Body() required Map<String, dynamic> body,
  });

  @PUT('/api/ClientCabinetBasic/UpdatePassword')
  Future<void> updatePassword({
    @Body() required Map<String, dynamic> body,
  });
}

@RestApi(parser: Parser.JsonSerializable)
abstract class PartnerFxApiService {
  factory PartnerFxApiService(Dio dio, {String? baseUrl}) = _PartnerFxApiService;

  // Placeholder; real Partner endpoints added in `signals-feature`.
  @GET('/clientmobile/GetAnalyticSignals/{login}')
  Future<dynamic> getAnalyticSignals(
    @Path('login') String login,
    @Query('tradingsystem') int tradingSystem,
    @Query('pairs') String pairs,
    @Query('from') int from,
    @Query('to') int to,
    @Header('passkey') String passkey,
  );
}
