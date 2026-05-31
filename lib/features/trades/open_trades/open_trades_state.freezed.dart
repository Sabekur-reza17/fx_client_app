// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'open_trades_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$OpenTradesState {

 bool get isLoading; List<Trade> get trades; String? get error;
/// Create a copy of OpenTradesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OpenTradesStateCopyWith<OpenTradesState> get copyWith => _$OpenTradesStateCopyWithImpl<OpenTradesState>(this as OpenTradesState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OpenTradesState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&const DeepCollectionEquality().equals(other.trades, trades)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,const DeepCollectionEquality().hash(trades),error);

@override
String toString() {
  return 'OpenTradesState(isLoading: $isLoading, trades: $trades, error: $error)';
}


}

/// @nodoc
abstract mixin class $OpenTradesStateCopyWith<$Res>  {
  factory $OpenTradesStateCopyWith(OpenTradesState value, $Res Function(OpenTradesState) _then) = _$OpenTradesStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, List<Trade> trades, String? error
});




}
/// @nodoc
class _$OpenTradesStateCopyWithImpl<$Res>
    implements $OpenTradesStateCopyWith<$Res> {
  _$OpenTradesStateCopyWithImpl(this._self, this._then);

  final OpenTradesState _self;
  final $Res Function(OpenTradesState) _then;

/// Create a copy of OpenTradesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? trades = null,Object? error = freezed,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,trades: null == trades ? _self.trades : trades // ignore: cast_nullable_to_non_nullable
as List<Trade>,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [OpenTradesState].
extension OpenTradesStatePatterns on OpenTradesState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OpenTradesState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OpenTradesState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OpenTradesState value)  $default,){
final _that = this;
switch (_that) {
case _OpenTradesState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OpenTradesState value)?  $default,){
final _that = this;
switch (_that) {
case _OpenTradesState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  List<Trade> trades,  String? error)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OpenTradesState() when $default != null:
return $default(_that.isLoading,_that.trades,_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  List<Trade> trades,  String? error)  $default,) {final _that = this;
switch (_that) {
case _OpenTradesState():
return $default(_that.isLoading,_that.trades,_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  List<Trade> trades,  String? error)?  $default,) {final _that = this;
switch (_that) {
case _OpenTradesState() when $default != null:
return $default(_that.isLoading,_that.trades,_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _OpenTradesState implements OpenTradesState {
  const _OpenTradesState({this.isLoading = false, final  List<Trade> trades = const [], this.error}): _trades = trades;
  

@override@JsonKey() final  bool isLoading;
 final  List<Trade> _trades;
@override@JsonKey() List<Trade> get trades {
  if (_trades is EqualUnmodifiableListView) return _trades;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_trades);
}

@override final  String? error;

/// Create a copy of OpenTradesState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OpenTradesStateCopyWith<_OpenTradesState> get copyWith => __$OpenTradesStateCopyWithImpl<_OpenTradesState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OpenTradesState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&const DeepCollectionEquality().equals(other._trades, _trades)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,const DeepCollectionEquality().hash(_trades),error);

@override
String toString() {
  return 'OpenTradesState(isLoading: $isLoading, trades: $trades, error: $error)';
}


}

/// @nodoc
abstract mixin class _$OpenTradesStateCopyWith<$Res> implements $OpenTradesStateCopyWith<$Res> {
  factory _$OpenTradesStateCopyWith(_OpenTradesState value, $Res Function(_OpenTradesState) _then) = __$OpenTradesStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, List<Trade> trades, String? error
});




}
/// @nodoc
class __$OpenTradesStateCopyWithImpl<$Res>
    implements _$OpenTradesStateCopyWith<$Res> {
  __$OpenTradesStateCopyWithImpl(this._self, this._then);

  final _OpenTradesState _self;
  final $Res Function(_OpenTradesState) _then;

/// Create a copy of OpenTradesState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? trades = null,Object? error = freezed,}) {
  return _then(_OpenTradesState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,trades: null == trades ? _self._trades : trades // ignore: cast_nullable_to_non_nullable
as List<Trade>,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
