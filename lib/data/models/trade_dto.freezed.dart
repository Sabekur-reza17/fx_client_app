// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trade_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TradeDto {

 int? get ticket; String? get symbol; int? get cmd; double? get volume; int? get openTime; double? get openPrice; int? get closeTime; double? get closePrice; double? get profit; double? get swaps; double? get commission;
/// Create a copy of TradeDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TradeDtoCopyWith<TradeDto> get copyWith => _$TradeDtoCopyWithImpl<TradeDto>(this as TradeDto, _$identity);

  /// Serializes this TradeDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TradeDto&&(identical(other.ticket, ticket) || other.ticket == ticket)&&(identical(other.symbol, symbol) || other.symbol == symbol)&&(identical(other.cmd, cmd) || other.cmd == cmd)&&(identical(other.volume, volume) || other.volume == volume)&&(identical(other.openTime, openTime) || other.openTime == openTime)&&(identical(other.openPrice, openPrice) || other.openPrice == openPrice)&&(identical(other.closeTime, closeTime) || other.closeTime == closeTime)&&(identical(other.closePrice, closePrice) || other.closePrice == closePrice)&&(identical(other.profit, profit) || other.profit == profit)&&(identical(other.swaps, swaps) || other.swaps == swaps)&&(identical(other.commission, commission) || other.commission == commission));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,ticket,symbol,cmd,volume,openTime,openPrice,closeTime,closePrice,profit,swaps,commission);

@override
String toString() {
  return 'TradeDto(ticket: $ticket, symbol: $symbol, cmd: $cmd, volume: $volume, openTime: $openTime, openPrice: $openPrice, closeTime: $closeTime, closePrice: $closePrice, profit: $profit, swaps: $swaps, commission: $commission)';
}


}

