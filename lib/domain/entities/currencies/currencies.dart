import 'package:freezed_annotation/freezed_annotation.dart';

import '../currency/currency.dart';

part 'currencies.freezed.dart';
part 'currencies.g.dart';

@freezed
class Currencies with _$Currencies {
  factory Currencies({
    List<Currency>? data,
    int? timestamp,
  }) = _Currencies;

  factory Currencies.fromJson(Map<String, dynamic> json) =>
      _$CurrenciesFromJson(json);
}
