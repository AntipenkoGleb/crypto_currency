// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:crypto_currency/data/data_sources/api_client.dart' as _i3;
import 'package:crypto_currency/data/data_sources/coin_cap_remote_data_source.dart'
    as _i4;
import 'package:crypto_currency/data/repositories/currency_repository_impl.dart'
    as _i6;
import 'package:crypto_currency/domain/repositories/currency_repository.dart'
    as _i5;
import 'package:crypto_currency/domain/use_cases/get_currencies_use_case.dart'
    as _i7;
import 'package:crypto_currency/presentation/bloc/currency_list/currency_list_bloc.dart'
    as _i8;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i3.DioApiClient>(() => _i3.DioApiClient());
    gh.lazySingleton<_i4.CoinCapRemoteDataSource>(
        () => _i4.CoinCapRemoteDataSourceImpl(gh<_i3.DioApiClient>()));
    gh.lazySingleton<_i5.CurrencyRepository>(
        () => _i6.CurrencyRepositoryImpl(gh<_i4.CoinCapRemoteDataSource>()));
    gh.lazySingleton<_i7.GetCurrenciesUseCase>(
        () => _i7.GetCurrenciesUseCase(gh<_i5.CurrencyRepository>()));
    gh.factory<_i8.CurrencyListBloc>(
        () => _i8.CurrencyListBloc(gh<_i7.GetCurrenciesUseCase>()));
    return this;
  }
}
