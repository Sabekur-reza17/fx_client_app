import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fx_client_app/domain/models/promo_material.dart';

part 'promo_materials_state.freezed.dart';

@freezed
abstract class PromoMaterialsState with _$PromoMaterialsState {
  const factory PromoMaterialsState({
    @Default(false) bool isLoading,
    @Default([]) List<PromoMaterial> promos,
    String? error,
  }) = _PromoMaterialsState;
}
