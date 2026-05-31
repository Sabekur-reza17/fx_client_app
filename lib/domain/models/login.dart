import 'package:freezed_annotation/freezed_annotation.dart';

part 'login.freezed.dart';
part 'login.g.dart';

@freezed
abstract class Login with _$Login {
  const Login._();

  const factory Login({
    @Default('') String username,
  }) = _Login;

  factory Login.fromJson(Map<String, dynamic> json) => _$LoginFromJson(json);
}
