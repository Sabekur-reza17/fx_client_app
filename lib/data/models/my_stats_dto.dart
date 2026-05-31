import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fx_client_app/domain/models/my_stats.dart';

part 'my_stats_dto.freezed.dart';
part 'my_stats_dto.g.dart';

@freezed
abstract class MyStatsDto with _$MyStatsDto {
  const MyStatsDto._();

  const factory MyStatsDto({
    double? balance,
    int? currency,
    int? currentTradesCount,
    double? currentTradesVolume,
    double? equity,
    double? freeMargin,
    bool? isAnyOpenTrades,
    int? totalTradesCount,
    double? totalTradesVolume,
    String? withdrawalLink,
    String? depositLink,
  }) = _MyStatsDto;

  factory MyStatsDto.fromJson(Map<String, dynamic> json) => _$MyStatsDtoFromJson(json);

  MyStats toDomain() {
    return MyStats(
      balance: balance ?? 0.0,
      currency: currency ?? 0,
      currentTradesCount: currentTradesCount ?? 0,
      currentTradesVolume: currentTradesVolume ?? 0.0,
      equity: equity ?? 0.0,
      freeMargin: freeMargin ?? 0.0,
      isAnyOpenTrades: isAnyOpenTrades ?? false,
      totalTradesCount: totalTradesCount ?? 0,
      totalTradesVolume: totalTradesVolume ?? 0.0,
      withdrawalLink: withdrawalLink ?? '',
      depositLink: depositLink ?? '',
    );
  }
}
