// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signals_archive_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SignalsArchiveState {

 bool get isLoading; List<Signal> get signals; List<String> get selectedPairs; DateTime? get startDate; DateTime? get endDate; String? get error;
/// Create a copy of SignalsArchiveState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignalsArchiveStateCopyWith<SignalsArchiveState> get copyWith => _$SignalsArchiveStateCopyWithImpl<SignalsArchiveState>(this as SignalsArchiveState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignalsArchiveState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&const DeepCollectionEquality().equals(other.signals, signals)&&const DeepCollectionEquality().equals(other.selectedPairs, selectedPairs)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,const DeepCollectionEquality().hash(signals),const DeepCollectionEquality().hash(selectedPairs),startDate,endDate,error);

@override
String toString() {
  return 'SignalsArchiveState(isLoading: $isLoading, signals: $signals, selectedPairs: $selectedPairs, startDate: $startDate, endDate: $endDate, error: $error)';
}


}

/// @nodoc
abstract mixin class $SignalsArchiveStateCopyWith<$Res>  {
  factory $SignalsArchiveStateCopyWith(SignalsArchiveState value, $Res Function(SignalsArchiveState) _then) = _$SignalsArchiveStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, List<Signal> signals, List<String> selectedPairs, DateTime? startDate, DateTime? endDate, String? error
});




}
/// @nodoc
class _$SignalsArchiveStateCopyWithImpl<$Res>
    implements $SignalsArchiveStateCopyWith<$Res> {
  _$SignalsArchiveStateCopyWithImpl(this._self, this._then);

  final SignalsArchiveState _self;
  final $Res Function(SignalsArchiveState) _then;

/// Create a copy of SignalsArchiveState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? signals = null,Object? selectedPairs = null,Object? startDate = freezed,Object? endDate = freezed,Object? error = freezed,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,signals: null == signals ? _self.signals : signals // ignore: cast_nullable_to_non_nullable
as List<Signal>,selectedPairs: null == selectedPairs ? _self.selectedPairs : selectedPairs // ignore: cast_nullable_to_non_nullable
as List<String>,startDate: freezed == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as DateTime?,endDate: freezed == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as DateTime?,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SignalsArchiveState].
extension SignalsArchiveStatePatterns on SignalsArchiveState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SignalsArchiveState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SignalsArchiveState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SignalsArchiveState value)  $default,){
final _that = this;
switch (_that) {
case _SignalsArchiveState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SignalsArchiveState value)?  $default,){
final _that = this;
switch (_that) {
case _SignalsArchiveState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  List<Signal> signals,  List<String> selectedPairs,  DateTime? startDate,  DateTime? endDate,  String? error)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SignalsArchiveState() when $default != null:
return $default(_that.isLoading,_that.signals,_that.selectedPairs,_that.startDate,_that.endDate,_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  List<Signal> signals,  List<String> selectedPairs,  DateTime? startDate,  DateTime? endDate,  String? error)  $default,) {final _that = this;
switch (_that) {
case _SignalsArchiveState():
return $default(_that.isLoading,_that.signals,_that.selectedPairs,_that.startDate,_that.endDate,_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  List<Signal> signals,  List<String> selectedPairs,  DateTime? startDate,  DateTime? endDate,  String? error)?  $default,) {final _that = this;
switch (_that) {
case _SignalsArchiveState() when $default != null:
return $default(_that.isLoading,_that.signals,_that.selectedPairs,_that.startDate,_that.endDate,_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _SignalsArchiveState implements SignalsArchiveState {
  const _SignalsArchiveState({this.isLoading = false, final  List<Signal> signals = const [], final  List<String> selectedPairs = const [], this.startDate, this.endDate, this.error}): _signals = signals,_selectedPairs = selectedPairs;
  

@override@JsonKey() final  bool isLoading;
 final  List<Signal> _signals;
@override@JsonKey() List<Signal> get signals {
  if (_signals is EqualUnmodifiableListView) return _signals;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_signals);
}

 final  List<String> _selectedPairs;
@override@JsonKey() List<String> get selectedPairs {
  if (_selectedPairs is EqualUnmodifiableListView) return _selectedPairs;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_selectedPairs);
}

@override final  DateTime? startDate;
@override final  DateTime? endDate;
@override final  String? error;

/// Create a copy of SignalsArchiveState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SignalsArchiveStateCopyWith<_SignalsArchiveState> get copyWith => __$SignalsArchiveStateCopyWithImpl<_SignalsArchiveState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SignalsArchiveState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&const DeepCollectionEquality().equals(other._signals, _signals)&&const DeepCollectionEquality().equals(other._selectedPairs, _selectedPairs)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,const DeepCollectionEquality().hash(_signals),const DeepCollectionEquality().hash(_selectedPairs),startDate,endDate,error);

@override
String toString() {
  return 'SignalsArchiveState(isLoading: $isLoading, signals: $signals, selectedPairs: $selectedPairs, startDate: $startDate, endDate: $endDate, error: $error)';
}


}

/// @nodoc
abstract mixin class _$SignalsArchiveStateCopyWith<$Res> implements $SignalsArchiveStateCopyWith<$Res> {
  factory _$SignalsArchiveStateCopyWith(_SignalsArchiveState value, $Res Function(_SignalsArchiveState) _then) = __$SignalsArchiveStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, List<Signal> signals, List<String> selectedPairs, DateTime? startDate, DateTime? endDate, String? error
});




}
/// @nodoc
class __$SignalsArchiveStateCopyWithImpl<$Res>
    implements _$SignalsArchiveStateCopyWith<$Res> {
  __$SignalsArchiveStateCopyWithImpl(this._self, this._then);

  final _SignalsArchiveState _self;
  final $Res Function(_SignalsArchiveState) _then;

/// Create a copy of SignalsArchiveState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? signals = null,Object? selectedPairs = null,Object? startDate = freezed,Object? endDate = freezed,Object? error = freezed,}) {
  return _then(_SignalsArchiveState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,signals: null == signals ? _self._signals : signals // ignore: cast_nullable_to_non_nullable
as List<Signal>,selectedPairs: null == selectedPairs ? _self._selectedPairs : selectedPairs // ignore: cast_nullable_to_non_nullable
as List<String>,startDate: freezed == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as DateTime?,endDate: freezed == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as DateTime?,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
