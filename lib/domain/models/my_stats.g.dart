// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_stats.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MyStats _$MyStatsFromJson(Map<String, dynamic> json) => _MyStats(
  balance: (json['balance'] as num?)?.toDouble() ?? 0.0,
  currency: (json['currency'] as num?)?.toInt() ?? 0,
  currentTradesCount: (json['currentTradesCount'] as num?)?.toInt() ?? 0,
  currentTradesVolume: (json['currentTradesVolume'] as num?)?.toDouble() ?? 0.0,
  equity: (json['equity'] as num?)?.toDouble() ?? 0.0,
  freeMargin: (json['freeMargin'] as num?)?.toDouble() ?? 0.0,
  isAnyOpenTrades: json['isAnyOpenTrades'] as bool? ?? false,
  totalTradesCount: (json['totalTradesCount'] as num?)?.toInt() ?? 0,
  totalTradesVolume: (json['totalTradesVolume'] as num?)?.toDouble() ?? 0.0,
  withdrawalLink: json['withdrawalLink'] as String? ?? '',
  depositLink: json['depositLink'] as String? ?? '',
);

Map<String, dynamic> _$MyStatsToJson(_MyStats instance) => <String, dynamic>{
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
