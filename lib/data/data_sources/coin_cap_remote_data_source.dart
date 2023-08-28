import 'package:crypto_currency/domain/entities/currency/currency.dart';
import 'package:dio/dio.dart';

import '../../domain/entities/currencies/currencies.dart';

abstract class CoinCapRemoteDataSource {
  Future<List<Currency>> getCurrencies();
}

class CoinCapRemoteDataSourceImpl extends CoinCapRemoteDataSource {
  final dio = Dio(
    BaseOptions(
      headers: {
        'Content-Type': 'application/json',
      },
    ),
  );

  @override
  Future<List<Currency>> getCurrencies() async {
    final response = await dio.get('https://api.coincap.io/v2/assets');
    final currencies = Currencies.fromJson(response.data);
    return currencies.data!;
  }
}
