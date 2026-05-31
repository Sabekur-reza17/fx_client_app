// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_profile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserProfile {

 String get name; String get country; String get city; String get address; String get maskedPhone; int get leverage; double get balance; double get equity; double get freeMargin; bool get isSwapFree; int get verificationLevel;
/// Create a copy of UserProfile
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserProfileCopyWith<UserProfile> get copyWith => _$UserProfileCopyWithImpl<UserProfile>(this as UserProfile, _$identity);

  /// Serializes this UserProfile to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserProfile&&(identical(other.name, name) || other.name == name)&&(identical(other.country, country) || other.country == country)&&(identical(other.city, city) || other.city == city)&&(identical(other.address, address) || other.address == address)&&(identical(other.maskedPhone, maskedPhone) || other.maskedPhone == maskedPhone)&&(identical(other.leverage, leverage) || other.leverage == leverage)&&(identical(other.balance, balance) || other.balance == balance)&&(identical(other.equity, equity) || other.equity == equity)&&(identical(other.freeMargin, freeMargin) || other.freeMargin == freeMargin)&&(identical(other.isSwapFree, isSwapFree) || other.isSwapFree == isSwapFree)&&(identical(other.verificationLevel, verificationLevel) || other.verificationLevel == verificationLevel));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,country,city,address,maskedPhone,leverage,balance,equity,freeMargin,isSwapFree,verificationLevel);

@override
String toString() {
  return 'UserProfile(name: $name, country: $country, city: $city, address: $address, maskedPhone: $maskedPhone, leverage: $leverage, balance: $balance, equity: $equity, freeMargin: $freeMargin, isSwapFree: $isSwapFree, verificationLevel: $verificationLevel)';
}


}

/// @nodoc
abstract mixin class $UserProfileCopyWith<$Res>  {
  factory $UserProfileCopyWith(UserProfile value, $Res Function(UserProfile) _then) = _$UserProfileCopyWithImpl;
@useResult
$Res call({
 String name, String country, String city, String address, String maskedPhone, int leverage, double balance, double equity, double freeMargin, bool isSwapFree, int verificationLevel
});




}
/// @nodoc
class _$UserProfileCopyWithImpl<$Res>
    implements $UserProfileCopyWith<$Res> {
  _$UserProfileCopyWithImpl(this._self, this._then);

  final UserProfile _self;
  final $Res Function(UserProfile) _then;

/// Create a copy of UserProfile
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? country = null,Object? city = null,Object? address = null,Object? maskedPhone = null,Object? leverage = null,Object? balance = null,Object? equity = null,Object? freeMargin = null,Object? isSwapFree = null,Object? verificationLevel = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,country: null == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String,city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,maskedPhone: null == maskedPhone ? _self.maskedPhone : maskedPhone // ignore: cast_nullable_to_non_nullable
as String,leverage: null == leverage ? _self.leverage : leverage // ignore: cast_nullable_to_non_nullable
as int,balance: null == balance ? _self.balance : balance // ignore: cast_nullable_to_non_nullable
as double,equity: null == equity ? _self.equity : equity // ignore: cast_nullable_to_non_nullable
as double,freeMargin: null == freeMargin ? _self.freeMargin : freeMargin // ignore: cast_nullable_to_non_nullable
as double,isSwapFree: null == isSwapFree ? _self.isSwapFree : isSwapFree // ignore: cast_nullable_to_non_nullable
as bool,verificationLevel: null == verificationLevel ? _self.verificationLevel : verificationLevel // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [UserProfile].
extension UserProfilePatterns on UserProfile {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserProfile value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserProfile() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserProfile value)  $default,){
final _that = this;
switch (_that) {
case _UserProfile():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserProfile value)?  $default,){
final _that = this;
switch (_that) {
case _UserProfile() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String country,  String city,  String address,  String maskedPhone,  int leverage,  double balance,  double equity,  double freeMargin,  bool isSwapFree,  int verificationLevel)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserProfile() when $default != null:
return $default(_that.name,_that.country,_that.city,_that.address,_that.maskedPhone,_that.leverage,_that.balance,_that.equity,_that.freeMargin,_that.isSwapFree,_that.verificationLevel);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String country,  String city,  String address,  String maskedPhone,  int leverage,  double balance,  double equity,  double freeMargin,  bool isSwapFree,  int verificationLevel)  $default,) {final _that = this;
switch (_that) {
case _UserProfile():
return $default(_that.name,_that.country,_that.city,_that.address,_that.maskedPhone,_that.leverage,_that.balance,_that.equity,_that.freeMargin,_that.isSwapFree,_that.verificationLevel);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String country,  String city,  String address,  String maskedPhone,  int leverage,  double balance,  double equity,  double freeMargin,  bool isSwapFree,  int verificationLevel)?  $default,) {final _that = this;
switch (_that) {
case _UserProfile() when $default != null:
return $default(_that.name,_that.country,_that.city,_that.address,_that.maskedPhone,_that.leverage,_that.balance,_that.equity,_that.freeMargin,_that.isSwapFree,_that.verificationLevel);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserProfile extends UserProfile {
  const _UserProfile({this.name = '', this.country = '', this.city = '', this.address = '', this.maskedPhone = '', this.leverage = 0, this.balance = 0.0, this.equity = 0.0, this.freeMargin = 0.0, this.isSwapFree = false, this.verificationLevel = 0}): super._();
  factory _UserProfile.fromJson(Map<String, dynamic> json) => _$UserProfileFromJson(json);

@override@JsonKey() final  String name;
@override@JsonKey() final  String country;
@override@JsonKey() final  String city;
@override@JsonKey() final  String address;
@override@JsonKey() final  String maskedPhone;
@override@JsonKey() final  int leverage;
@override@JsonKey() final  double balance;
@override@JsonKey() final  double equity;
@override@JsonKey() final  double freeMargin;
@override@JsonKey() final  bool isSwapFree;
@override@JsonKey() final  int verificationLevel;

/// Create a copy of UserProfile
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserProfileCopyWith<_UserProfile> get copyWith => __$UserProfileCopyWithImpl<_UserProfile>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserProfileToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserProfile&&(identical(other.name, name) || other.name == name)&&(identical(other.country, country) || other.country == country)&&(identical(other.city, city) || other.city == city)&&(identical(other.address, address) || other.address == address)&&(identical(other.maskedPhone, maskedPhone) || other.maskedPhone == maskedPhone)&&(identical(other.leverage, leverage) || other.leverage == leverage)&&(identical(other.balance, balance) || other.balance == balance)&&(identical(other.equity, equity) || other.equity == equity)&&(identical(other.freeMargin, freeMargin) || other.freeMargin == freeMargin)&&(identical(other.isSwapFree, isSwapFree) || other.isSwapFree == isSwapFree)&&(identical(other.verificationLevel, verificationLevel) || other.verificationLevel == verificationLevel));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,country,city,address,maskedPhone,leverage,balance,equity,freeMargin,isSwapFree,verificationLevel);

@override
String toString() {
  return 'UserProfile(name: $name, country: $country, city: $city, address: $address, maskedPhone: $maskedPhone, leverage: $leverage, balance: $balance, equity: $equity, freeMargin: $freeMargin, isSwapFree: $isSwapFree, verificationLevel: $verificationLevel)';
}


}

