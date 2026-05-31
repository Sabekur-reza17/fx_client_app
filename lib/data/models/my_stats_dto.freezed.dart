// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_stats_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MyStatsDto {

 double? get balance; int? get currency; int? get currentTradesCount; double? get currentTradesVolume; double? get equity; double? get freeMargin; bool? get isAnyOpenTrades; int? get totalTradesCount; double? get totalTradesVolume; String? get withdrawalLink; String? get depositLink;
/// Create a copy of MyStatsDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MyStatsDtoCopyWith<MyStatsDto> get copyWith => _$MyStatsDtoCopyWithImpl<MyStatsDto>(this as MyStatsDto, _$identity);

  /// Serializes this MyStatsDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MyStatsDto&&(identical(other.balance, balance) || other.balance == balance)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.currentTradesCount, currentTradesCount) || other.currentTradesCount == currentTradesCount)&&(identical(other.currentTradesVolume, currentTradesVolume) || other.currentTradesVolume == currentTradesVolume)&&(identical(other.equity, equity) || other.equity == equity)&&(identical(other.freeMargin, freeMargin) || other.freeMargin == freeMargin)&&(identical(other.isAnyOpenTrades, isAnyOpenTrades) || other.isAnyOpenTrades == isAnyOpenTrades)&&(identical(other.totalTradesCount, totalTradesCount) || other.totalTradesCount == totalTradesCount)&&(identical(other.totalTradesVolume, totalTradesVolume) || other.totalTradesVolume == totalTradesVolume)&&(identical(other.withdrawalLink, withdrawalLink) || other.withdrawalLink == withdrawalLink)&&(identical(other.depositLink, depositLink) || other.depositLink == depositLink));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,balance,currency,currentTradesCount,currentTradesVolume,equity,freeMargin,isAnyOpenTrades,totalTradesCount,totalTradesVolume,withdrawalLink,depositLink);

@override
String toString() {
  return 'MyStatsDto(balance: $balance, currency: $currency, currentTradesCount: $currentTradesCount, currentTradesVolume: $currentTradesVolume, equity: $equity, freeMargin: $freeMargin, isAnyOpenTrades: $isAnyOpenTrades, totalTradesCount: $totalTradesCount, totalTradesVolume: $totalTradesVolume, withdrawalLink: $withdrawalLink, depositLink: $depositLink)';
}


}

