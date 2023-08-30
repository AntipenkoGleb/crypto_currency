import 'package:freezed_annotation/freezed_annotation.dart';

import '../currency/currency_model.dart';

part 'currencies_response_model.freezed.dart';
part 'currencies_response_model.g.dart';

@freezed
class CurrenciesResponseModel with _$CurrenciesResponseModel {
  const factory CurrenciesResponseModel({
    @Default([]) List<CurrencyModel> data,
    @Default(0) int timestamp,
  }) = Model;

  factory CurrenciesResponseModel.fromJson(Map<String, dynamic> json) =>
      _$CurrenciesResponseModelFromJson(json);
}
