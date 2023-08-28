part of 'currency_list_bloc.dart';

@freezed
class CurrencyListState with _$CurrencyListState {
  const factory CurrencyListState.initial() = CurrencyListInitial;
  const factory CurrencyListState.loading() = CurrencyListLoading;
  const factory CurrencyListState.loaded(
    List<Currency> currencies,
  ) = CurrencyListLoaded;
}
