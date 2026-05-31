import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fx_client_app/domain/models/trade.dart';

part 'trade_dto.freezed.dart';
part 'trade_dto.g.dart';

@freezed
abstract class TradeDto with _$TradeDto {
  const TradeDto._();

  const factory TradeDto({
    int? ticket,
    String? symbol,
    int? cmd,
    double? volume,
    int? openTime,
    double? openPrice,
    int? closeTime,
    double? closePrice,
    double? profit,
    double? swaps,
    double? commission,
  }) = _TradeDto;

  factory TradeDto.fromJson(Map<String, dynamic> json) => _$TradeDtoFromJson(json);

  Trade toDomain() {
    return Trade(
      ticket: ticket ?? 0,
      symbol: symbol ?? '',
      cmd: cmd ?? 0,
      volume: volume ?? 0.0,
      openTime: openTime ?? 0,
      openPrice: openPrice ?? 0.0,
      closeTime: closeTime ?? 0,
      closePrice: closePrice ?? 0.0,
      profit: profit ?? 0.0,
      swaps: swaps ?? 0.0,
      commission: commission ?? 0.0,
    );
  }
}
