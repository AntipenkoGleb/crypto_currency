import 'api_client.dart';
import 'package:injectable/injectable.dart';

import '../models/currencies/currencies_response_model.dart';

abstract class CoinCapRemoteDataSource {
  Future<CurrenciesResponseModel> getCurrencies();
}

@LazySingleton(as: CoinCapRemoteDataSource)
class CoinCapRemoteDataSourceImpl extends CoinCapRemoteDataSource {
  CoinCapRemoteDataSourceImpl(this.client);

  final DioApiClient client;

  @override
  Future<CurrenciesResponseModel> getCurrencies() async {
    final response = await client.get('/assets');
    return CurrenciesResponseModel.fromJson(response.data);
  }
}
