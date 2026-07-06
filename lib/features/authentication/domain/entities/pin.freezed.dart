// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pin.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Pin {

 int? get id; String get pin;
/// Create a copy of Pin
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PinCopyWith<Pin> get copyWith => _$PinCopyWithImpl<Pin>(this as Pin, _$identity);

  /// Serializes this Pin to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Pin&&(identical(other.id, id) || other.id == id)&&(identical(other.pin, pin) || other.pin == pin));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,pin);

@override
String toString() {
  return 'Pin(id: $id, pin: $pin)';
}


}

/// @nodoc
abstract mixin class $PinCopyWith<$Res>  {
  factory $PinCopyWith(Pin value, $Res Function(Pin) _then) = _$PinCopyWithImpl;
@useResult
$Res call({
 int? id, String pin
});




}
/// @nodoc
class _$PinCopyWithImpl<$Res>
    implements $PinCopyWith<$Res> {
  _$PinCopyWithImpl(this._self, this._then);

  final Pin _self;
  final $Res Function(Pin) _then;

/// Create a copy of Pin
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? pin = null,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,pin: null == pin ? _self.pin : pin // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [Pin].
extension PinPatterns on Pin {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Pin value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Pin() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Pin value)  $default,){
final _that = this;
switch (_that) {
case _Pin():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Pin value)?  $default,){
final _that = this;
switch (_that) {
case _Pin() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String pin)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Pin() when $default != null:
return $default(_that.id,_that.pin);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String pin)  $default,) {final _that = this;
switch (_that) {
case _Pin():
return $default(_that.id,_that.pin);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String pin)?  $default,) {final _that = this;
switch (_that) {
case _Pin() when $default != null:
return $default(_that.id,_that.pin);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Pin implements Pin {
  const _Pin({this.id, required this.pin});
  factory _Pin.fromJson(Map<String, dynamic> json) => _$PinFromJson(json);

@override final  int? id;
@override final  String pin;

/// Create a copy of Pin
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PinCopyWith<_Pin> get copyWith => __$PinCopyWithImpl<_Pin>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PinToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Pin&&(identical(other.id, id) || other.id == id)&&(identical(other.pin, pin) || other.pin == pin));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,pin);

@override
String toString() {
  return 'Pin(id: $id, pin: $pin)';
}


}

/// @nodoc
abstract mixin class _$PinCopyWith<$Res> implements $PinCopyWith<$Res> {
  factory _$PinCopyWith(_Pin value, $Res Function(_Pin) _then) = __$PinCopyWithImpl;
@override @useResult
$Res call({
 int? id, String pin
});




}
/// @nodoc
class __$PinCopyWithImpl<$Res>
    implements _$PinCopyWith<$Res> {
  __$PinCopyWithImpl(this._self, this._then);

  final _Pin _self;
  final $Res Function(_Pin) _then;

/// Create a copy of Pin
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? pin = null,}) {
  return _then(_Pin(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,pin: null == pin ? _self.pin : pin // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
