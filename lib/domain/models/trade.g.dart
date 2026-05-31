// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trade.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Trade _$TradeFromJson(Map<String, dynamic> json) => _Trade(
  ticket: (json['ticket'] as num?)?.toInt() ?? 0,
  symbol: json['symbol'] as String? ?? '',
  cmd: (json['cmd'] as num?)?.toInt() ?? 0,
  volume: (json['volume'] as num?)?.toDouble() ?? 0.0,
  openTime: (json['openTime'] as num?)?.toInt() ?? 0,
  openPrice: (json['openPrice'] as num?)?.toDouble() ?? 0.0,
  closeTime: (json['closeTime'] as num?)?.toInt() ?? 0,
  closePrice: (json['closePrice'] as num?)?.toDouble() ?? 0.0,
  profit: (json['profit'] as num?)?.toDouble() ?? 0.0,
  swaps: (json['swaps'] as num?)?.toDouble() ?? 0.0,
  commission: (json['commission'] as num?)?.toDouble() ?? 0.0,
);

Map<String, dynamic> _$TradeToJson(_Trade instance) => <String, dynamic>{
  'ticket': instance.ticket,
  'symbol': instance.symbol,
  'cmd': instance.cmd,
  'volume': instance.volume,
  'openTime': instance.openTime,
  'openPrice': instance.openPrice,
  'closeTime': instance.closeTime,
  'closePrice': instance.closePrice,
  'profit': instance.profit,
  'swaps': instance.swaps,
  'commission': instance.commission,
};
