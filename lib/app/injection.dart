import 'package:injectable/injectable.dart';
import 'package:get_it/get_it.dart';

import '../data/repositories/currency_repository_impl.dart';
import '../domain/repositories/currency_repository.dart';
import '../domain/use_cases/get_currencies_use_case.dart';
import '../data/data_sources/coin_cap_remote_data_source.dart';

import 'injection.config.dart';

final getIt = GetIt.instance;

void initServiceLocator() {
  getIt.registerSingleton<CoinCapRemoteDataSource>(
      CoinCapRemoteDataSourceImpl());
  getIt.registerSingleton<CurrencyRepository>(CurrencyRepositoryImpl());
  getIt.registerSingleton(GetCurrenciesUseCase());
}

@injectableInit
void configureDependencies() => getIt.init();
