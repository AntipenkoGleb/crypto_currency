// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'currencies_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$Model _$$ModelFromJson(Map<String, dynamic> json) => _$Model(
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => CurrencyModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      timestamp: json['timestamp'] as int? ?? 0,
    );

Map<String, dynamic> _$$ModelToJson(_$Model instance) => <String, dynamic>{
      'data': instance.data,
      'timestamp': instance.timestamp,
    };
