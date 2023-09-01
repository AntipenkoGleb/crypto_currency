// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:crypto_currency/data/data_sources/coin_cap_remote_data_source.dart'
    as _i3;
import 'package:crypto_currency/data/repositories/currency_repository_impl.dart'
    as _i5;
import 'package:crypto_currency/domain/repositories/currency_repository.dart'
    as _i4;
import 'package:crypto_currency/domain/use_cases/get_currencies_use_case.dart'
    as _i6;
import 'package:crypto_currency/presentation/bloc/currency_list/currency_list_bloc.dart'
    as _i7;
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
    gh.lazySingleton<_i3.CoinCapRemoteDataSource>(
        () => _i3.CoinCapRemoteDataSourceImpl());
    gh.lazySingleton<_i4.CurrencyRepository>(
        () => _i5.CurrencyRepositoryImpl());
    gh.lazySingleton<_i6.GetCurrenciesUseCase>(
        () => _i6.GetCurrenciesUseCase());
    gh.factory<_i7.CurrencyListBloc>(
        () => _i7.CurrencyListBloc(gh<_i6.GetCurrenciesUseCase>()));
    return this;
  }
}
