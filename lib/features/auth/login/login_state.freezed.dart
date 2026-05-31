// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LoginState {

 bool get isLoading; bool get isLoggedIn; String get phoneNumber; bool get isPhoneValid; UiText? get phoneError; String get password; bool get rememberMe; bool get isPasswordVisible; UiText? get error;
/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginStateCopyWith<LoginState> get copyWith => _$LoginStateCopyWithImpl<LoginState>(this as LoginState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isLoggedIn, isLoggedIn) || other.isLoggedIn == isLoggedIn)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.isPhoneValid, isPhoneValid) || other.isPhoneValid == isPhoneValid)&&(identical(other.phoneError, phoneError) || other.phoneError == phoneError)&&(identical(other.password, password) || other.password == password)&&(identical(other.rememberMe, rememberMe) || other.rememberMe == rememberMe)&&(identical(other.isPasswordVisible, isPasswordVisible) || other.isPasswordVisible == isPasswordVisible)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,isLoggedIn,phoneNumber,isPhoneValid,phoneError,password,rememberMe,isPasswordVisible,error);

@override
String toString() {
  return 'LoginState(isLoading: $isLoading, isLoggedIn: $isLoggedIn, phoneNumber: $phoneNumber, isPhoneValid: $isPhoneValid, phoneError: $phoneError, password: $password, rememberMe: $rememberMe, isPasswordVisible: $isPasswordVisible, error: $error)';
}


}

/// @nodoc
abstract mixin class $LoginStateCopyWith<$Res>  {
  factory $LoginStateCopyWith(LoginState value, $Res Function(LoginState) _then) = _$LoginStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, bool isLoggedIn, String phoneNumber, bool isPhoneValid, UiText? phoneError, String password, bool rememberMe, bool isPasswordVisible, UiText? error
});




}
/// @nodoc
class _$LoginStateCopyWithImpl<$Res>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._self, this._then);

  final LoginState _self;
  final $Res Function(LoginState) _then;

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? isLoggedIn = null,Object? phoneNumber = null,Object? isPhoneValid = null,Object? phoneError = freezed,Object? password = null,Object? rememberMe = null,Object? isPasswordVisible = null,Object? error = freezed,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isLoggedIn: null == isLoggedIn ? _self.isLoggedIn : isLoggedIn // ignore: cast_nullable_to_non_nullable
as bool,phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,isPhoneValid: null == isPhoneValid ? _self.isPhoneValid : isPhoneValid // ignore: cast_nullable_to_non_nullable
as bool,phoneError: freezed == phoneError ? _self.phoneError : phoneError // ignore: cast_nullable_to_non_nullable
as UiText?,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,rememberMe: null == rememberMe ? _self.rememberMe : rememberMe // ignore: cast_nullable_to_non_nullable
as bool,isPasswordVisible: null == isPasswordVisible ? _self.isPasswordVisible : isPasswordVisible // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as UiText?,
  ));
}

}


