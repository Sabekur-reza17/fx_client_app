// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trade.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Trade {

 int get ticket; String get symbol; int get cmd; double get volume; int get openTime; double get openPrice; int get closeTime; double get closePrice; double get profit; double get swaps; double get commission;
/// Create a copy of Trade
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TradeCopyWith<Trade> get copyWith => _$TradeCopyWithImpl<Trade>(this as Trade, _$identity);

  /// Serializes this Trade to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Trade&&(identical(other.ticket, ticket) || other.ticket == ticket)&&(identical(other.symbol, symbol) || other.symbol == symbol)&&(identical(other.cmd, cmd) || other.cmd == cmd)&&(identical(other.volume, volume) || other.volume == volume)&&(identical(other.openTime, openTime) || other.openTime == openTime)&&(identical(other.openPrice, openPrice) || other.openPrice == openPrice)&&(identical(other.closeTime, closeTime) || other.closeTime == closeTime)&&(identical(other.closePrice, closePrice) || other.closePrice == closePrice)&&(identical(other.profit, profit) || other.profit == profit)&&(identical(other.swaps, swaps) || other.swaps == swaps)&&(identical(other.commission, commission) || other.commission == commission));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,ticket,symbol,cmd,volume,openTime,openPrice,closeTime,closePrice,profit,swaps,commission);

@override
String toString() {
  return 'Trade(ticket: $ticket, symbol: $symbol, cmd: $cmd, volume: $volume, openTime: $openTime, openPrice: $openPrice, closeTime: $closeTime, closePrice: $closePrice, profit: $profit, swaps: $swaps, commission: $commission)';
}


}

