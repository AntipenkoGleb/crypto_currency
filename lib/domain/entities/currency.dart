import 'package:freezed_annotation/freezed_annotation.dart';

part 'currency.freezed.dart';

@freezed
class Currency with _$Currency {
  const factory Currency({
    required String id,
    required int rank,
    required String symbol,
    required String name,
    required String imageUrl,
    double? supply,
    double? maxSupply,
    double? marketCapUsd,
    double? volumeUsd24Hr,
    double? priceUsd,
    double? changePercent24Hr,
    double? vwap24Hr,
    required String explorer,
    required DateTime date,
  }) = _Currency;
}
