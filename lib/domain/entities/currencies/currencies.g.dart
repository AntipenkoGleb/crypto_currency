// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'currencies.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Currencies _$$_CurrenciesFromJson(Map<String, dynamic> json) =>
    _$_Currencies(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Currency.fromJson(e as Map<String, dynamic>))
          .toList(),
      timestamp: json['timestamp'] as int?,
    );

Map<String, dynamic> _$$_CurrenciesToJson(_$_Currencies instance) =>
    <String, dynamic>{
      'data': instance.data,
      'timestamp': instance.timestamp,
    };
