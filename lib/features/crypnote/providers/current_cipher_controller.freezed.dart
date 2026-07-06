// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'current_cipher_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CipherState {

 Cipher? get cipher; SecretKey? get secretKey; bool? get isLoading; String? get error;
/// Create a copy of CipherState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CipherStateCopyWith<CipherState> get copyWith => _$CipherStateCopyWithImpl<CipherState>(this as CipherState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CipherState&&(identical(other.cipher, cipher) || other.cipher == cipher)&&(identical(other.secretKey, secretKey) || other.secretKey == secretKey)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,cipher,secretKey,isLoading,error);

@override
String toString() {
  return 'CipherState(cipher: $cipher, secretKey: $secretKey, isLoading: $isLoading, error: $error)';
}


}

/// @nodoc
abstract mixin class $CipherStateCopyWith<$Res>  {
  factory $CipherStateCopyWith(CipherState value, $Res Function(CipherState) _then) = _$CipherStateCopyWithImpl;
@useResult
$Res call({
 Cipher? cipher, SecretKey? secretKey, bool? isLoading, String? error
});




}
/// @nodoc
class _$CipherStateCopyWithImpl<$Res>
    implements $CipherStateCopyWith<$Res> {
  _$CipherStateCopyWithImpl(this._self, this._then);

  final CipherState _self;
  final $Res Function(CipherState) _then;

/// Create a copy of CipherState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? cipher = freezed,Object? secretKey = freezed,Object? isLoading = freezed,Object? error = freezed,}) {
  return _then(_self.copyWith(
cipher: freezed == cipher ? _self.cipher : cipher // ignore: cast_nullable_to_non_nullable
as Cipher?,secretKey: freezed == secretKey ? _self.secretKey : secretKey // ignore: cast_nullable_to_non_nullable
as SecretKey?,isLoading: freezed == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool?,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CipherState].
extension CipherStatePatterns on CipherState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CipherState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CipherState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CipherState value)  $default,){
final _that = this;
switch (_that) {
case _CipherState():
return $default(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CipherState value)?  $default,){
final _that = this;
switch (_that) {
case _CipherState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Cipher? cipher,  SecretKey? secretKey,  bool? isLoading,  String? error)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CipherState() when $default != null:
return $default(_that.cipher,_that.secretKey,_that.isLoading,_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Cipher? cipher,  SecretKey? secretKey,  bool? isLoading,  String? error)  $default,) {final _that = this;
switch (_that) {
case _CipherState():
return $default(_that.cipher,_that.secretKey,_that.isLoading,_that.error);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Cipher? cipher,  SecretKey? secretKey,  bool? isLoading,  String? error)?  $default,) {final _that = this;
switch (_that) {
case _CipherState() when $default != null:
return $default(_that.cipher,_that.secretKey,_that.isLoading,_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _CipherState implements CipherState {
  const _CipherState({this.cipher, this.secretKey, this.isLoading, this.error});
  

@override final  Cipher? cipher;
@override final  SecretKey? secretKey;
@override final  bool? isLoading;
@override final  String? error;

/// Create a copy of CipherState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CipherStateCopyWith<_CipherState> get copyWith => __$CipherStateCopyWithImpl<_CipherState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CipherState&&(identical(other.cipher, cipher) || other.cipher == cipher)&&(identical(other.secretKey, secretKey) || other.secretKey == secretKey)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,cipher,secretKey,isLoading,error);

@override
String toString() {
  return 'CipherState(cipher: $cipher, secretKey: $secretKey, isLoading: $isLoading, error: $error)';
}


}

/// @nodoc
abstract mixin class _$CipherStateCopyWith<$Res> implements $CipherStateCopyWith<$Res> {
  factory _$CipherStateCopyWith(_CipherState value, $Res Function(_CipherState) _then) = __$CipherStateCopyWithImpl;
@override @useResult
$Res call({
 Cipher? cipher, SecretKey? secretKey, bool? isLoading, String? error
});




}
/// @nodoc
class __$CipherStateCopyWithImpl<$Res>
    implements _$CipherStateCopyWith<$Res> {
  __$CipherStateCopyWithImpl(this._self, this._then);

  final _CipherState _self;
  final $Res Function(_CipherState) _then;

/// Create a copy of CipherState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? cipher = freezed,Object? secretKey = freezed,Object? isLoading = freezed,Object? error = freezed,}) {
  return _then(_CipherState(
cipher: freezed == cipher ? _self.cipher : cipher // ignore: cast_nullable_to_non_nullable
as Cipher?,secretKey: freezed == secretKey ? _self.secretKey : secretKey // ignore: cast_nullable_to_non_nullable
as SecretKey?,isLoading: freezed == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool?,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
