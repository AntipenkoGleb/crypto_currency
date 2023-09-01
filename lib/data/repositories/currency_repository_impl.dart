import '../data_sources/api_client.dart';
import 'package:injectable/injectable.dart';

import '../../domain/entities/currency.dart';
import '../../domain/repositories/currency_repository.dart';
import '../data_sources/coin_cap_remote_data_source.dart';
import '../models/currency/currency_model.dart';

@LazySingleton(as: CurrencyRepository)
class CurrencyRepositoryImpl extends CurrencyRepository {
  CurrencyRepositoryImpl(this.dataSource);

  final CoinCapRemoteDataSource dataSource;

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
      name: model.name ?? '',
      imageUrl: DioApiClient.getImageAssetUrl(model.symbol ?? ''),
      supply: double.tryParse(model.supply ?? ''),
      maxSupply: double.tryParse(model.maxSupply ?? ''),
      marketCapUsd: double.tryParse(model.marketCapUsd ?? ''),
      volumeUsd24Hr: double.tryParse(model.volumeUsd24Hr ?? ''),
      priceUsd: double.tryParse(model.priceUsd ?? ''),
      changePercent24Hr: double.tryParse(model.changePercent24Hr ?? ''),
      vwap24Hr: double.tryParse(model.vwap24Hr ?? ''),
      explorer: model.explorer ?? '',
      date: DateTime.fromMillisecondsSinceEpoch(timestamp),
    );
  }
}
