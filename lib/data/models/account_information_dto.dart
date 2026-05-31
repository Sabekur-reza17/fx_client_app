import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fx_client_app/domain/models/user_profile.dart';

part 'account_information_dto.freezed.dart';
part 'account_information_dto.g.dart';

@freezed
abstract class AccountInformationDto with _$AccountInformationDto {
  const AccountInformationDto._();
  const factory AccountInformationDto({
    String? address,
    double? balance,
    String? city,
    String? country,
    int? currency,
    int? currentTradesCount,
    double? currentTradesVolume,
    double? equity,
    double? freeMargin,
    bool? isAnyOpenTrades,
    bool? isSwapFree,
    int? leverage,
    String? name,
    String? phone,
    int? totalTradesCount,
    double? totalTradesVolume,
    int? type,
    int? verificationLevel,
    String? zipCode,
  }) = _AccountInformationDto;

  factory AccountInformationDto.fromJson(Map<String, dynamic> json) =>
      _$AccountInformationDtoFromJson(json);

  UserProfile toDomain(String maskedPhone) {
    return UserProfile(
      name: name ?? '',
      country: country ?? '',
      city: city ?? '',
      address: address ?? '',
      maskedPhone: maskedPhone,
      leverage: leverage ?? 0,
      balance: balance ?? 0.0,
      equity: equity ?? 0.0,
      freeMargin: freeMargin ?? 0.0,
      isSwapFree: isSwapFree ?? false,
      verificationLevel: verificationLevel ?? 0,
    );
  }
}

