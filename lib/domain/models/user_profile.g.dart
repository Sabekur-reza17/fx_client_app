// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserProfile _$UserProfileFromJson(Map<String, dynamic> json) => _UserProfile(
  name: json['name'] as String? ?? '',
  country: json['country'] as String? ?? '',
  city: json['city'] as String? ?? '',
  address: json['address'] as String? ?? '',
  maskedPhone: json['maskedPhone'] as String? ?? '',
  leverage: (json['leverage'] as num?)?.toInt() ?? 0,
  balance: (json['balance'] as num?)?.toDouble() ?? 0.0,
  equity: (json['equity'] as num?)?.toDouble() ?? 0.0,
  freeMargin: (json['freeMargin'] as num?)?.toDouble() ?? 0.0,
  isSwapFree: json['isSwapFree'] as bool? ?? false,
  verificationLevel: (json['verificationLevel'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$UserProfileToJson(_UserProfile instance) =>
    <String, dynamic>{
      'name': instance.name,
      'country': instance.country,
      'city': instance.city,
      'address': instance.address,
      'maskedPhone': instance.maskedPhone,
      'leverage': instance.leverage,
      'balance': instance.balance,
      'equity': instance.equity,
      'freeMargin': instance.freeMargin,
      'isSwapFree': instance.isSwapFree,
      'verificationLevel': instance.verificationLevel,
    };
