import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fx_client_app/domain/models/user_profile.dart';
import 'package:fx_client_app/core/ui_text.dart';

part 'profile_state.freezed.dart';

@freezed
abstract class ProfileState with _$ProfileState {
  const factory ProfileState({
    @Default(false) bool isLoading,
    @Default(null) UiText? error,
    UserProfile? profile,
  }) = _ProfileState;
}

