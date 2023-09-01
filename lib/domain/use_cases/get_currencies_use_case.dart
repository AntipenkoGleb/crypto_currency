import 'package:injectable/injectable.dart';

import '../../app/injection.dart';
import '../entities/currency.dart';
import '../repositories/currency_repository.dart';

@LazySingleton()
class GetCurrenciesUseCase {
  final CurrencyRepository repository = getIt<CurrencyRepository>();

  Future<List<Currency>> call() {
    return repository.getCurrencies();
  }
}