/// @nodoc
abstract mixin class _$UserProfileCopyWith<$Res> implements $UserProfileCopyWith<$Res> {
  factory _$UserProfileCopyWith(_UserProfile value, $Res Function(_UserProfile) _then) = __$UserProfileCopyWithImpl;
@override @useResult
$Res call({
 String name, String country, String city, String address, String maskedPhone, int leverage, double balance, double equity, double freeMargin, bool isSwapFree, int verificationLevel
});




}
/// @nodoc
class __$UserProfileCopyWithImpl<$Res>
    implements _$UserProfileCopyWith<$Res> {
  __$UserProfileCopyWithImpl(this._self, this._then);

  final _UserProfile _self;
  final $Res Function(_UserProfile) _then;

/// Create a copy of UserProfile
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? country = null,Object? city = null,Object? address = null,Object? maskedPhone = null,Object? leverage = null,Object? balance = null,Object? equity = null,Object? freeMargin = null,Object? isSwapFree = null,Object? verificationLevel = null,}) {
  return _then(_UserProfile(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,country: null == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String,city: null == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,maskedPhone: null == maskedPhone ? _self.maskedPhone : maskedPhone // ignore: cast_nullable_to_non_nullable
as String,leverage: null == leverage ? _self.leverage : leverage // ignore: cast_nullable_to_non_nullable
as int,balance: null == balance ? _self.balance : balance // ignore: cast_nullable_to_non_nullable
as double,equity: null == equity ? _self.equity : equity // ignore: cast_nullable_to_non_nullable
as double,freeMargin: null == freeMargin ? _self.freeMargin : freeMargin // ignore: cast_nullable_to_non_nullable
as double,isSwapFree: null == isSwapFree ? _self.isSwapFree : isSwapFree // ignore: cast_nullable_to_non_nullable
as bool,verificationLevel: null == verificationLevel ? _self.verificationLevel : verificationLevel // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
