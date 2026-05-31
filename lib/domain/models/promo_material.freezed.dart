// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'promo_material.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PromoMaterial {

 String get id; String get name; String get type; String get imageUrl; String get targetUrl;
/// Create a copy of PromoMaterial
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PromoMaterialCopyWith<PromoMaterial> get copyWith => _$PromoMaterialCopyWithImpl<PromoMaterial>(this as PromoMaterial, _$identity);

  /// Serializes this PromoMaterial to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PromoMaterial&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.type, type) || other.type == type)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.targetUrl, targetUrl) || other.targetUrl == targetUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,type,imageUrl,targetUrl);

@override
String toString() {
  return 'PromoMaterial(id: $id, name: $name, type: $type, imageUrl: $imageUrl, targetUrl: $targetUrl)';
}


}

/// @nodoc
abstract mixin class $PromoMaterialCopyWith<$Res>  {
  factory $PromoMaterialCopyWith(PromoMaterial value, $Res Function(PromoMaterial) _then) = _$PromoMaterialCopyWithImpl;
@useResult
$Res call({
 String id, String name, String type, String imageUrl, String targetUrl
});




}
/// @nodoc
class _$PromoMaterialCopyWithImpl<$Res>
    implements $PromoMaterialCopyWith<$Res> {
  _$PromoMaterialCopyWithImpl(this._self, this._then);

  final PromoMaterial _self;
  final $Res Function(PromoMaterial) _then;

/// Create a copy of PromoMaterial
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? type = null,Object? imageUrl = null,Object? targetUrl = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,targetUrl: null == targetUrl ? _self.targetUrl : targetUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PromoMaterial].
extension PromoMaterialPatterns on PromoMaterial {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PromoMaterial value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PromoMaterial() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PromoMaterial value)  $default,){
final _that = this;
switch (_that) {
case _PromoMaterial():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PromoMaterial value)?  $default,){
final _that = this;
switch (_that) {
case _PromoMaterial() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String type,  String imageUrl,  String targetUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PromoMaterial() when $default != null:
return $default(_that.id,_that.name,_that.type,_that.imageUrl,_that.targetUrl);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String type,  String imageUrl,  String targetUrl)  $default,) {final _that = this;
switch (_that) {
case _PromoMaterial():
return $default(_that.id,_that.name,_that.type,_that.imageUrl,_that.targetUrl);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String type,  String imageUrl,  String targetUrl)?  $default,) {final _that = this;
switch (_that) {
case _PromoMaterial() when $default != null:
return $default(_that.id,_that.name,_that.type,_that.imageUrl,_that.targetUrl);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PromoMaterial extends PromoMaterial {
  const _PromoMaterial({this.id = '', this.name = '', this.type = '', this.imageUrl = '', this.targetUrl = ''}): super._();
  factory _PromoMaterial.fromJson(Map<String, dynamic> json) => _$PromoMaterialFromJson(json);

@override@JsonKey() final  String id;
@override@JsonKey() final  String name;
@override@JsonKey() final  String type;
@override@JsonKey() final  String imageUrl;
@override@JsonKey() final  String targetUrl;

/// Create a copy of PromoMaterial
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PromoMaterialCopyWith<_PromoMaterial> get copyWith => __$PromoMaterialCopyWithImpl<_PromoMaterial>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PromoMaterialToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PromoMaterial&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.type, type) || other.type == type)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.targetUrl, targetUrl) || other.targetUrl == targetUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,type,imageUrl,targetUrl);

@override
String toString() {
  return 'PromoMaterial(id: $id, name: $name, type: $type, imageUrl: $imageUrl, targetUrl: $targetUrl)';
}


}

/// @nodoc
abstract mixin class _$PromoMaterialCopyWith<$Res> implements $PromoMaterialCopyWith<$Res> {
  factory _$PromoMaterialCopyWith(_PromoMaterial value, $Res Function(_PromoMaterial) _then) = __$PromoMaterialCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String type, String imageUrl, String targetUrl
});




}
/// @nodoc
class __$PromoMaterialCopyWithImpl<$Res>
    implements _$PromoMaterialCopyWith<$Res> {
  __$PromoMaterialCopyWithImpl(this._self, this._then);

  final _PromoMaterial _self;
  final $Res Function(_PromoMaterial) _then;

/// Create a copy of PromoMaterial
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? type = null,Object? imageUrl = null,Object? targetUrl = null,}) {
  return _then(_PromoMaterial(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,targetUrl: null == targetUrl ? _self.targetUrl : targetUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
