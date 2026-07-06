// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'current_nearest_encryptbox_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$NearestEncryptBoxState {

 EncryptBox? get encryptBox; DateTime? get scheduleAt; bool? get isLoading; String? get error;
/// Create a copy of NearestEncryptBoxState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NearestEncryptBoxStateCopyWith<NearestEncryptBoxState> get copyWith => _$NearestEncryptBoxStateCopyWithImpl<NearestEncryptBoxState>(this as NearestEncryptBoxState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NearestEncryptBoxState&&(identical(other.encryptBox, encryptBox) || other.encryptBox == encryptBox)&&(identical(other.scheduleAt, scheduleAt) || other.scheduleAt == scheduleAt)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,encryptBox,scheduleAt,isLoading,error);

@override
String toString() {
  return 'NearestEncryptBoxState(encryptBox: $encryptBox, scheduleAt: $scheduleAt, isLoading: $isLoading, error: $error)';
}


}

/// @nodoc
abstract mixin class $NearestEncryptBoxStateCopyWith<$Res>  {
  factory $NearestEncryptBoxStateCopyWith(NearestEncryptBoxState value, $Res Function(NearestEncryptBoxState) _then) = _$NearestEncryptBoxStateCopyWithImpl;
@useResult
$Res call({
 EncryptBox? encryptBox, DateTime? scheduleAt, bool? isLoading, String? error
});


$EncryptBoxCopyWith<$Res>? get encryptBox;

}
/// @nodoc
class _$NearestEncryptBoxStateCopyWithImpl<$Res>
    implements $NearestEncryptBoxStateCopyWith<$Res> {
  _$NearestEncryptBoxStateCopyWithImpl(this._self, this._then);

  final NearestEncryptBoxState _self;
  final $Res Function(NearestEncryptBoxState) _then;

/// Create a copy of NearestEncryptBoxState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? encryptBox = freezed,Object? scheduleAt = freezed,Object? isLoading = freezed,Object? error = freezed,}) {
  return _then(_self.copyWith(
encryptBox: freezed == encryptBox ? _self.encryptBox : encryptBox // ignore: cast_nullable_to_non_nullable
as EncryptBox?,scheduleAt: freezed == scheduleAt ? _self.scheduleAt : scheduleAt // ignore: cast_nullable_to_non_nullable
as DateTime?,isLoading: freezed == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool?,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of NearestEncryptBoxState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EncryptBoxCopyWith<$Res>? get encryptBox {
    if (_self.encryptBox == null) {
    return null;
  }

  return $EncryptBoxCopyWith<$Res>(_self.encryptBox!, (value) {
    return _then(_self.copyWith(encryptBox: value));
  });
}
}


/// Adds pattern-matching-related methods to [NearestEncryptBoxState].
extension NearestEncryptBoxStatePatterns on NearestEncryptBoxState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NearestEncryptBoxState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NearestEncryptBoxState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NearestEncryptBoxState value)  $default,){
final _that = this;
switch (_that) {
case _NearestEncryptBoxState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NearestEncryptBoxState value)?  $default,){
final _that = this;
switch (_that) {
case _NearestEncryptBoxState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( EncryptBox? encryptBox,  DateTime? scheduleAt,  bool? isLoading,  String? error)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NearestEncryptBoxState() when $default != null:
return $default(_that.encryptBox,_that.scheduleAt,_that.isLoading,_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( EncryptBox? encryptBox,  DateTime? scheduleAt,  bool? isLoading,  String? error)  $default,) {final _that = this;
switch (_that) {
case _NearestEncryptBoxState():
return $default(_that.encryptBox,_that.scheduleAt,_that.isLoading,_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( EncryptBox? encryptBox,  DateTime? scheduleAt,  bool? isLoading,  String? error)?  $default,) {final _that = this;
switch (_that) {
case _NearestEncryptBoxState() when $default != null:
return $default(_that.encryptBox,_that.scheduleAt,_that.isLoading,_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _NearestEncryptBoxState implements NearestEncryptBoxState {
  const _NearestEncryptBoxState({this.encryptBox, this.scheduleAt, this.isLoading, this.error});
  

@override final  EncryptBox? encryptBox;
@override final  DateTime? scheduleAt;
@override final  bool? isLoading;
@override final  String? error;

/// Create a copy of NearestEncryptBoxState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NearestEncryptBoxStateCopyWith<_NearestEncryptBoxState> get copyWith => __$NearestEncryptBoxStateCopyWithImpl<_NearestEncryptBoxState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NearestEncryptBoxState&&(identical(other.encryptBox, encryptBox) || other.encryptBox == encryptBox)&&(identical(other.scheduleAt, scheduleAt) || other.scheduleAt == scheduleAt)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,encryptBox,scheduleAt,isLoading,error);

@override
String toString() {
  return 'NearestEncryptBoxState(encryptBox: $encryptBox, scheduleAt: $scheduleAt, isLoading: $isLoading, error: $error)';
}


}

/// @nodoc
abstract mixin class _$NearestEncryptBoxStateCopyWith<$Res> implements $NearestEncryptBoxStateCopyWith<$Res> {
  factory _$NearestEncryptBoxStateCopyWith(_NearestEncryptBoxState value, $Res Function(_NearestEncryptBoxState) _then) = __$NearestEncryptBoxStateCopyWithImpl;
@override @useResult
$Res call({
 EncryptBox? encryptBox, DateTime? scheduleAt, bool? isLoading, String? error
});


@override $EncryptBoxCopyWith<$Res>? get encryptBox;

}
/// @nodoc
class __$NearestEncryptBoxStateCopyWithImpl<$Res>
    implements _$NearestEncryptBoxStateCopyWith<$Res> {
  __$NearestEncryptBoxStateCopyWithImpl(this._self, this._then);

  final _NearestEncryptBoxState _self;
  final $Res Function(_NearestEncryptBoxState) _then;

/// Create a copy of NearestEncryptBoxState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? encryptBox = freezed,Object? scheduleAt = freezed,Object? isLoading = freezed,Object? error = freezed,}) {
  return _then(_NearestEncryptBoxState(
encryptBox: freezed == encryptBox ? _self.encryptBox : encryptBox // ignore: cast_nullable_to_non_nullable
as EncryptBox?,scheduleAt: freezed == scheduleAt ? _self.scheduleAt : scheduleAt // ignore: cast_nullable_to_non_nullable
as DateTime?,isLoading: freezed == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool?,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of NearestEncryptBoxState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$EncryptBoxCopyWith<$Res>? get encryptBox {
    if (_self.encryptBox == null) {
    return null;
  }

  return $EncryptBoxCopyWith<$Res>(_self.encryptBox!, (value) {
    return _then(_self.copyWith(encryptBox: value));
  });
}
}

// dart format on
