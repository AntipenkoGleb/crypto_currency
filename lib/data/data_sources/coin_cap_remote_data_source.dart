import '../models/currencies/currencies_response_model.dart';
import 'package:dio/dio.dart';

abstract class CoinCapRemoteDataSource {
  Future<CurrenciesResponseModel> getCurrencies();
}

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
