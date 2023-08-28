import '../entities/currency/currency.dart';

abstract class CurrencyRepository {
  Future<List<Currency>> getCurrencies();
}
