// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trade_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TradeDto _$TradeDtoFromJson(Map<String, dynamic> json) => _TradeDto(
  ticket: (json['ticket'] as num?)?.toInt(),
  symbol: json['symbol'] as String?,
  cmd: (json['cmd'] as num?)?.toInt(),
  volume: (json['volume'] as num?)?.toDouble(),
  openTime: (json['openTime'] as num?)?.toInt(),
  openPrice: (json['openPrice'] as num?)?.toDouble(),
  closeTime: (json['closeTime'] as num?)?.toInt(),
  closePrice: (json['closePrice'] as num?)?.toDouble(),
  profit: (json['profit'] as num?)?.toDouble(),
  swaps: (json['swaps'] as num?)?.toDouble(),
  commission: (json['commission'] as num?)?.toDouble(),
);

Map<String, dynamic> _$TradeDtoToJson(_TradeDto instance) => <String, dynamic>{
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
