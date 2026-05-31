import 'package:fx_client_app/data/fx_api_service.dart';
import 'package:fx_client_app/domain/models/trade.dart';
import 'package:fx_client_app/domain/repositories/trades_repository.dart';
import 'package:fx_client_app/utilities/resource.dart';
import 'package:fx_client_app/utilities/user_factory.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: TradesRepository)
class TradesRepositoryImpl implements TradesRepository {
  TradesRepositoryImpl(this._apiService, this._userFactory);

  final PeanutFxApiService _apiService;
  final UserFactory _userFactory;

  @override
  Stream<Resource<List<Trade>>> getOpenTrades() async* {
    yield const Resource.loading();
    try {
      final login = int.tryParse(_userFactory.getLogin()) ?? 0;
      final token = _userFactory.getToken();
      
      final nowSec = DateTime.now().millisecondsSinceEpoch ~/ 1000;
      final body = <String, dynamic>{
        'count': 100,
        'offset': 0,
        'from': nowSec - 365 * 24 * 60 * 60, // Last year
        'to': nowSec,
        'login': login,
        'token': token,
      };
      
      final trades = await _apiService.getOpenTrades(body: body);
      yield Resource.content(trades.map((t) => t.toDomain()).toList());
    } catch (e) {
      yield Resource.error(e.toString());
    }
  }

  @override
  Stream<Resource<List<Trade>>> getClosedTrades() async* {
    yield const Resource.loading();
    try {
      final login = int.tryParse(_userFactory.getLogin()) ?? 0;
      final token = _userFactory.getToken();
      
      final nowSec = DateTime.now().millisecondsSinceEpoch ~/ 1000;
      final body = <String, dynamic>{
        'count': 100,
        'offset': 0,
        'from': nowSec - 30 * 24 * 60 * 60, // Last 30 days
        'to': nowSec,
        'login': login,
        'token': token,
      };
      
      final trades = await _apiService.getClosedTrades(body: body);
      yield Resource.content(trades.map((t) => t.toDomain()).toList());
    } catch (e) {
      yield Resource.error(e.toString());
    }
  }
}
