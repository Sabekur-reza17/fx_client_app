import 'package:freezed_annotation/freezed_annotation.dart';

part 'trade.freezed.dart';
part 'trade.g.dart';

@freezed
abstract class Trade with _$Trade {
  const Trade._();

  const factory Trade({
    @Default(0) int ticket,
    @Default('') String symbol,
    @Default(0) int cmd,
    @Default(0.0) double volume,
    @Default(0) int openTime,
    @Default(0.0) double openPrice,
    @Default(0) int closeTime,
    @Default(0.0) double closePrice,
    @Default(0.0) double profit,
    @Default(0.0) double swaps,
    @Default(0.0) double commission,
  }) = _Trade;

  factory Trade.fromJson(Map<String, dynamic> json) => _$TradeFromJson(json);
}
