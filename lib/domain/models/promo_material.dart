import 'package:freezed_annotation/freezed_annotation.dart';

part 'promo_material.freezed.dart';
part 'promo_material.g.dart';

@freezed
abstract class PromoMaterial with _$PromoMaterial {
  const PromoMaterial._();

  const factory PromoMaterial({
    @Default('') String id,
    @Default('') String name,
    @Default('') String type,
    @Default('') String imageUrl,
    @Default('') String targetUrl,
  }) = _PromoMaterial;

  factory PromoMaterial.fromJson(Map<String, dynamic> json) => _$PromoMaterialFromJson(json);
}
