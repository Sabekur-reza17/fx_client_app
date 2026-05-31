// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_password_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UpdatePasswordState {

 bool get isSubmitting; bool get isSuccess; String? get error;
/// Create a copy of UpdatePasswordState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdatePasswordStateCopyWith<UpdatePasswordState> get copyWith => _$UpdatePasswordStateCopyWithImpl<UpdatePasswordState>(this as UpdatePasswordState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdatePasswordState&&(identical(other.isSubmitting, isSubmitting) || other.isSubmitting == isSubmitting)&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,isSubmitting,isSuccess,error);

@override
String toString() {
  return 'UpdatePasswordState(isSubmitting: $isSubmitting, isSuccess: $isSuccess, error: $error)';
}


}

/// @nodoc
abstract mixin class $UpdatePasswordStateCopyWith<$Res>  {
  factory $UpdatePasswordStateCopyWith(UpdatePasswordState value, $Res Function(UpdatePasswordState) _then) = _$UpdatePasswordStateCopyWithImpl;
@useResult
$Res call({
 bool isSubmitting, bool isSuccess, String? error
});




}
/// @nodoc
class _$UpdatePasswordStateCopyWithImpl<$Res>
    implements $UpdatePasswordStateCopyWith<$Res> {
  _$UpdatePasswordStateCopyWithImpl(this._self, this._then);

  final UpdatePasswordState _self;
  final $Res Function(UpdatePasswordState) _then;

/// Create a copy of UpdatePasswordState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isSubmitting = null,Object? isSuccess = null,Object? error = freezed,}) {
  return _then(_self.copyWith(
isSubmitting: null == isSubmitting ? _self.isSubmitting : isSubmitting // ignore: cast_nullable_to_non_nullable
as bool,isSuccess: null == isSuccess ? _self.isSuccess : isSuccess // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [UpdatePasswordState].
extension UpdatePasswordStatePatterns on UpdatePasswordState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UpdatePasswordState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdatePasswordState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UpdatePasswordState value)  $default,){
final _that = this;
switch (_that) {
case _UpdatePasswordState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UpdatePasswordState value)?  $default,){
final _that = this;
switch (_that) {
case _UpdatePasswordState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isSubmitting,  bool isSuccess,  String? error)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdatePasswordState() when $default != null:
return $default(_that.isSubmitting,_that.isSuccess,_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isSubmitting,  bool isSuccess,  String? error)  $default,) {final _that = this;
switch (_that) {
case _UpdatePasswordState():
return $default(_that.isSubmitting,_that.isSuccess,_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isSubmitting,  bool isSuccess,  String? error)?  $default,) {final _that = this;
switch (_that) {
case _UpdatePasswordState() when $default != null:
return $default(_that.isSubmitting,_that.isSuccess,_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _UpdatePasswordState implements UpdatePasswordState {
  const _UpdatePasswordState({this.isSubmitting = false, this.isSuccess = false, this.error});
  

@override@JsonKey() final  bool isSubmitting;
@override@JsonKey() final  bool isSuccess;
@override final  String? error;

/// Create a copy of UpdatePasswordState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdatePasswordStateCopyWith<_UpdatePasswordState> get copyWith => __$UpdatePasswordStateCopyWithImpl<_UpdatePasswordState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdatePasswordState&&(identical(other.isSubmitting, isSubmitting) || other.isSubmitting == isSubmitting)&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,isSubmitting,isSuccess,error);

@override
String toString() {
  return 'UpdatePasswordState(isSubmitting: $isSubmitting, isSuccess: $isSuccess, error: $error)';
}


}

/// @nodoc
abstract mixin class _$UpdatePasswordStateCopyWith<$Res> implements $UpdatePasswordStateCopyWith<$Res> {
  factory _$UpdatePasswordStateCopyWith(_UpdatePasswordState value, $Res Function(_UpdatePasswordState) _then) = __$UpdatePasswordStateCopyWithImpl;
@override @useResult
$Res call({
 bool isSubmitting, bool isSuccess, String? error
});




}
/// @nodoc
class __$UpdatePasswordStateCopyWithImpl<$Res>
    implements _$UpdatePasswordStateCopyWith<$Res> {
  __$UpdatePasswordStateCopyWithImpl(this._self, this._then);

  final _UpdatePasswordState _self;
  final $Res Function(_UpdatePasswordState) _then;

/// Create a copy of UpdatePasswordState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isSubmitting = null,Object? isSuccess = null,Object? error = freezed,}) {
  return _then(_UpdatePasswordState(
isSubmitting: null == isSubmitting ? _self.isSubmitting : isSubmitting // ignore: cast_nullable_to_non_nullable
as bool,isSuccess: null == isSuccess ? _self.isSuccess : isSuccess // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
