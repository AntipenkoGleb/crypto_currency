import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../models/currencies/currencies_response_model.dart';

abstract class CoinCapRemoteDataSource {
  Future<CurrenciesResponseModel> getCurrencies();
}

@LazySingleton(as: CoinCapRemoteDataSource)
class CoinCapRemoteDataSourceImpl extends CoinCapRemoteDataSource {
  final dio = Dio(
    BaseOptions(
      headers: {
        'Content-Type': 'application/json',
      },
      sendTimeout: const Duration(seconds: 3),
    ),
  );

  @override
  Future<CurrenciesResponseModel> getCurrencies() async {
    final response = await dio.get('https://api.coincap.io/v2/assets');

    final currencies = CurrenciesResponseModel.fromJson(response.data);
    return currencies;
  }
}
