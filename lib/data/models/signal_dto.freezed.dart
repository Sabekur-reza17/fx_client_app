// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signal_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SignalDto {

@JsonKey(name: 'Id') int? get id;@JsonKey(name: 'ActualTime') int? get actualTime;@JsonKey(name: 'Comment') String? get comment;@JsonKey(name: 'Pair') String? get symbol;@JsonKey(name: 'Cmd') int? get action;@JsonKey(name: 'TradingSystem') int? get tradingSystem;@JsonKey(name: 'Period') String? get period;@JsonKey(name: 'Price') double? get price;@JsonKey(name: 'Tp') double? get takeProfit;@JsonKey(name: 'Sl') double? get stopLoss;@JsonKey(name: 'Volume') double? get volume;@JsonKey(name: 'Profit') double? get profit;
/// Create a copy of SignalDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignalDtoCopyWith<SignalDto> get copyWith => _$SignalDtoCopyWithImpl<SignalDto>(this as SignalDto, _$identity);

  /// Serializes this SignalDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignalDto&&(identical(other.id, id) || other.id == id)&&(identical(other.actualTime, actualTime) || other.actualTime == actualTime)&&(identical(other.comment, comment) || other.comment == comment)&&(identical(other.symbol, symbol) || other.symbol == symbol)&&(identical(other.action, action) || other.action == action)&&(identical(other.tradingSystem, tradingSystem) || other.tradingSystem == tradingSystem)&&(identical(other.period, period) || other.period == period)&&(identical(other.price, price) || other.price == price)&&(identical(other.takeProfit, takeProfit) || other.takeProfit == takeProfit)&&(identical(other.stopLoss, stopLoss) || other.stopLoss == stopLoss)&&(identical(other.volume, volume) || other.volume == volume)&&(identical(other.profit, profit) || other.profit == profit));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,actualTime,comment,symbol,action,tradingSystem,period,price,takeProfit,stopLoss,volume,profit);

@override
String toString() {
  return 'SignalDto(id: $id, actualTime: $actualTime, comment: $comment, symbol: $symbol, action: $action, tradingSystem: $tradingSystem, period: $period, price: $price, takeProfit: $takeProfit, stopLoss: $stopLoss, volume: $volume, profit: $profit)';
}


}

