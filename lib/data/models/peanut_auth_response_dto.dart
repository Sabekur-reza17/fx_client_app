import 'package:freezed_annotation/freezed_annotation.dart';

part 'peanut_auth_response_dto.freezed.dart';
part 'peanut_auth_response_dto.g.dart';

@freezed
abstract class PeanutAuthResponseDto with _$PeanutAuthResponseDto {
  const PeanutAuthResponseDto._();
  const factory PeanutAuthResponseDto({
    required bool? result,
    required String? token,
  }) = _PeanutAuthResponseDto;

  factory PeanutAuthResponseDto.fromJson(Map<String, dynamic> json) =>
      _$PeanutAuthResponseDtoFromJson(json);
}