/// @nodoc
abstract mixin class $TradeDtoCopyWith<$Res>  {
  factory $TradeDtoCopyWith(TradeDto value, $Res Function(TradeDto) _then) = _$TradeDtoCopyWithImpl;
@useResult
$Res call({
 int? ticket, String? symbol, int? cmd, double? volume, int? openTime, double? openPrice, int? closeTime, double? closePrice, double? profit, double? swaps, double? commission
});




}
/// @nodoc
class _$TradeDtoCopyWithImpl<$Res>
    implements $TradeDtoCopyWith<$Res> {
  _$TradeDtoCopyWithImpl(this._self, this._then);

  final TradeDto _self;
  final $Res Function(TradeDto) _then;

/// Create a copy of TradeDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? ticket = freezed,Object? symbol = freezed,Object? cmd = freezed,Object? volume = freezed,Object? openTime = freezed,Object? openPrice = freezed,Object? closeTime = freezed,Object? closePrice = freezed,Object? profit = freezed,Object? swaps = freezed,Object? commission = freezed,}) {
  return _then(_self.copyWith(
ticket: freezed == ticket ? _self.ticket : ticket // ignore: cast_nullable_to_non_nullable
as int?,symbol: freezed == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String?,cmd: freezed == cmd ? _self.cmd : cmd // ignore: cast_nullable_to_non_nullable
as int?,volume: freezed == volume ? _self.volume : volume // ignore: cast_nullable_to_non_nullable
as double?,openTime: freezed == openTime ? _self.openTime : openTime // ignore: cast_nullable_to_non_nullable
as int?,openPrice: freezed == openPrice ? _self.openPrice : openPrice // ignore: cast_nullable_to_non_nullable
as double?,closeTime: freezed == closeTime ? _self.closeTime : closeTime // ignore: cast_nullable_to_non_nullable
as int?,closePrice: freezed == closePrice ? _self.closePrice : closePrice // ignore: cast_nullable_to_non_nullable
as double?,profit: freezed == profit ? _self.profit : profit // ignore: cast_nullable_to_non_nullable
as double?,swaps: freezed == swaps ? _self.swaps : swaps // ignore: cast_nullable_to_non_nullable
as double?,commission: freezed == commission ? _self.commission : commission // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// Adds pattern-matching-related methods to [TradeDto].
extension TradeDtoPatterns on TradeDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TradeDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TradeDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TradeDto value)  $default,){
final _that = this;
switch (_that) {
case _TradeDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TradeDto value)?  $default,){
final _that = this;
switch (_that) {
case _TradeDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? ticket,  String? symbol,  int? cmd,  double? volume,  int? openTime,  double? openPrice,  int? closeTime,  double? closePrice,  double? profit,  double? swaps,  double? commission)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TradeDto() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? ticket,  String? symbol,  int? cmd,  double? volume,  int? openTime,  double? openPrice,  int? closeTime,  double? closePrice,  double? profit,  double? swaps,  double? commission)  $default,) {final _that = this;
switch (_that) {
case _TradeDto():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? ticket,  String? symbol,  int? cmd,  double? volume,  int? openTime,  double? openPrice,  int? closeTime,  double? closePrice,  double? profit,  double? swaps,  double? commission)?  $default,) {final _that = this;
switch (_that) {
case _TradeDto() when $default != null:
return $default(_that.ticket,_that.symbol,_that.cmd,_that.volume,_that.openTime,_that.openPrice,_that.closeTime,_that.closePrice,_that.profit,_that.swaps,_that.commission);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TradeDto extends TradeDto {
  const _TradeDto({this.ticket, this.symbol, this.cmd, this.volume, this.openTime, this.openPrice, this.closeTime, this.closePrice, this.profit, this.swaps, this.commission}): super._();
  factory _TradeDto.fromJson(Map<String, dynamic> json) => _$TradeDtoFromJson(json);

@override final  int? ticket;
@override final  String? symbol;
@override final  int? cmd;
@override final  double? volume;
@override final  int? openTime;
@override final  double? openPrice;
@override final  int? closeTime;
@override final  double? closePrice;
@override final  double? profit;
@override final  double? swaps;
@override final  double? commission;

/// Create a copy of TradeDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TradeDtoCopyWith<_TradeDto> get copyWith => __$TradeDtoCopyWithImpl<_TradeDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TradeDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TradeDto&&(identical(other.ticket, ticket) || other.ticket == ticket)&&(identical(other.symbol, symbol) || other.symbol == symbol)&&(identical(other.cmd, cmd) || other.cmd == cmd)&&(identical(other.volume, volume) || other.volume == volume)&&(identical(other.openTime, openTime) || other.openTime == openTime)&&(identical(other.openPrice, openPrice) || other.openPrice == openPrice)&&(identical(other.closeTime, closeTime) || other.closeTime == closeTime)&&(identical(other.closePrice, closePrice) || other.closePrice == closePrice)&&(identical(other.profit, profit) || other.profit == profit)&&(identical(other.swaps, swaps) || other.swaps == swaps)&&(identical(other.commission, commission) || other.commission == commission));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,ticket,symbol,cmd,volume,openTime,openPrice,closeTime,closePrice,profit,swaps,commission);

@override
String toString() {
  return 'TradeDto(ticket: $ticket, symbol: $symbol, cmd: $cmd, volume: $volume, openTime: $openTime, openPrice: $openPrice, closeTime: $closeTime, closePrice: $closePrice, profit: $profit, swaps: $swaps, commission: $commission)';
}


}

/// @nodoc
abstract mixin class _$TradeDtoCopyWith<$Res> implements $TradeDtoCopyWith<$Res> {
  factory _$TradeDtoCopyWith(_TradeDto value, $Res Function(_TradeDto) _then) = __$TradeDtoCopyWithImpl;
@override @useResult
$Res call({
 int? ticket, String? symbol, int? cmd, double? volume, int? openTime, double? openPrice, int? closeTime, double? closePrice, double? profit, double? swaps, double? commission
});




}
/// @nodoc
class __$TradeDtoCopyWithImpl<$Res>
    implements _$TradeDtoCopyWith<$Res> {
  __$TradeDtoCopyWithImpl(this._self, this._then);

  final _TradeDto _self;
  final $Res Function(_TradeDto) _then;

/// Create a copy of TradeDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? ticket = freezed,Object? symbol = freezed,Object? cmd = freezed,Object? volume = freezed,Object? openTime = freezed,Object? openPrice = freezed,Object? closeTime = freezed,Object? closePrice = freezed,Object? profit = freezed,Object? swaps = freezed,Object? commission = freezed,}) {
  return _then(_TradeDto(
ticket: freezed == ticket ? _self.ticket : ticket // ignore: cast_nullable_to_non_nullable
as int?,symbol: freezed == symbol ? _self.symbol : symbol // ignore: cast_nullable_to_non_nullable
as String?,cmd: freezed == cmd ? _self.cmd : cmd // ignore: cast_nullable_to_non_nullable
as int?,volume: freezed == volume ? _self.volume : volume // ignore: cast_nullable_to_non_nullable
as double?,openTime: freezed == openTime ? _self.openTime : openTime // ignore: cast_nullable_to_non_nullable
as int?,openPrice: freezed == openPrice ? _self.openPrice : openPrice // ignore: cast_nullable_to_non_nullable
as double?,closeTime: freezed == closeTime ? _self.closeTime : closeTime // ignore: cast_nullable_to_non_nullable
as int?,closePrice: freezed == closePrice ? _self.closePrice : closePrice // ignore: cast_nullable_to_non_nullable
as double?,profit: freezed == profit ? _self.profit : profit // ignore: cast_nullable_to_non_nullable
as double?,swaps: freezed == swaps ? _self.swaps : swaps // ignore: cast_nullable_to_non_nullable
as double?,commission: freezed == commission ? _self.commission : commission // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}

// dart format on
