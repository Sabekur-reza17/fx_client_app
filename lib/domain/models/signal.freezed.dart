// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signal.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Signal {

 int get id; int get actualTime; String get comment; String get symbol; int get action; int get tradingSystem; String get period; double get price; double get takeProfit; double get stopLoss; double get volume; double get profit;
/// Create a copy of Signal
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignalCopyWith<Signal> get copyWith => _$SignalCopyWithImpl<Signal>(this as Signal, _$identity);

  /// Serializes this Signal to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Signal&&(identical(other.id, id) || other.id == id)&&(identical(other.actualTime, actualTime) || other.actualTime == actualTime)&&(identical(other.comment, comment) || other.comment == comment)&&(identical(other.symbol, symbol) || other.symbol == symbol)&&(identical(other.action, action) || other.action == action)&&(identical(other.tradingSystem, tradingSystem) || other.tradingSystem == tradingSystem)&&(identical(other.period, period) || other.period == period)&&(identical(other.price, price) || other.price == price)&&(identical(other.takeProfit, takeProfit) || other.takeProfit == takeProfit)&&(identical(other.stopLoss, stopLoss) || other.stopLoss == stopLoss)&&(identical(other.volume, volume) || other.volume == volume)&&(identical(other.profit, profit) || other.profit == profit));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,actualTime,comment,symbol,action,tradingSystem,period,price,takeProfit,stopLoss,volume,profit);

@override
String toString() {
  return 'Signal(id: $id, actualTime: $actualTime, comment: $comment, symbol: $symbol, action: $action, tradingSystem: $tradingSystem, period: $period, price: $price, takeProfit: $takeProfit, stopLoss: $stopLoss, volume: $volume, profit: $profit)';
}


}

/// @nodoc
abstract mixin class $SignalCopyWith<$Res>  {
  factory $SignalCopyWith(Signal value, $Res Function(Signal) _then) = _$SignalCopyWithImpl;
@useResult
$Res call({
 int id, int actualTime, String comment, String symbol, int action, int tradingSystem, String period, double price, double takeProfit, double stopLoss, double volume, double profit
});




}
/// @nodoc
class _$SignalCopyWithImpl<$Res>
    implements $SignalCopyWith<$Res> {
  _$SignalCopyWithImpl(this._self, this._then);

  final Signal _self;
  final $Res Function(Signal) _then;

/// Create a copy of Signal
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? actualTime = null,Object? comment = null,Object? symbol = null,Object? action = null,Object? tradingSystem = null,Object? period = null,Object? price = null,Object? takeProfit = null,Object? stopLoss = null,Object? volume = null,Object? profit = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,actualTime: null == actualTime ? _self.actualTime : actualTime // ignore: cast_nullable_to_non_nullable
as int,comment: null == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as String,symbol: null == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String,action: null == action ? _self.action : action // ignore: cast_nullable_to_non_nullable
as int,tradingSystem: null == tradingSystem ? _self.tradingSystem : tradingSystem // ignore: cast_nullable_to_non_nullable
as int,period: null == period ? _self.period : period // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,takeProfit: null == takeProfit ? _self.takeProfit : takeProfit // ignore: cast_nullable_to_non_nullable
as double,stopLoss: null == stopLoss ? _self.stopLoss : stopLoss // ignore: cast_nullable_to_non_nullable
as double,volume: null == volume ? _self.volume : volume // ignore: cast_nullable_to_non_nullable
as double,profit: null == profit ? _self.profit : profit // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [Signal].
extension SignalPatterns on Signal {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Signal value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Signal() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Signal value)  $default,){
final _that = this;
switch (_that) {
case _Signal():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Signal value)?  $default,){
final _that = this;
switch (_that) {
case _Signal() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  int actualTime,  String comment,  String symbol,  int action,  int tradingSystem,  String period,  double price,  double takeProfit,  double stopLoss,  double volume,  double profit)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Signal() when $default != null:
return $default(_that.id,_that.actualTime,_that.comment,_that.symbol,_that.action,_that.tradingSystem,_that.period,_that.price,_that.takeProfit,_that.stopLoss,_that.volume,_that.profit);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  int actualTime,  String comment,  String symbol,  int action,  int tradingSystem,  String period,  double price,  double takeProfit,  double stopLoss,  double volume,  double profit)  $default,) {final _that = this;
switch (_that) {
case _Signal():
return $default(_that.id,_that.actualTime,_that.comment,_that.symbol,_that.action,_that.tradingSystem,_that.period,_that.price,_that.takeProfit,_that.stopLoss,_that.volume,_that.profit);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  int actualTime,  String comment,  String symbol,  int action,  int tradingSystem,  String period,  double price,  double takeProfit,  double stopLoss,  double volume,  double profit)?  $default,) {final _that = this;
switch (_that) {
case _Signal() when $default != null:
return $default(_that.id,_that.actualTime,_that.comment,_that.symbol,_that.action,_that.tradingSystem,_that.period,_that.price,_that.takeProfit,_that.stopLoss,_that.volume,_that.profit);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Signal extends Signal {
  const _Signal({this.id = 0, this.actualTime = 0, this.comment = '', this.symbol = '', this.action = 0, this.tradingSystem = 0, this.period = '', this.price = 0.0, this.takeProfit = 0.0, this.stopLoss = 0.0, this.volume = 0.0, this.profit = 0.0}): super._();
  factory _Signal.fromJson(Map<String, dynamic> json) => _$SignalFromJson(json);

@override@JsonKey() final  int id;
@override@JsonKey() final  int actualTime;
@override@JsonKey() final  String comment;
@override@JsonKey() final  String symbol;
@override@JsonKey() final  int action;
@override@JsonKey() final  int tradingSystem;
@override@JsonKey() final  String period;
@override@JsonKey() final  double price;
@override@JsonKey() final  double takeProfit;
@override@JsonKey() final  double stopLoss;
@override@JsonKey() final  double volume;
@override@JsonKey() final  double profit;

/// Create a copy of Signal
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SignalCopyWith<_Signal> get copyWith => __$SignalCopyWithImpl<_Signal>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SignalToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Signal&&(identical(other.id, id) || other.id == id)&&(identical(other.actualTime, actualTime) || other.actualTime == actualTime)&&(identical(other.comment, comment) || other.comment == comment)&&(identical(other.symbol, symbol) || other.symbol == symbol)&&(identical(other.action, action) || other.action == action)&&(identical(other.tradingSystem, tradingSystem) || other.tradingSystem == tradingSystem)&&(identical(other.period, period) || other.period == period)&&(identical(other.price, price) || other.price == price)&&(identical(other.takeProfit, takeProfit) || other.takeProfit == takeProfit)&&(identical(other.stopLoss, stopLoss) || other.stopLoss == stopLoss)&&(identical(other.volume, volume) || other.volume == volume)&&(identical(other.profit, profit) || other.profit == profit));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,actualTime,comment,symbol,action,tradingSystem,period,price,takeProfit,stopLoss,volume,profit);

@override
String toString() {
  return 'Signal(id: $id, actualTime: $actualTime, comment: $comment, symbol: $symbol, action: $action, tradingSystem: $tradingSystem, period: $period, price: $price, takeProfit: $takeProfit, stopLoss: $stopLoss, volume: $volume, profit: $profit)';
}


}

