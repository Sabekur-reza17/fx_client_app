// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signal_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SignalDto _$SignalDtoFromJson(Map<String, dynamic> json) => _SignalDto(
  id: (json['Id'] as num?)?.toInt(),
  actualTime: (json['ActualTime'] as num?)?.toInt(),
  comment: json['Comment'] as String?,
  symbol: json['Pair'] as String?,
  action: (json['Cmd'] as num?)?.toInt(),
  tradingSystem: (json['TradingSystem'] as num?)?.toInt(),
  period: json['Period'] as String?,
  price: (json['Price'] as num?)?.toDouble(),
  takeProfit: (json['Tp'] as num?)?.toDouble(),
  stopLoss: (json['Sl'] as num?)?.toDouble(),
  volume: (json['Volume'] as num?)?.toDouble(),
  profit: (json['Profit'] as num?)?.toDouble(),
);

Map<String, dynamic> _$SignalDtoToJson(_SignalDto instance) =>
    <String, dynamic>{
      'Id': instance.id,
      'ActualTime': instance.actualTime,
      'Comment': instance.comment,
      'Pair': instance.symbol,
      'Cmd': instance.action,
      'TradingSystem': instance.tradingSystem,
      'Period': instance.period,
      'Price': instance.price,
      'Tp': instance.takeProfit,
      'Sl': instance.stopLoss,
      'Volume': instance.volume,
      'Profit': instance.profit,
    };
