// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'promo_materials_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PromoMaterialsState {

 bool get isLoading; List<PromoMaterial> get promos; String? get error;
/// Create a copy of PromoMaterialsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PromoMaterialsStateCopyWith<PromoMaterialsState> get copyWith => _$PromoMaterialsStateCopyWithImpl<PromoMaterialsState>(this as PromoMaterialsState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PromoMaterialsState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&const DeepCollectionEquality().equals(other.promos, promos)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,const DeepCollectionEquality().hash(promos),error);

@override
String toString() {
  return 'PromoMaterialsState(isLoading: $isLoading, promos: $promos, error: $error)';
}


}

/// @nodoc
abstract mixin class $PromoMaterialsStateCopyWith<$Res>  {
  factory $PromoMaterialsStateCopyWith(PromoMaterialsState value, $Res Function(PromoMaterialsState) _then) = _$PromoMaterialsStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, List<PromoMaterial> promos, String? error
});




}
/// @nodoc
class _$PromoMaterialsStateCopyWithImpl<$Res>
    implements $PromoMaterialsStateCopyWith<$Res> {
  _$PromoMaterialsStateCopyWithImpl(this._self, this._then);

  final PromoMaterialsState _self;
  final $Res Function(PromoMaterialsState) _then;

/// Create a copy of PromoMaterialsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? promos = null,Object? error = freezed,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,promos: null == promos ? _self.promos : promos // ignore: cast_nullable_to_non_nullable
as List<PromoMaterial>,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PromoMaterialsState].
extension PromoMaterialsStatePatterns on PromoMaterialsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PromoMaterialsState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PromoMaterialsState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PromoMaterialsState value)  $default,){
final _that = this;
switch (_that) {
case _PromoMaterialsState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PromoMaterialsState value)?  $default,){
final _that = this;
switch (_that) {
case _PromoMaterialsState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  List<PromoMaterial> promos,  String? error)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PromoMaterialsState() when $default != null:
return $default(_that.isLoading,_that.promos,_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  List<PromoMaterial> promos,  String? error)  $default,) {final _that = this;
switch (_that) {
case _PromoMaterialsState():
return $default(_that.isLoading,_that.promos,_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  List<PromoMaterial> promos,  String? error)?  $default,) {final _that = this;
switch (_that) {
case _PromoMaterialsState() when $default != null:
return $default(_that.isLoading,_that.promos,_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _PromoMaterialsState implements PromoMaterialsState {
  const _PromoMaterialsState({this.isLoading = false, final  List<PromoMaterial> promos = const [], this.error}): _promos = promos;
  

@override@JsonKey() final  bool isLoading;
 final  List<PromoMaterial> _promos;
@override@JsonKey() List<PromoMaterial> get promos {
  if (_promos is EqualUnmodifiableListView) return _promos;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_promos);
}

@override final  String? error;

/// Create a copy of PromoMaterialsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PromoMaterialsStateCopyWith<_PromoMaterialsState> get copyWith => __$PromoMaterialsStateCopyWithImpl<_PromoMaterialsState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PromoMaterialsState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&const DeepCollectionEquality().equals(other._promos, _promos)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,const DeepCollectionEquality().hash(_promos),error);

@override
String toString() {
  return 'PromoMaterialsState(isLoading: $isLoading, promos: $promos, error: $error)';
}


}

/// @nodoc
abstract mixin class _$PromoMaterialsStateCopyWith<$Res> implements $PromoMaterialsStateCopyWith<$Res> {
  factory _$PromoMaterialsStateCopyWith(_PromoMaterialsState value, $Res Function(_PromoMaterialsState) _then) = __$PromoMaterialsStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, List<PromoMaterial> promos, String? error
});




}
/// @nodoc
class __$PromoMaterialsStateCopyWithImpl<$Res>
    implements _$PromoMaterialsStateCopyWith<$Res> {
  __$PromoMaterialsStateCopyWithImpl(this._self, this._then);

  final _PromoMaterialsState _self;
  final $Res Function(_PromoMaterialsState) _then;

/// Create a copy of PromoMaterialsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? promos = null,Object? error = freezed,}) {
  return _then(_PromoMaterialsState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,promos: null == promos ? _self._promos : promos // ignore: cast_nullable_to_non_nullable
as List<PromoMaterial>,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
