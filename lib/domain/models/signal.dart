import 'package:freezed_annotation/freezed_annotation.dart';

part 'signal.freezed.dart';
part 'signal.g.dart';

@freezed
abstract class Signal with _$Signal {
  const Signal._();

  const factory Signal({
    @Default(0) int id,
    @Default(0) int actualTime,
    @Default('') String comment,
    @Default('') String symbol,
    @Default(0) int action,
    @Default(0) int tradingSystem,
    @Default('') String period,
    @Default(0.0) double price,
    @Default(0.0) double takeProfit,
    @Default(0.0) double stopLoss,
    @Default(0.0) double volume,
    @Default(0.0) double profit,
  }) = _Signal;

  factory Signal.fromJson(Map<String, dynamic> json) => _$SignalFromJson(json);
}
