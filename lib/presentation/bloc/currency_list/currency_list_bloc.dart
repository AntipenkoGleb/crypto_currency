import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../app/injection.dart';
import '../../../domain/entities/currency.dart';
import '../../../domain/use_cases/get_currencies_use_case.dart';

part 'currency_list_event.dart';
part 'currency_list_state.dart';
part 'currency_list_bloc.freezed.dart';

class CurrencyListBloc extends Bloc<CurrencyListEvent, CurrencyListState> {
  CurrencyListBloc() : super(const CurrencyListState.initial()) {
    on<CurrencyListStartedEvent>(getCurrencies);
  }

  final useCase = sl<GetCurrenciesUseCase>();

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
