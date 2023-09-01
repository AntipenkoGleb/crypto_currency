import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/entities/currency.dart';
import '../../../domain/use_cases/get_currencies_use_case.dart';

part 'currency_list_bloc.freezed.dart';
part 'currency_list_event.dart';
part 'currency_list_state.dart';

@injectable
class CurrencyListBloc extends Bloc<CurrencyListEvent, CurrencyListState> {
  CurrencyListBloc(this.useCase) : super(const CurrencyListState.initial()) {
    on<CurrencyListStartedEvent>(getCurrencies);
  }

  final GetCurrenciesUseCase useCase;

  Future<void> getCurrencies(event, emit) async {
    emit(const CurrencyListState.loading());
    try {
      final currencies = await useCase();
      emit(CurrencyListState.loaded(currencies));
    } catch (e) {
      emit(const CurrencyListState.error());
    }
  }
}
