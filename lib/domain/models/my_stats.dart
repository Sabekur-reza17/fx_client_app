import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_stats.freezed.dart';
part 'my_stats.g.dart';

@freezed
abstract class MyStats with _$MyStats {
  const MyStats._();

  const factory MyStats({
    @Default(0.0) double balance,
    @Default(0) int currency,
    @Default(0) int currentTradesCount,
    @Default(0.0) double currentTradesVolume,
    @Default(0.0) double equity,
    @Default(0.0) double freeMargin,
    @Default(false) bool isAnyOpenTrades,
    @Default(0) int totalTradesCount,
    @Default(0.0) double totalTradesVolume,
    @Default('') String withdrawalLink,
    @Default('') String depositLink,
  }) = _MyStats;

  factory MyStats.fromJson(Map<String, dynamic> json) => _$MyStatsFromJson(json);
}