/// Adds pattern-matching-related methods to [LoginState].
extension LoginStatePatterns on LoginState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LoginState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoginState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LoginState value)  $default,){
final _that = this;
switch (_that) {
case _LoginState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LoginState value)?  $default,){
final _that = this;
switch (_that) {
case _LoginState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  bool isLoggedIn,  String phoneNumber,  bool isPhoneValid,  UiText? phoneError,  String password,  bool rememberMe,  bool isPasswordVisible,  UiText? error)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoginState() when $default != null:
return $default(_that.isLoading,_that.isLoggedIn,_that.phoneNumber,_that.isPhoneValid,_that.phoneError,_that.password,_that.rememberMe,_that.isPasswordVisible,_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  bool isLoggedIn,  String phoneNumber,  bool isPhoneValid,  UiText? phoneError,  String password,  bool rememberMe,  bool isPasswordVisible,  UiText? error)  $default,) {final _that = this;
switch (_that) {
case _LoginState():
return $default(_that.isLoading,_that.isLoggedIn,_that.phoneNumber,_that.isPhoneValid,_that.phoneError,_that.password,_that.rememberMe,_that.isPasswordVisible,_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  bool isLoggedIn,  String phoneNumber,  bool isPhoneValid,  UiText? phoneError,  String password,  bool rememberMe,  bool isPasswordVisible,  UiText? error)?  $default,) {final _that = this;
switch (_that) {
case _LoginState() when $default != null:
return $default(_that.isLoading,_that.isLoggedIn,_that.phoneNumber,_that.isPhoneValid,_that.phoneError,_that.password,_that.rememberMe,_that.isPasswordVisible,_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _LoginState implements LoginState {
   _LoginState({this.isLoading = false, this.isLoggedIn = false, this.phoneNumber = '', this.isPhoneValid = false, this.phoneError = null, this.password = '', this.rememberMe = false, this.isPasswordVisible = false, this.error = null});
  

@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  bool isLoggedIn;
@override@JsonKey() final  String phoneNumber;
@override@JsonKey() final  bool isPhoneValid;
@override@JsonKey() final  UiText? phoneError;
@override@JsonKey() final  String password;
@override@JsonKey() final  bool rememberMe;
@override@JsonKey() final  bool isPasswordVisible;
@override@JsonKey() final  UiText? error;

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoginStateCopyWith<_LoginState> get copyWith => __$LoginStateCopyWithImpl<_LoginState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoginState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isLoggedIn, isLoggedIn) || other.isLoggedIn == isLoggedIn)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.isPhoneValid, isPhoneValid) || other.isPhoneValid == isPhoneValid)&&(identical(other.phoneError, phoneError) || other.phoneError == phoneError)&&(identical(other.password, password) || other.password == password)&&(identical(other.rememberMe, rememberMe) || other.rememberMe == rememberMe)&&(identical(other.isPasswordVisible, isPasswordVisible) || other.isPasswordVisible == isPasswordVisible)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,isLoggedIn,phoneNumber,isPhoneValid,phoneError,password,rememberMe,isPasswordVisible,error);

@override
String toString() {
  return 'LoginState(isLoading: $isLoading, isLoggedIn: $isLoggedIn, phoneNumber: $phoneNumber, isPhoneValid: $isPhoneValid, phoneError: $phoneError, password: $password, rememberMe: $rememberMe, isPasswordVisible: $isPasswordVisible, error: $error)';
}


}

/// @nodoc
abstract mixin class _$LoginStateCopyWith<$Res> implements $LoginStateCopyWith<$Res> {
  factory _$LoginStateCopyWith(_LoginState value, $Res Function(_LoginState) _then) = __$LoginStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, bool isLoggedIn, String phoneNumber, bool isPhoneValid, UiText? phoneError, String password, bool rememberMe, bool isPasswordVisible, UiText? error
});




}
/// @nodoc
class __$LoginStateCopyWithImpl<$Res>
    implements _$LoginStateCopyWith<$Res> {
  __$LoginStateCopyWithImpl(this._self, this._then);

  final _LoginState _self;
  final $Res Function(_LoginState) _then;

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? isLoggedIn = null,Object? phoneNumber = null,Object? isPhoneValid = null,Object? phoneError = freezed,Object? password = null,Object? rememberMe = null,Object? isPasswordVisible = null,Object? error = freezed,}) {
  return _then(_LoginState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isLoggedIn: null == isLoggedIn ? _self.isLoggedIn : isLoggedIn // ignore: cast_nullable_to_non_nullable
as bool,phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,isPhoneValid: null == isPhoneValid ? _self.isPhoneValid : isPhoneValid // ignore: cast_nullable_to_non_nullable
as bool,phoneError: freezed == phoneError ? _self.phoneError : phoneError // ignore: cast_nullable_to_non_nullable
as UiText?,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,rememberMe: null == rememberMe ? _self.rememberMe : rememberMe // ignore: cast_nullable_to_non_nullable
as bool,isPasswordVisible: null == isPasswordVisible ? _self.isPasswordVisible : isPasswordVisible // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as UiText?,
  ));
}


}

// dart format on