/// @nodoc
abstract mixin class $TradeCopyWith<$Res>  {
  factory $TradeCopyWith(Trade value, $Res Function(Trade) _then) = _$TradeCopyWithImpl;
@useResult
$Res call({
 int ticket, String symbol, int cmd, double volume, int openTime, double openPrice, int closeTime, double closePrice, double profit, double swaps, double commission
});




}
/// @nodoc
class _$TradeCopyWithImpl<$Res>
    implements $TradeCopyWith<$Res> {
  _$TradeCopyWithImpl(this._self, this._then);

  final Trade _self;
  final $Res Function(Trade) _then;

/// Create a copy of Trade
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? ticket = null,Object? symbol = null,Object? cmd = null,Object? volume = null,Object? openTime = null,Object? openPrice = null,Object? closeTime = null,Object? closePrice = null,Object? profit = null,Object? swaps = null,Object? commission = null,}) {
  return _then(_self.copyWith(
ticket: null == ticket ? _self.ticket : ticket // ignore: cast_nullable_to_non_nullable
as int,symbol: null == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String,cmd: null == cmd ? _self.cmd : cmd // ignore: cast_nullable_to_non_nullable
as int,volume: null == volume ? _self.volume : volume // ignore: cast_nullable_to_non_nullable
as double,openTime: null == openTime ? _self.openTime : openTime // ignore: cast_nullable_to_non_nullable
as int,openPrice: null == openPrice ? _self.openPrice : openPrice // ignore: cast_nullable_to_non_nullable
as double,closeTime: null == closeTime ? _self.closeTime : closeTime // ignore: cast_nullable_to_non_nullable
as int,closePrice: null == closePrice ? _self.closePrice : closePrice // ignore: cast_nullable_to_non_nullable
as double,profit: null == profit ? _self.profit : profit // ignore: cast_nullable_to_non_nullable
as double,swaps: null == swaps ? _self.swaps : swaps // ignore: cast_nullable_to_non_nullable
as double,commission: null == commission ? _self.commission : commission // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [Trade].
extension TradePatterns on Trade {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Trade value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Trade() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Trade value)  $default,){
final _that = this;
switch (_that) {
case _Trade():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Trade value)?  $default,){
final _that = this;
switch (_that) {
case _Trade() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int ticket,  String symbol,  int cmd,  double volume,  int openTime,  double openPrice,  int closeTime,  double closePrice,  double profit,  double swaps,  double commission)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Trade() when $default != null:
return $default(_that.ticket,_that.symbol,_that.cmd,_that.volume,_that.openTime,_that.openPrice,_that.closeTime,_that.closePrice,_that.profit,_that.swaps,_that.commission);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int ticket,  String symbol,  int cmd,  double volume,  int openTime,  double openPrice,  int closeTime,  double closePrice,  double profit,  double swaps,  double commission)  $default,) {final _that = this;
switch (_that) {
case _Trade():
return $default(_that.ticket,_that.symbol,_that.cmd,_that.volume,_that.openTime,_that.openPrice,_that.closeTime,_that.closePrice,_that.profit,_that.swaps,_that.commission);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int ticket,  String symbol,  int cmd,  double volume,  int openTime,  double openPrice,  int closeTime,  double closePrice,  double profit,  double swaps,  double commission)?  $default,) {final _that = this;
switch (_that) {
case _Trade() when $default != null:
return $default(_that.ticket,_that.symbol,_that.cmd,_that.volume,_that.openTime,_that.openPrice,_that.closeTime,_that.closePrice,_that.profit,_that.swaps,_that.commission);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Trade extends Trade {
  const _Trade({this.ticket = 0, this.symbol = '', this.cmd = 0, this.volume = 0.0, this.openTime = 0, this.openPrice = 0.0, this.closeTime = 0, this.closePrice = 0.0, this.profit = 0.0, this.swaps = 0.0, this.commission = 0.0}): super._();
  factory _Trade.fromJson(Map<String, dynamic> json) => _$TradeFromJson(json);

@override@JsonKey() final  int ticket;
@override@JsonKey() final  String symbol;
@override@JsonKey() final  int cmd;
@override@JsonKey() final  double volume;
@override@JsonKey() final  int openTime;
@override@JsonKey() final  double openPrice;
@override@JsonKey() final  int closeTime;
@override@JsonKey() final  double closePrice;
@override@JsonKey() final  double profit;
@override@JsonKey() final  double swaps;
@override@JsonKey() final  double commission;

/// Create a copy of Trade
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TradeCopyWith<_Trade> get copyWith => __$TradeCopyWithImpl<_Trade>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TradeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Trade&&(identical(other.ticket, ticket) || other.ticket == ticket)&&(identical(other.symbol, symbol) || other.symbol == symbol)&&(identical(other.cmd, cmd) || other.cmd == cmd)&&(identical(other.volume, volume) || other.volume == volume)&&(identical(other.openTime, openTime) || other.openTime == openTime)&&(identical(other.openPrice, openPrice) || other.openPrice == openPrice)&&(identical(other.closeTime, closeTime) || other.closeTime == closeTime)&&(identical(other.closePrice, closePrice) || other.closePrice == closePrice)&&(identical(other.profit, profit) || other.profit == profit)&&(identical(other.swaps, swaps) || other.swaps == swaps)&&(identical(other.commission, commission) || other.commission == commission));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,ticket,symbol,cmd,volume,openTime,openPrice,closeTime,closePrice,profit,swaps,commission);

@override
String toString() {
  return 'Trade(ticket: $ticket, symbol: $symbol, cmd: $cmd, volume: $volume, openTime: $openTime, openPrice: $openPrice, closeTime: $closeTime, closePrice: $closePrice, profit: $profit, swaps: $swaps, commission: $commission)';
}


}

/// @nodoc
abstract mixin class _$TradeCopyWith<$Res> implements $TradeCopyWith<$Res> {
  factory _$TradeCopyWith(_Trade value, $Res Function(_Trade) _then) = __$TradeCopyWithImpl;
@override @useResult
$Res call({
 int ticket, String symbol, int cmd, double volume, int openTime, double openPrice, int closeTime, double closePrice, double profit, double swaps, double commission
});




}
/// @nodoc
class __$TradeCopyWithImpl<$Res>
    implements _$TradeCopyWith<$Res> {
  __$TradeCopyWithImpl(this._self, this._then);

  final _Trade _self;
  final $Res Function(_Trade) _then;

/// Create a copy of Trade
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? ticket = null,Object? symbol = null,Object? cmd = null,Object? volume = null,Object? openTime = null,Object? openPrice = null,Object? closeTime = null,Object? closePrice = null,Object? profit = null,Object? swaps = null,Object? commission = null,}) {
  return _then(_Trade(
ticket: null == ticket ? _self.ticket : ticket // ignore: cast_nullable_to_non_nullable
as int,symbol: null == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String,cmd: null == cmd ? _self.cmd : cmd // ignore: cast_nullable_to_non_nullable
as int,volume: null == volume ? _self.volume : volume // ignore: cast_nullable_to_non_nullable
as double,openTime: null == openTime ? _self.openTime : openTime // ignore: cast_nullable_to_non_nullable
as int,openPrice: null == openPrice ? _self.openPrice : openPrice // ignore: cast_nullable_to_non_nullable
as double,closeTime: null == closeTime ? _self.closeTime : closeTime // ignore: cast_nullable_to_non_nullable
as int,closePrice: null == closePrice ? _self.closePrice : closePrice // ignore: cast_nullable_to_non_nullable
as double,profit: null == profit ? _self.profit : profit // ignore: cast_nullable_to_non_nullable
as double,swaps: null == swaps ? _self.swaps : swaps // ignore: cast_nullable_to_non_nullable
as double,commission: null == commission ? _self.commission : commission // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