/// @nodoc
abstract mixin class _$SignalCopyWith<$Res> implements $SignalCopyWith<$Res> {
  factory _$SignalCopyWith(_Signal value, $Res Function(_Signal) _then) = __$SignalCopyWithImpl;
@override @useResult
$Res call({
 int id, int actualTime, String comment, String symbol, int action, int tradingSystem, String period, double price, double takeProfit, double stopLoss, double volume, double profit
});




}
/// @nodoc
class __$SignalCopyWithImpl<$Res>
    implements _$SignalCopyWith<$Res> {
  __$SignalCopyWithImpl(this._self, this._then);

  final _Signal _self;
  final $Res Function(_Signal) _then;

/// Create a copy of Signal
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? actualTime = null,Object? comment = null,Object? symbol = null,Object? action = null,Object? tradingSystem = null,Object? period = null,Object? price = null,Object? takeProfit = null,Object? stopLoss = null,Object? volume = null,Object? profit = null,}) {
  return _then(_Signal(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,actualTime: null == actualTime ? _self.actualTime : actualTime // ignore: cast_nullable_to_non_nullable
as int,comment: null == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as String,symbol: null == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String,action: null == action ? _self.action : action // ignore: cast_nullable_to_non_nullable
as int,tradingSystem: null == tradingSystem ? _self.tradingSystem : tradingSystem // ignore: cast_nullable_to_non_nullable
as int,period: null == period ? _self.period : period // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,takeProfit: null == takeProfit ? _self.takeProfit : takeProfit // ignore: cast_nullable_to_non_nullable
as double,stopLoss: null == stopLoss ? _self.stopLoss : stopLoss // ignore: cast_nullable_to_non_nullable
as double,volume: null == volume ? _self.volume : volume // ignore: cast_nullable_to_non_nullable
as double,profit: null == profit ? _self.profit : profit // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
