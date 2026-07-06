// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'decryption_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DecryptionState {

 EncryptBox? get encryptBox; Crypnote? get crypnote; Pin? get pin; bool? get isPinValid; bool? get isLoading; String? get error;
/// Create a copy of DecryptionState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DecryptionStateCopyWith<DecryptionState> get copyWith => _$DecryptionStateCopyWithImpl<DecryptionState>(this as DecryptionState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DecryptionState&&(identical(other.encryptBox, encryptBox) || other.encryptBox == encryptBox)&&(identical(other.crypnote, crypnote) || other.crypnote == crypnote)&&(identical(other.pin, pin) || other.pin == pin)&&(identical(other.isPinValid, isPinValid) || other.isPinValid == isPinValid)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,encryptBox,crypnote,pin,isPinValid,isLoading,error);

@override
String toString() {
  return 'DecryptionState(encryptBox: $encryptBox, crypnote: $crypnote, pin: $pin, isPinValid: $isPinValid, isLoading: $isLoading, error: $error)';
}


}

/// @nodoc
abstract mixin class $DecryptionStateCopyWith<$Res>  {
  factory $DecryptionStateCopyWith(DecryptionState value, $Res Function(DecryptionState) _then) = _$DecryptionStateCopyWithImpl;
@useResult
$Res call({
 EncryptBox? encryptBox, Crypnote? crypnote, Pin? pin, bool? isPinValid, bool? isLoading, String? error
});


$EncryptBoxCopyWith<$Res>? get encryptBox;$CrypnoteCopyWith<$Res>? get crypnote;$PinCopyWith<$Res>? get pin;

}
/// @nodoc
class _$DecryptionStateCopyWithImpl<$Res>
    implements $DecryptionStateCopyWith<$Res> {
  _$DecryptionStateCopyWithImpl(this._self, this._then);

  final DecryptionState _self;
  final $Res Function(DecryptionState) _then;

/// Create a copy of DecryptionState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? encryptBox = freezed,Object? crypnote = freezed,Object? pin = freezed,Object? isPinValid = freezed,Object? isLoading = freezed,Object? error = freezed,}) {
  return _then(_self.copyWith(
encryptBox: freezed == encryptBox ? _self.encryptBox : encryptBox // ignore: cast_nullable_to_non_nullable
as EncryptBox?,crypnote: freezed == crypnote ? _self.crypnote : crypnote // ignore: cast_nullable_to_non_nullable
as Crypnote?,pin: freezed == pin ? _self.pin : pin // ignore: cast_nullable_to_non_nullable
as Pin?,isPinValid: freezed == isPinValid ? _self.isPinValid : isPinValid // ignore: cast_nullable_to_non_nullable
as bool?,isLoading: freezed == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool?,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of DecryptionState
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
}/// Create a copy of DecryptionState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CrypnoteCopyWith<$Res>? get crypnote {
    if (_self.crypnote == null) {
    return null;
  }

  return $CrypnoteCopyWith<$Res>(_self.crypnote!, (value) {
    return _then(_self.copyWith(crypnote: value));
  });
}/// Create a copy of DecryptionState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PinCopyWith<$Res>? get pin {
    if (_self.pin == null) {
    return null;
  }

  return $PinCopyWith<$Res>(_self.pin!, (value) {
    return _then(_self.copyWith(pin: value));
  });
}
}


