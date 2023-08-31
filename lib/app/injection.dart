import '../data/repositories/currency_repository_impl.dart';
import '../domain/repositories/currency_repository.dart';
import '../domain/use_cases/get_currencies_use_case.dart';
import 'package:get_it/get_it.dart';

import '../data/data_sources/coin_cap_remote_data_source.dart';

final sl = GetIt.instance;

void initServiceLocator() {
  sl.registerSingleton<CoinCapRemoteDataSource>(CoinCapRemoteDataSourceImpl());
  sl.registerSingleton<CurrencyRepository>(CurrencyRepositoryImpl());
  sl.registerSingleton(GetCurrenciesUseCase());
}
