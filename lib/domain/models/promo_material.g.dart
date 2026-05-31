// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'promo_material.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PromoMaterial _$PromoMaterialFromJson(Map<String, dynamic> json) =>
    _PromoMaterial(
      id: json['id'] as String? ?? '',
      name: json['name'] as String? ?? '',
      type: json['type'] as String? ?? '',
      imageUrl: json['imageUrl'] as String? ?? '',
      targetUrl: json['targetUrl'] as String? ?? '',
    );

Map<String, dynamic> _$PromoMaterialToJson(_PromoMaterial instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'type': instance.type,
      'imageUrl': instance.imageUrl,
      'targetUrl': instance.targetUrl,
    };
