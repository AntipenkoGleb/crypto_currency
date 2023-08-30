import 'package:freezed_annotation/freezed_annotation.dart';

part 'currency_model.freezed.dart';
part 'currency_model.g.dart';

@freezed
class CurrencyModel with _$CurrencyModel {
  const factory CurrencyModel({
    String? id,
    String? rank,
    String? symbol,
    String? name,
    String? supply,
    String? maxSupply,
    String? marketCapUsd,
    String? volumeUsd24Hr,
    String? priceUsd,
    String? changePercent24Hr,
    String? vwap24Hr,
    String? explorer,
  }) = Model;

  factory CurrencyModel.fromJson(Map<String, dynamic> json) =>
      _$CurrencyModelFromJson(json);
}
