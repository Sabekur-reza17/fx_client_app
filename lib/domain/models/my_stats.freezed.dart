// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_stats.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MyStats {

 double get balance; int get currency; int get currentTradesCount; double get currentTradesVolume; double get equity; double get freeMargin; bool get isAnyOpenTrades; int get totalTradesCount; double get totalTradesVolume; String get withdrawalLink; String get depositLink;
/// Create a copy of MyStats
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MyStatsCopyWith<MyStats> get copyWith => _$MyStatsCopyWithImpl<MyStats>(this as MyStats, _$identity);

  /// Serializes this MyStats to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MyStats&&(identical(other.balance, balance) || other.balance == balance)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.currentTradesCount, currentTradesCount) || other.currentTradesCount == currentTradesCount)&&(identical(other.currentTradesVolume, currentTradesVolume) || other.currentTradesVolume == currentTradesVolume)&&(identical(other.equity, equity) || other.equity == equity)&&(identical(other.freeMargin, freeMargin) || other.freeMargin == freeMargin)&&(identical(other.isAnyOpenTrades, isAnyOpenTrades) || other.isAnyOpenTrades == isAnyOpenTrades)&&(identical(other.totalTradesCount, totalTradesCount) || other.totalTradesCount == totalTradesCount)&&(identical(other.totalTradesVolume, totalTradesVolume) || other.totalTradesVolume == totalTradesVolume)&&(identical(other.withdrawalLink, withdrawalLink) || other.withdrawalLink == withdrawalLink)&&(identical(other.depositLink, depositLink) || other.depositLink == depositLink));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,balance,currency,currentTradesCount,currentTradesVolume,equity,freeMargin,isAnyOpenTrades,totalTradesCount,totalTradesVolume,withdrawalLink,depositLink);

@override
String toString() {
  return 'MyStats(balance: $balance, currency: $currency, currentTradesCount: $currentTradesCount, currentTradesVolume: $currentTradesVolume, equity: $equity, freeMargin: $freeMargin, isAnyOpenTrades: $isAnyOpenTrades, totalTradesCount: $totalTradesCount, totalTradesVolume: $totalTradesVolume, withdrawalLink: $withdrawalLink, depositLink: $depositLink)';
}


}

/// @nodoc
abstract mixin class $MyStatsCopyWith<$Res>  {
  factory $MyStatsCopyWith(MyStats value, $Res Function(MyStats) _then) = _$MyStatsCopyWithImpl;
@useResult
$Res call({
 double balance, int currency, int currentTradesCount, double currentTradesVolume, double equity, double freeMargin, bool isAnyOpenTrades, int totalTradesCount, double totalTradesVolume, String withdrawalLink, String depositLink
});




}
/// @nodoc
class _$MyStatsCopyWithImpl<$Res>
    implements $MyStatsCopyWith<$Res> {
  _$MyStatsCopyWithImpl(this._self, this._then);

  final MyStats _self;
  final $Res Function(MyStats) _then;

/// Create a copy of MyStats
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? balance = null,Object? currency = null,Object? currentTradesCount = null,Object? currentTradesVolume = null,Object? equity = null,Object? freeMargin = null,Object? isAnyOpenTrades = null,Object? totalTradesCount = null,Object? totalTradesVolume = null,Object? withdrawalLink = null,Object? depositLink = null,}) {
  return _then(_self.copyWith(
balance: null == balance ? _self.balance : balance // ignore: cast_nullable_to_non_nullable
as double,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as int,currentTradesCount: null == currentTradesCount ? _self.currentTradesCount : currentTradesCount // ignore: cast_nullable_to_non_nullable
as int,currentTradesVolume: null == currentTradesVolume ? _self.currentTradesVolume : currentTradesVolume // ignore: cast_nullable_to_non_nullable
as double,equity: null == equity ? _self.equity : equity // ignore: cast_nullable_to_non_nullable
as double,freeMargin: null == freeMargin ? _self.freeMargin : freeMargin // ignore: cast_nullable_to_non_nullable
as double,isAnyOpenTrades: null == isAnyOpenTrades ? _self.isAnyOpenTrades : isAnyOpenTrades // ignore: cast_nullable_to_non_nullable
as bool,totalTradesCount: null == totalTradesCount ? _self.totalTradesCount : totalTradesCount // ignore: cast_nullable_to_non_nullable
as int,totalTradesVolume: null == totalTradesVolume ? _self.totalTradesVolume : totalTradesVolume // ignore: cast_nullable_to_non_nullable
as double,withdrawalLink: null == withdrawalLink ? _self.withdrawalLink : withdrawalLink // ignore: cast_nullable_to_non_nullable
as String,depositLink: null == depositLink ? _self.depositLink : depositLink // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [MyStats].
extension MyStatsPatterns on MyStats {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MyStats value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MyStats() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MyStats value)  $default,){
final _that = this;
switch (_that) {
case _MyStats():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MyStats value)?  $default,){
final _that = this;
switch (_that) {
case _MyStats() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double balance,  int currency,  int currentTradesCount,  double currentTradesVolume,  double equity,  double freeMargin,  bool isAnyOpenTrades,  int totalTradesCount,  double totalTradesVolume,  String withdrawalLink,  String depositLink)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MyStats() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double balance,  int currency,  int currentTradesCount,  double currentTradesVolume,  double equity,  double freeMargin,  bool isAnyOpenTrades,  int totalTradesCount,  double totalTradesVolume,  String withdrawalLink,  String depositLink)  $default,) {final _that = this;
switch (_that) {
case _MyStats():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double balance,  int currency,  int currentTradesCount,  double currentTradesVolume,  double equity,  double freeMargin,  bool isAnyOpenTrades,  int totalTradesCount,  double totalTradesVolume,  String withdrawalLink,  String depositLink)?  $default,) {final _that = this;
switch (_that) {
case _MyStats() when $default != null:
return $default(_that.balance,_that.currency,_that.currentTradesCount,_that.currentTradesVolume,_that.equity,_that.freeMargin,_that.isAnyOpenTrades,_that.totalTradesCount,_that.totalTradesVolume,_that.withdrawalLink,_that.depositLink);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MyStats extends MyStats {
  const _MyStats({this.balance = 0.0, this.currency = 0, this.currentTradesCount = 0, this.currentTradesVolume = 0.0, this.equity = 0.0, this.freeMargin = 0.0, this.isAnyOpenTrades = false, this.totalTradesCount = 0, this.totalTradesVolume = 0.0, this.withdrawalLink = '', this.depositLink = ''}): super._();
  factory _MyStats.fromJson(Map<String, dynamic> json) => _$MyStatsFromJson(json);

@override@JsonKey() final  double balance;
@override@JsonKey() final  int currency;
@override@JsonKey() final  int currentTradesCount;
@override@JsonKey() final  double currentTradesVolume;
@override@JsonKey() final  double equity;
@override@JsonKey() final  double freeMargin;
@override@JsonKey() final  bool isAnyOpenTrades;
@override@JsonKey() final  int totalTradesCount;
@override@JsonKey() final  double totalTradesVolume;
@override@JsonKey() final  String withdrawalLink;
@override@JsonKey() final  String depositLink;

/// Create a copy of MyStats
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MyStatsCopyWith<_MyStats> get copyWith => __$MyStatsCopyWithImpl<_MyStats>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MyStatsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MyStats&&(identical(other.balance, balance) || other.balance == balance)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.currentTradesCount, currentTradesCount) || other.currentTradesCount == currentTradesCount)&&(identical(other.currentTradesVolume, currentTradesVolume) || other.currentTradesVolume == currentTradesVolume)&&(identical(other.equity, equity) || other.equity == equity)&&(identical(other.freeMargin, freeMargin) || other.freeMargin == freeMargin)&&(identical(other.isAnyOpenTrades, isAnyOpenTrades) || other.isAnyOpenTrades == isAnyOpenTrades)&&(identical(other.totalTradesCount, totalTradesCount) || other.totalTradesCount == totalTradesCount)&&(identical(other.totalTradesVolume, totalTradesVolume) || other.totalTradesVolume == totalTradesVolume)&&(identical(other.withdrawalLink, withdrawalLink) || other.withdrawalLink == withdrawalLink)&&(identical(other.depositLink, depositLink) || other.depositLink == depositLink));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,balance,currency,currentTradesCount,currentTradesVolume,equity,freeMargin,isAnyOpenTrades,totalTradesCount,totalTradesVolume,withdrawalLink,depositLink);

