import '../data_sources/coin_cap_remote_data_source.dart';
import '../../domain/entities/currency/currency.dart';
import '../../domain/repositories/currency_repository.dart';

class CurrencyRepositoryImpl extends CurrencyRepository {
  final CoinCapRemoteDataSource dataSource = CoinCapRemoteDataSourceImpl();

  @override
  Future<List<Currency>> getCurrencies() async {
    return dataSource.getCurrencies();
  }
}
