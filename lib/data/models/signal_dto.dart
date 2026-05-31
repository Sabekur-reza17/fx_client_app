// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fx_client_app/domain/models/signal.dart';

part 'signal_dto.freezed.dart';
part 'signal_dto.g.dart';

@freezed
abstract class SignalDto with _$SignalDto {
  const SignalDto._();

  const factory SignalDto({
    @JsonKey(name: 'Id') int? id,
    @JsonKey(name: 'ActualTime') int? actualTime,
    @JsonKey(name: 'Comment') String? comment,
    @JsonKey(name: 'Pair') String? symbol,
    @JsonKey(name: 'Cmd') int? action,
    @JsonKey(name: 'TradingSystem') int? tradingSystem,
    @JsonKey(name: 'Period') String? period,
    @JsonKey(name: 'Price') double? price,
    @JsonKey(name: 'Tp') double? takeProfit,
    @JsonKey(name: 'Sl') double? stopLoss,
    @JsonKey(name: 'Volume') double? volume,
    @JsonKey(name: 'Profit') double? profit,
  }) = _SignalDto;

  factory SignalDto.fromJson(Map<String, dynamic> json) => _$SignalDtoFromJson(json);

  Signal toDomain() {
    return Signal(
      id: id ?? 0,
      actualTime: actualTime ?? 0,
      comment: comment ?? '',
      symbol: symbol ?? '',
      action: action ?? 0,
      tradingSystem: tradingSystem ?? 0,
      period: period ?? '',
      price: price ?? 0.0,
      takeProfit: takeProfit ?? 0.0,
      stopLoss: stopLoss ?? 0.0,
      volume: volume ?? 0.0,
      profit: profit ?? 0.0,
    );
  }
}
