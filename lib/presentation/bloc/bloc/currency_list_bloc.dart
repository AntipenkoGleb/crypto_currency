import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:crypto_currency/data/repositories/currency_repository_impl.dart';
import 'package:crypto_currency/domain/entities/currencies/currencies.dart';
import 'package:crypto_currency/domain/repositories/currency_repository.dart';
import 'package:crypto_currency/domain/use_cases/get_currencies_use_case.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/currency/currency.dart';

part 'currency_list_event.dart';
part 'currency_list_state.dart';
part 'currency_list_bloc.freezed.dart';

// /// Must be top-level function
// Map<String, dynamic> _parseAndDecode(String response) {
//   return jsonDecode(response) as Map<String, dynamic>;
// }

// Future<Map<String, dynamic>> parseJson(String text) {
//   return compute(_parseAndDecode, text);
// }

class CurrencyListBloc extends Bloc<CurrencyListEvent, CurrencyListState> {
  final useCase = GetCurrenciesUseCase(repository: CurrencyRepositoryImpl());
  CurrencyListBloc() : super(const CurrencyListState.initial()) {
    on<CurrencyListStartedEvent>(getCurrencies);
  }

  Future<void> getCurrencies(event, emit) async {
    emit(const CurrencyListState.loading());
    final currencies = await useCase();
    emit(CurrencyListState.loaded(currencies));
  }
}
