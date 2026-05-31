// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signal.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Signal _$SignalFromJson(Map<String, dynamic> json) => _Signal(
  id: (json['id'] as num?)?.toInt() ?? 0,
  actualTime: (json['actualTime'] as num?)?.toInt() ?? 0,
  comment: json['comment'] as String? ?? '',
  symbol: json['symbol'] as String? ?? '',
  action: (json['action'] as num?)?.toInt() ?? 0,
  tradingSystem: (json['tradingSystem'] as num?)?.toInt() ?? 0,
  period: json['period'] as String? ?? '',
  price: (json['price'] as num?)?.toDouble() ?? 0.0,
  takeProfit: (json['takeProfit'] as num?)?.toDouble() ?? 0.0,
  stopLoss: (json['stopLoss'] as num?)?.toDouble() ?? 0.0,
  volume: (json['volume'] as num?)?.toDouble() ?? 0.0,
  profit: (json['profit'] as num?)?.toDouble() ?? 0.0,
);

Map<String, dynamic> _$SignalToJson(_Signal instance) => <String, dynamic>{
  'id': instance.id,
  'actualTime': instance.actualTime,
  'comment': instance.comment,
  'symbol': instance.symbol,
  'action': instance.action,
  'tradingSystem': instance.tradingSystem,
  'period': instance.period,
  'price': instance.price,
  'takeProfit': instance.takeProfit,
  'stopLoss': instance.stopLoss,
  'volume': instance.volume,
  'profit': instance.profit,
};
