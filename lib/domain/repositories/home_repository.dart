import 'package:fx_client_app/domain/models/my_stats.dart';
import 'package:fx_client_app/utilities/resource.dart';

abstract class HomeRepository {
  Stream<Resource<MyStats>> getStats();
}
