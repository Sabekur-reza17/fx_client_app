import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_profile.freezed.dart';
part 'user_profile.g.dart';

@freezed
abstract class UserProfile with _$UserProfile {
  const UserProfile._();
  const factory UserProfile({
    @Default('') String name,
    @Default('') String country,
    @Default('') String city,
    @Default('') String address,
    @Default('') String maskedPhone,
    @Default(0) int leverage,
    @Default(0.0) double balance,
    @Default(0.0) double equity,
    @Default(0.0) double freeMargin,
    @Default(false) bool isSwapFree,
    @Default(0) int verificationLevel,
  }) = _UserProfile;

  factory UserProfile.fromJson(Map<String, dynamic> json) =>
      _$UserProfileFromJson(json);
}