/// Adds pattern-matching-related methods to [DecryptionState].
extension DecryptionStatePatterns on DecryptionState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DecryptionState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DecryptionState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DecryptionState value)  $default,){
final _that = this;
switch (_that) {
case _DecryptionState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DecryptionState value)?  $default,){
final _that = this;
switch (_that) {
case _DecryptionState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( EncryptBox? encryptBox,  Crypnote? crypnote,  Pin? pin,  bool? isPinValid,  bool? isLoading,  String? error)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DecryptionState() when $default != null:
return $default(_that.encryptBox,_that.crypnote,_that.pin,_that.isPinValid,_that.isLoading,_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( EncryptBox? encryptBox,  Crypnote? crypnote,  Pin? pin,  bool? isPinValid,  bool? isLoading,  String? error)  $default,) {final _that = this;
switch (_that) {
case _DecryptionState():
return $default(_that.encryptBox,_that.crypnote,_that.pin,_that.isPinValid,_that.isLoading,_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( EncryptBox? encryptBox,  Crypnote? crypnote,  Pin? pin,  bool? isPinValid,  bool? isLoading,  String? error)?  $default,) {final _that = this;
switch (_that) {
case _DecryptionState() when $default != null:
return $default(_that.encryptBox,_that.crypnote,_that.pin,_that.isPinValid,_that.isLoading,_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _DecryptionState implements DecryptionState {
  const _DecryptionState({this.encryptBox, this.crypnote, this.pin, this.isPinValid, this.isLoading, this.error});
  

@override final  EncryptBox? encryptBox;
@override final  Crypnote? crypnote;
@override final  Pin? pin;
@override final  bool? isPinValid;
@override final  bool? isLoading;
@override final  String? error;

/// Create a copy of DecryptionState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DecryptionStateCopyWith<_DecryptionState> get copyWith => __$DecryptionStateCopyWithImpl<_DecryptionState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DecryptionState&&(identical(other.encryptBox, encryptBox) || other.encryptBox == encryptBox)&&(identical(other.crypnote, crypnote) || other.crypnote == crypnote)&&(identical(other.pin, pin) || other.pin == pin)&&(identical(other.isPinValid, isPinValid) || other.isPinValid == isPinValid)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,encryptBox,crypnote,pin,isPinValid,isLoading,error);

@override
String toString() {
  return 'DecryptionState(encryptBox: $encryptBox, crypnote: $crypnote, pin: $pin, isPinValid: $isPinValid, isLoading: $isLoading, error: $error)';
}


}

/// @nodoc
abstract mixin class _$DecryptionStateCopyWith<$Res> implements $DecryptionStateCopyWith<$Res> {
  factory _$DecryptionStateCopyWith(_DecryptionState value, $Res Function(_DecryptionState) _then) = __$DecryptionStateCopyWithImpl;
@override @useResult
$Res call({
 EncryptBox? encryptBox, Crypnote? crypnote, Pin? pin, bool? isPinValid, bool? isLoading, String? error
});


@override $EncryptBoxCopyWith<$Res>? get encryptBox;@override $CrypnoteCopyWith<$Res>? get crypnote;@override $PinCopyWith<$Res>? get pin;

}
/// @nodoc
class __$DecryptionStateCopyWithImpl<$Res>
    implements _$DecryptionStateCopyWith<$Res> {
  __$DecryptionStateCopyWithImpl(this._self, this._then);

  final _DecryptionState _self;
  final $Res Function(_DecryptionState) _then;

/// Create a copy of DecryptionState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? encryptBox = freezed,Object? crypnote = freezed,Object? pin = freezed,Object? isPinValid = freezed,Object? isLoading = freezed,Object? error = freezed,}) {
  return _then(_DecryptionState(
encryptBox: freezed == encryptBox ? _self.encryptBox : encryptBox // ignore: cast_nullable_to_non_nullable
as EncryptBox?,crypnote: freezed == crypnote ? _self.crypnote : crypnote // ignore: cast_nullable_to_non_nullable
as Crypnote?,pin: freezed == pin ? _self.pin : pin // ignore: cast_nullable_to_non_nullable
as Pin?,isPinValid: freezed == isPinValid ? _self.isPinValid : isPinValid // ignore: cast_nullable_to_non_nullable
as bool?,isLoading: freezed == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool?,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of DecryptionState
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
}/// Create a copy of DecryptionState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CrypnoteCopyWith<$Res>? get crypnote {
    if (_self.crypnote == null) {
    return null;
  }

  return $CrypnoteCopyWith<$Res>(_self.crypnote!, (value) {
    return _then(_self.copyWith(crypnote: value));
  });
}/// Create a copy of DecryptionState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PinCopyWith<$Res>? get pin {
    if (_self.pin == null) {
    return null;
  }

  return $PinCopyWith<$Res>(_self.pin!, (value) {
    return _then(_self.copyWith(pin: value));
  });
}
}

// dart format on
