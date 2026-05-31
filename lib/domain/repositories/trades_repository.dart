import 'package:fx_client_app/domain/models/trade.dart';
import 'package:fx_client_app/utilities/resource.dart';

abstract class TradesRepository {
  Stream<Resource<List<Trade>>> getOpenTrades();
  Stream<Resource<List<Trade>>> getClosedTrades();
}
