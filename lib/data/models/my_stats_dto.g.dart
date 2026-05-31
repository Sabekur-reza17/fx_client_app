// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_stats_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MyStatsDto _$MyStatsDtoFromJson(Map<String, dynamic> json) => _MyStatsDto(
  balance: (json['balance'] as num?)?.toDouble(),
  currency: (json['currency'] as num?)?.toInt(),
  currentTradesCount: (json['currentTradesCount'] as num?)?.toInt(),
  currentTradesVolume: (json['currentTradesVolume'] as num?)?.toDouble(),
  equity: (json['equity'] as num?)?.toDouble(),
  freeMargin: (json['freeMargin'] as num?)?.toDouble(),
  isAnyOpenTrades: json['isAnyOpenTrades'] as bool?,
  totalTradesCount: (json['totalTradesCount'] as num?)?.toInt(),
  totalTradesVolume: (json['totalTradesVolume'] as num?)?.toDouble(),
  withdrawalLink: json['withdrawalLink'] as String?,
  depositLink: json['depositLink'] as String?,
);

Map<String, dynamic> _$MyStatsDtoToJson(_MyStatsDto instance) =>
    <String, dynamic>{
      'balance': instance.balance,
      'currency': instance.currency,
      'currentTradesCount': instance.currentTradesCount,
      'currentTradesVolume': instance.currentTradesVolume,
      'equity': instance.equity,
      'freeMargin': instance.freeMargin,
      'isAnyOpenTrades': instance.isAnyOpenTrades,
      'totalTradesCount': instance.totalTradesCount,
      'totalTradesVolume': instance.totalTradesVolume,
      'withdrawalLink': instance.withdrawalLink,
      'depositLink': instance.depositLink,
    };
