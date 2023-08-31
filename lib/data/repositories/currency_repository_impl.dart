import '../../app/injection.dart';

import '../../domain/entities/currency.dart';
import '../data_sources/coin_cap_remote_data_source.dart';
import '../../domain/repositories/currency_repository.dart';
import '../models/currency/currency_model.dart';

class CurrencyRepositoryImpl extends CurrencyRepository {
  final CoinCapRemoteDataSource dataSource = sl<CoinCapRemoteDataSource>();

  @override
  Future<List<Currency>> getCurrencies() async {
    final currencies = await dataSource.getCurrencies();
    return currencies.data
        .map((model) => _mapCurrencyModelToEntity(model, currencies.timestamp))
        .toList();
  }

  Currency _mapCurrencyModelToEntity(CurrencyModel model, int timestamp) {
    return Currency(
      id: model.id ?? 'none',
      rank: int.parse(model.rank!),
      symbol: model.symbol ?? '',
      name: model.supply ?? '',
      supply: double.tryParse(model.supply ?? ''),
      maxSupply: double.tryParse(model.maxSupply ?? ''),
      marketCapUsd: double.tryParse(model.marketCapUsd ?? ''),
      volumeUsd24Hr: double.tryParse(model.volumeUsd24Hr ?? ''),
      priceUsd: double.tryParse(model.priceUsd ?? ''),
      changePercent24Hr: double.tryParse(model.changePercent24Hr ?? ''),
      vwap24Hr: double.tryParse(model.vwap24Hr ?? ''),
      explorer: model.explorer ?? '',
      timestamp: timestamp,
    );
  }
}
