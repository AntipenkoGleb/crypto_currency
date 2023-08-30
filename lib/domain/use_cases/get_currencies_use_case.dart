import 'package:crypto_currency/domain/repositories/currency_repository.dart';

import '../entities/currency.dart';

class GetCurrenciesUseCase {
  GetCurrenciesUseCase({required this.repository});

  final CurrencyRepository repository;

  Future<List<Currency>> call() {
    return repository.getCurrencies();
  }
}
