import 'package:injectable/injectable.dart';

import '../entities/currency.dart';
import '../repositories/currency_repository.dart';

@LazySingleton()
class GetCurrenciesUseCase {
  GetCurrenciesUseCase(this.repository);

  final CurrencyRepository repository;

  Future<List<Currency>> call() {
    return repository.getCurrencies();
  }
}