/// @nodoc
abstract mixin class $SignalDtoCopyWith<$Res>  {
  factory $SignalDtoCopyWith(SignalDto value, $Res Function(SignalDto) _then) = _$SignalDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'Id') int? id,@JsonKey(name: 'ActualTime') int? actualTime,@JsonKey(name: 'Comment') String? comment,@JsonKey(name: 'Pair') String? symbol,@JsonKey(name: 'Cmd') int? action,@JsonKey(name: 'TradingSystem') int? tradingSystem,@JsonKey(name: 'Period') String? period,@JsonKey(name: 'Price') double? price,@JsonKey(name: 'Tp') double? takeProfit,@JsonKey(name: 'Sl') double? stopLoss,@JsonKey(name: 'Volume') double? volume,@JsonKey(name: 'Profit') double? profit
});




}
/// @nodoc
class _$SignalDtoCopyWithImpl<$Res>
    implements $SignalDtoCopyWith<$Res> {
  _$SignalDtoCopyWithImpl(this._self, this._then);

  final SignalDto _self;
  final $Res Function(SignalDto) _then;

/// Create a copy of SignalDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? actualTime = freezed,Object? comment = freezed,Object? symbol = freezed,Object? action = freezed,Object? tradingSystem = freezed,Object? period = freezed,Object? price = freezed,Object? takeProfit = freezed,Object? stopLoss = freezed,Object? volume = freezed,Object? profit = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,actualTime: freezed == actualTime ? _self.actualTime : actualTime // ignore: cast_nullable_to_non_nullable
as int?,comment: freezed == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as String?,symbol: freezed == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String?,action: freezed == action ? _self.action : action // ignore: cast_nullable_to_non_nullable
as int?,tradingSystem: freezed == tradingSystem ? _self.tradingSystem : tradingSystem // ignore: cast_nullable_to_non_nullable
as int?,period: freezed == period ? _self.period : period // ignore: cast_nullable_to_non_nullable
as String?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double?,takeProfit: freezed == takeProfit ? _self.takeProfit : takeProfit // ignore: cast_nullable_to_non_nullable
as double?,stopLoss: freezed == stopLoss ? _self.stopLoss : stopLoss // ignore: cast_nullable_to_non_nullable
as double?,volume: freezed == volume ? _self.volume : volume // ignore: cast_nullable_to_non_nullable
as double?,profit: freezed == profit ? _self.profit : profit // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// Adds pattern-matching-related methods to [SignalDto].
extension SignalDtoPatterns on SignalDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SignalDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SignalDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SignalDto value)  $default,){
final _that = this;
switch (_that) {
case _SignalDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SignalDto value)?  $default,){
final _that = this;
switch (_that) {
case _SignalDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'Id')  int? id, @JsonKey(name: 'ActualTime')  int? actualTime, @JsonKey(name: 'Comment')  String? comment, @JsonKey(name: 'Pair')  String? symbol, @JsonKey(name: 'Cmd')  int? action, @JsonKey(name: 'TradingSystem')  int? tradingSystem, @JsonKey(name: 'Period')  String? period, @JsonKey(name: 'Price')  double? price, @JsonKey(name: 'Tp')  double? takeProfit, @JsonKey(name: 'Sl')  double? stopLoss, @JsonKey(name: 'Volume')  double? volume, @JsonKey(name: 'Profit')  double? profit)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SignalDto() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'Id')  int? id, @JsonKey(name: 'ActualTime')  int? actualTime, @JsonKey(name: 'Comment')  String? comment, @JsonKey(name: 'Pair')  String? symbol, @JsonKey(name: 'Cmd')  int? action, @JsonKey(name: 'TradingSystem')  int? tradingSystem, @JsonKey(name: 'Period')  String? period, @JsonKey(name: 'Price')  double? price, @JsonKey(name: 'Tp')  double? takeProfit, @JsonKey(name: 'Sl')  double? stopLoss, @JsonKey(name: 'Volume')  double? volume, @JsonKey(name: 'Profit')  double? profit)  $default,) {final _that = this;
switch (_that) {
case _SignalDto():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'Id')  int? id, @JsonKey(name: 'ActualTime')  int? actualTime, @JsonKey(name: 'Comment')  String? comment, @JsonKey(name: 'Pair')  String? symbol, @JsonKey(name: 'Cmd')  int? action, @JsonKey(name: 'TradingSystem')  int? tradingSystem, @JsonKey(name: 'Period')  String? period, @JsonKey(name: 'Price')  double? price, @JsonKey(name: 'Tp')  double? takeProfit, @JsonKey(name: 'Sl')  double? stopLoss, @JsonKey(name: 'Volume')  double? volume, @JsonKey(name: 'Profit')  double? profit)?  $default,) {final _that = this;
switch (_that) {
case _SignalDto() when $default != null:
return $default(_that.id,_that.actualTime,_that.comment,_that.symbol,_that.action,_that.tradingSystem,_that.period,_that.price,_that.takeProfit,_that.stopLoss,_that.volume,_that.profit);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SignalDto extends SignalDto {
  const _SignalDto({@JsonKey(name: 'Id') this.id, @JsonKey(name: 'ActualTime') this.actualTime, @JsonKey(name: 'Comment') this.comment, @JsonKey(name: 'Pair') this.symbol, @JsonKey(name: 'Cmd') this.action, @JsonKey(name: 'TradingSystem') this.tradingSystem, @JsonKey(name: 'Period') this.period, @JsonKey(name: 'Price') this.price, @JsonKey(name: 'Tp') this.takeProfit, @JsonKey(name: 'Sl') this.stopLoss, @JsonKey(name: 'Volume') this.volume, @JsonKey(name: 'Profit') this.profit}): super._();
  factory _SignalDto.fromJson(Map<String, dynamic> json) => _$SignalDtoFromJson(json);

@override@JsonKey(name: 'Id') final  int? id;
@override@JsonKey(name: 'ActualTime') final  int? actualTime;
@override@JsonKey(name: 'Comment') final  String? comment;
@override@JsonKey(name: 'Pair') final  String? symbol;
@override@JsonKey(name: 'Cmd') final  int? action;
@override@JsonKey(name: 'TradingSystem') final  int? tradingSystem;
@override@JsonKey(name: 'Period') final  String? period;
@override@JsonKey(name: 'Price') final  double? price;
@override@JsonKey(name: 'Tp') final  double? takeProfit;
@override@JsonKey(name: 'Sl') final  double? stopLoss;
@override@JsonKey(name: 'Volume') final  double? volume;
@override@JsonKey(name: 'Profit') final  double? profit;

/// Create a copy of SignalDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SignalDtoCopyWith<_SignalDto> get copyWith => __$SignalDtoCopyWithImpl<_SignalDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SignalDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SignalDto&&(identical(other.id, id) || other.id == id)&&(identical(other.actualTime, actualTime) || other.actualTime == actualTime)&&(identical(other.comment, comment) || other.comment == comment)&&(identical(other.symbol, symbol) || other.symbol == symbol)&&(identical(other.action, action) || other.action == action)&&(identical(other.tradingSystem, tradingSystem) || other.tradingSystem == tradingSystem)&&(identical(other.period, period) || other.period == period)&&(identical(other.price, price) || other.price == price)&&(identical(other.takeProfit, takeProfit) || other.takeProfit == takeProfit)&&(identical(other.stopLoss, stopLoss) || other.stopLoss == stopLoss)&&(identical(other.volume, volume) || other.volume == volume)&&(identical(other.profit, profit) || other.profit == profit));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,actualTime,comment,symbol,action,tradingSystem,period,price,takeProfit,stopLoss,volume,profit);

@override
String toString() {
  return 'SignalDto(id: $id, actualTime: $actualTime, comment: $comment, symbol: $symbol, action: $action, tradingSystem: $tradingSystem, period: $period, price: $price, takeProfit: $takeProfit, stopLoss: $stopLoss, volume: $volume, profit: $profit)';
}


}

/// @nodoc
abstract mixin class _$SignalDtoCopyWith<$Res> implements $SignalDtoCopyWith<$Res> {
  factory _$SignalDtoCopyWith(_SignalDto value, $Res Function(_SignalDto) _then) = __$SignalDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'Id') int? id,@JsonKey(name: 'ActualTime') int? actualTime,@JsonKey(name: 'Comment') String? comment,@JsonKey(name: 'Pair') String? symbol,@JsonKey(name: 'Cmd') int? action,@JsonKey(name: 'TradingSystem') int? tradingSystem,@JsonKey(name: 'Period') String? period,@JsonKey(name: 'Price') double? price,@JsonKey(name: 'Tp') double? takeProfit,@JsonKey(name: 'Sl') double? stopLoss,@JsonKey(name: 'Volume') double? volume,@JsonKey(name: 'Profit') double? profit
});




}
/// @nodoc
class __$SignalDtoCopyWithImpl<$Res>
    implements _$SignalDtoCopyWith<$Res> {
  __$SignalDtoCopyWithImpl(this._self, this._then);

  final _SignalDto _self;
  final $Res Function(_SignalDto) _then;

/// Create a copy of SignalDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? actualTime = freezed,Object? comment = freezed,Object? symbol = freezed,Object? action = freezed,Object? tradingSystem = freezed,Object? period = freezed,Object? price = freezed,Object? takeProfit = freezed,Object? stopLoss = freezed,Object? volume = freezed,Object? profit = freezed,}) {
  return _then(_SignalDto(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,actualTime: freezed == actualTime ? _self.actualTime : actualTime // ignore: cast_nullable_to_non_nullable
as int?,comment: freezed == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as String?,symbol: freezed == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String?,action: freezed == action ? _self.action : action // ignore: cast_nullable_to_non_nullable
as int?,tradingSystem: freezed == tradingSystem ? _self.tradingSystem : tradingSystem // ignore: cast_nullable_to_non_nullable
as int?,period: freezed == period ? _self.period : period // ignore: cast_nullable_to_non_nullable
as String?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double?,takeProfit: freezed == takeProfit ? _self.takeProfit : takeProfit // ignore: cast_nullable_to_non_nullable
as double?,stopLoss: freezed == stopLoss ? _self.stopLoss : stopLoss // ignore: cast_nullable_to_non_nullable
as double?,volume: freezed == volume ? _self.volume : volume // ignore: cast_nullable_to_non_nullable
as double?,profit: freezed == profit ? _self.profit : profit // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}

// dart format on