/// @nodoc
abstract mixin class $MyStatsDtoCopyWith<$Res>  {
  factory $MyStatsDtoCopyWith(MyStatsDto value, $Res Function(MyStatsDto) _then) = _$MyStatsDtoCopyWithImpl;
@useResult
$Res call({
 double? balance, int? currency, int? currentTradesCount, double? currentTradesVolume, double? equity, double? freeMargin, bool? isAnyOpenTrades, int? totalTradesCount, double? totalTradesVolume, String? withdrawalLink, String? depositLink
});




}
/// @nodoc
class _$MyStatsDtoCopyWithImpl<$Res>
    implements $MyStatsDtoCopyWith<$Res> {
  _$MyStatsDtoCopyWithImpl(this._self, this._then);

  final MyStatsDto _self;
  final $Res Function(MyStatsDto) _then;

/// Create a copy of MyStatsDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? balance = freezed,Object? currency = freezed,Object? currentTradesCount = freezed,Object? currentTradesVolume = freezed,Object? equity = freezed,Object? freeMargin = freezed,Object? isAnyOpenTrades = freezed,Object? totalTradesCount = freezed,Object? totalTradesVolume = freezed,Object? withdrawalLink = freezed,Object? depositLink = freezed,}) {
  return _then(_self.copyWith(
balance: freezed == balance ? _self.balance : balance // ignore: cast_nullable_to_non_nullable
as double?,currency: freezed == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as int?,currentTradesCount: freezed == currentTradesCount ? _self.currentTradesCount : currentTradesCount // ignore: cast_nullable_to_non_nullable
as int?,currentTradesVolume: freezed == currentTradesVolume ? _self.currentTradesVolume : currentTradesVolume // ignore: cast_nullable_to_non_nullable
as double?,equity: freezed == equity ? _self.equity : equity // ignore: cast_nullable_to_non_nullable
as double?,freeMargin: freezed == freeMargin ? _self.freeMargin : freeMargin // ignore: cast_nullable_to_non_nullable
as double?,isAnyOpenTrades: freezed == isAnyOpenTrades ? _self.isAnyOpenTrades : isAnyOpenTrades // ignore: cast_nullable_to_non_nullable
as bool?,totalTradesCount: freezed == totalTradesCount ? _self.totalTradesCount : totalTradesCount // ignore: cast_nullable_to_non_nullable
as int?,totalTradesVolume: freezed == totalTradesVolume ? _self.totalTradesVolume : totalTradesVolume // ignore: cast_nullable_to_non_nullable
as double?,withdrawalLink: freezed == withdrawalLink ? _self.withdrawalLink : withdrawalLink // ignore: cast_nullable_to_non_nullable
as String?,depositLink: freezed == depositLink ? _self.depositLink : depositLink // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [MyStatsDto].
extension MyStatsDtoPatterns on MyStatsDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MyStatsDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MyStatsDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MyStatsDto value)  $default,){
final _that = this;
switch (_that) {
case _MyStatsDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MyStatsDto value)?  $default,){
final _that = this;
switch (_that) {
case _MyStatsDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double? balance,  int? currency,  int? currentTradesCount,  double? currentTradesVolume,  double? equity,  double? freeMargin,  bool? isAnyOpenTrades,  int? totalTradesCount,  double? totalTradesVolume,  String? withdrawalLink,  String? depositLink)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MyStatsDto() when $default != null:
return $default(_that.balance,_that.currency,_that.currentTradesCount,_that.currentTradesVolume,_that.equity,_that.freeMargin,_that.isAnyOpenTrades,_that.totalTradesCount,_that.totalTradesVolume,_that.withdrawalLink,_that.depositLink);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double? balance,  int? currency,  int? currentTradesCount,  double? currentTradesVolume,  double? equity,  double? freeMargin,  bool? isAnyOpenTrades,  int? totalTradesCount,  double? totalTradesVolume,  String? withdrawalLink,  String? depositLink)  $default,) {final _that = this;
switch (_that) {
case _MyStatsDto():
return $default(_that.balance,_that.currency,_that.currentTradesCount,_that.currentTradesVolume,_that.equity,_that.freeMargin,_that.isAnyOpenTrades,_that.totalTradesCount,_that.totalTradesVolume,_that.withdrawalLink,_that.depositLink);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double? balance,  int? currency,  int? currentTradesCount,  double? currentTradesVolume,  double? equity,  double? freeMargin,  bool? isAnyOpenTrades,  int? totalTradesCount,  double? totalTradesVolume,  String? withdrawalLink,  String? depositLink)?  $default,) {final _that = this;
switch (_that) {
case _MyStatsDto() when $default != null:
return $default(_that.balance,_that.currency,_that.currentTradesCount,_that.currentTradesVolume,_that.equity,_that.freeMargin,_that.isAnyOpenTrades,_that.totalTradesCount,_that.totalTradesVolume,_that.withdrawalLink,_that.depositLink);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MyStatsDto extends MyStatsDto {
  const _MyStatsDto({this.balance, this.currency, this.currentTradesCount, this.currentTradesVolume, this.equity, this.freeMargin, this.isAnyOpenTrades, this.totalTradesCount, this.totalTradesVolume, this.withdrawalLink, this.depositLink}): super._();
  factory _MyStatsDto.fromJson(Map<String, dynamic> json) => _$MyStatsDtoFromJson(json);

@override final  double? balance;
@override final  int? currency;
@override final  int? currentTradesCount;
@override final  double? currentTradesVolume;
@override final  double? equity;
@override final  double? freeMargin;
@override final  bool? isAnyOpenTrades;
@override final  int? totalTradesCount;
@override final  double? totalTradesVolume;
@override final  String? withdrawalLink;
@override final  String? depositLink;

/// Create a copy of MyStatsDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MyStatsDtoCopyWith<_MyStatsDto> get copyWith => __$MyStatsDtoCopyWithImpl<_MyStatsDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MyStatsDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MyStatsDto&&(identical(other.balance, balance) || other.balance == balance)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.currentTradesCount, currentTradesCount) || other.currentTradesCount == currentTradesCount)&&(identical(other.currentTradesVolume, currentTradesVolume) || other.currentTradesVolume == currentTradesVolume)&&(identical(other.equity, equity) || other.equity == equity)&&(identical(other.freeMargin, freeMargin) || other.freeMargin == freeMargin)&&(identical(other.isAnyOpenTrades, isAnyOpenTrades) || other.isAnyOpenTrades == isAnyOpenTrades)&&(identical(other.totalTradesCount, totalTradesCount) || other.totalTradesCount == totalTradesCount)&&(identical(other.totalTradesVolume, totalTradesVolume) || other.totalTradesVolume == totalTradesVolume)&&(identical(other.withdrawalLink, withdrawalLink) || other.withdrawalLink == withdrawalLink)&&(identical(other.depositLink, depositLink) || other.depositLink == depositLink));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,balance,currency,currentTradesCount,currentTradesVolume,equity,freeMargin,isAnyOpenTrades,totalTradesCount,totalTradesVolume,withdrawalLink,depositLink);

@override
String toString() {
  return 'MyStatsDto(balance: $balance, currency: $currency, currentTradesCount: $currentTradesCount, currentTradesVolume: $currentTradesVolume, equity: $equity, freeMargin: $freeMargin, isAnyOpenTrades: $isAnyOpenTrades, totalTradesCount: $totalTradesCount, totalTradesVolume: $totalTradesVolume, withdrawalLink: $withdrawalLink, depositLink: $depositLink)';
}


}

/// @nodoc
abstract mixin class _$MyStatsDtoCopyWith<$Res> implements $MyStatsDtoCopyWith<$Res> {
  factory _$MyStatsDtoCopyWith(_MyStatsDto value, $Res Function(_MyStatsDto) _then) = __$MyStatsDtoCopyWithImpl;
@override @useResult
$Res call({
 double? balance, int? currency, int? currentTradesCount, double? currentTradesVolume, double? equity, double? freeMargin, bool? isAnyOpenTrades, int? totalTradesCount, double? totalTradesVolume, String? withdrawalLink, String? depositLink
});




}
/// @nodoc
class __$MyStatsDtoCopyWithImpl<$Res>
    implements _$MyStatsDtoCopyWith<$Res> {
  __$MyStatsDtoCopyWithImpl(this._self, this._then);

  final _MyStatsDto _self;
  final $Res Function(_MyStatsDto) _then;

/// Create a copy of MyStatsDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? balance = freezed,Object? currency = freezed,Object? currentTradesCount = freezed,Object? currentTradesVolume = freezed,Object? equity = freezed,Object? freeMargin = freezed,Object? isAnyOpenTrades = freezed,Object? totalTradesCount = freezed,Object? totalTradesVolume = freezed,Object? withdrawalLink = freezed,Object? depositLink = freezed,}) {
  return _then(_MyStatsDto(
balance: freezed == balance ? _self.balance : balance // ignore: cast_nullable_to_non_nullable
as double?,currency: freezed == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as int?,currentTradesCount: freezed == currentTradesCount ? _self.currentTradesCount : currentTradesCount // ignore: cast_nullable_to_non_nullable
as int?,currentTradesVolume: freezed == currentTradesVolume ? _self.currentTradesVolume : currentTradesVolume // ignore: cast_nullable_to_non_nullable
as double?,equity: freezed == equity ? _self.equity : equity // ignore: cast_nullable_to_non_nullable
as double?,freeMargin: freezed == freeMargin ? _self.freeMargin : freeMargin // ignore: cast_nullable_to_non_nullable
as double?,isAnyOpenTrades: freezed == isAnyOpenTrades ? _self.isAnyOpenTrades : isAnyOpenTrades // ignore: cast_nullable_to_non_nullable
as bool?,totalTradesCount: freezed == totalTradesCount ? _self.totalTradesCount : totalTradesCount // ignore: cast_nullable_to_non_nullable
as int?,totalTradesVolume: freezed == totalTradesVolume ? _self.totalTradesVolume : totalTradesVolume // ignore: cast_nullable_to_non_nullable
as double?,withdrawalLink: freezed == withdrawalLink ? _self.withdrawalLink : withdrawalLink // ignore: cast_nullable_to_non_nullable
as String?,depositLink: freezed == depositLink ? _self.depositLink : depositLink // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
