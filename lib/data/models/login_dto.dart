import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/models/login.dart';

part 'login_dto.freezed.dart';
part 'login_dto.g.dart';

@freezed
abstract class LoginDto with _$LoginDto {
  const LoginDto._();
  const factory LoginDto({
    String? username,
  }) = _LoginDto;

  factory LoginDto.fromJson(Map<String, dynamic> json) =>
      _$LoginDtoFromJson(json);

  Login toDomain() => Login(username: username ?? '');
}

