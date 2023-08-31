import '../repositories/currency_repository.dart';

import '../../app/injection.dart';
import '../entities/currency.dart';

class GetCurrenciesUseCase {
  final CurrencyRepository repository = sl<CurrencyRepository>();

  Future<List<Currency>> call() {
    return repository.getCurrencies();
  }
}
