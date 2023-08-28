import 'package:crypto_currency/domain/entities/currency/currency.dart';
import 'package:crypto_currency/domain/repositories/currency_repository.dart';

class GetCurrenciesUseCase {
  final CurrencyRepository repository;

  GetCurrenciesUseCase({required this.repository});

  Future<List<Currency>> call() {
    return repository.getCurrencies();
  }
}