@override
String toString() {
  return 'MyStats(balance: $balance, currency: $currency, currentTradesCount: $currentTradesCount, currentTradesVolume: $currentTradesVolume, equity: $equity, freeMargin: $freeMargin, isAnyOpenTrades: $isAnyOpenTrades, totalTradesCount: $totalTradesCount, totalTradesVolume: $totalTradesVolume, withdrawalLink: $withdrawalLink, depositLink: $depositLink)';
}


}

/// @nodoc
abstract mixin class _$MyStatsCopyWith<$Res> implements $MyStatsCopyWith<$Res> {
  factory _$MyStatsCopyWith(_MyStats value, $Res Function(_MyStats) _then) = __$MyStatsCopyWithImpl;
@override @useResult
$Res call({
 double balance, int currency, int currentTradesCount, double currentTradesVolume, double equity, double freeMargin, bool isAnyOpenTrades, int totalTradesCount, double totalTradesVolume, String withdrawalLink, String depositLink
});




}
/// @nodoc
class __$MyStatsCopyWithImpl<$Res>
    implements _$MyStatsCopyWith<$Res> {
  __$MyStatsCopyWithImpl(this._self, this._then);

  final _MyStats _self;
  final $Res Function(_MyStats) _then;

/// Create a copy of MyStats
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? balance = null,Object? currency = null,Object? currentTradesCount = null,Object? currentTradesVolume = null,Object? equity = null,Object? freeMargin = null,Object? isAnyOpenTrades = null,Object? totalTradesCount = null,Object? totalTradesVolume = null,Object? withdrawalLink = null,Object? depositLink = null,}) {
  return _then(_MyStats(
balance: null == balance ? _self.balance : balance // ignore: cast_nullable_to_non_nullable
as double,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as int,currentTradesCount: null == currentTradesCount ? _self.currentTradesCount : currentTradesCount // ignore: cast_nullable_to_non_nullable
as int,currentTradesVolume: null == currentTradesVolume ? _self.currentTradesVolume : currentTradesVolume // ignore: cast_nullable_to_non_nullable
as double,equity: null == equity ? _self.equity : equity // ignore: cast_nullable_to_non_nullable
as double,freeMargin: null == freeMargin ? _self.freeMargin : freeMargin // ignore: cast_nullable_to_non_nullable
as double,isAnyOpenTrades: null == isAnyOpenTrades ? _self.isAnyOpenTrades : isAnyOpenTrades // ignore: cast_nullable_to_non_nullable
as bool,totalTradesCount: null == totalTradesCount ? _self.totalTradesCount : totalTradesCount // ignore: cast_nullable_to_non_nullable
as int,totalTradesVolume: null == totalTradesVolume ? _self.totalTradesVolume : totalTradesVolume // ignore: cast_nullable_to_non_nullable
as double,withdrawalLink: null == withdrawalLink ? _self.withdrawalLink : withdrawalLink // ignore: cast_nullable_to_non_nullable
as String,depositLink: null == depositLink ? _self.depositLink : depositLink // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
