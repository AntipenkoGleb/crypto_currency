import '../../app/injection.dart';
import '../entities/currency.dart';
import '../repositories/currency_repository.dart';

class GetCurrenciesUseCase {
  final CurrencyRepository repository = sl<CurrencyRepository>();

  Future<List<Currency>> call() {
    return repository.getCurrencies();
  }
}
