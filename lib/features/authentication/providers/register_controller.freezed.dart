// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RegisterState {

 bool? get isAuthenticated; User? get user; String? get usernameValidation; String? get passwordValidation; bool get isObsecure; bool? get isLoading; String? get error;
/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RegisterStateCopyWith<RegisterState> get copyWith => _$RegisterStateCopyWithImpl<RegisterState>(this as RegisterState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RegisterState&&(identical(other.isAuthenticated, isAuthenticated) || other.isAuthenticated == isAuthenticated)&&(identical(other.user, user) || other.user == user)&&(identical(other.usernameValidation, usernameValidation) || other.usernameValidation == usernameValidation)&&(identical(other.passwordValidation, passwordValidation) || other.passwordValidation == passwordValidation)&&(identical(other.isObsecure, isObsecure) || other.isObsecure == isObsecure)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,isAuthenticated,user,usernameValidation,passwordValidation,isObsecure,isLoading,error);

@override
String toString() {
  return 'RegisterState(isAuthenticated: $isAuthenticated, user: $user, usernameValidation: $usernameValidation, passwordValidation: $passwordValidation, isObsecure: $isObsecure, isLoading: $isLoading, error: $error)';
}


}

/// @nodoc
abstract mixin class $RegisterStateCopyWith<$Res>  {
  factory $RegisterStateCopyWith(RegisterState value, $Res Function(RegisterState) _then) = _$RegisterStateCopyWithImpl;
@useResult
$Res call({
 bool? isAuthenticated, User? user, String? usernameValidation, String? passwordValidation, bool isObsecure, bool? isLoading, String? error
});


$UserCopyWith<$Res>? get user;

}
/// @nodoc
class _$RegisterStateCopyWithImpl<$Res>
    implements $RegisterStateCopyWith<$Res> {
  _$RegisterStateCopyWithImpl(this._self, this._then);

  final RegisterState _self;
  final $Res Function(RegisterState) _then;

/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isAuthenticated = freezed,Object? user = freezed,Object? usernameValidation = freezed,Object? passwordValidation = freezed,Object? isObsecure = null,Object? isLoading = freezed,Object? error = freezed,}) {
  return _then(_self.copyWith(
isAuthenticated: freezed == isAuthenticated ? _self.isAuthenticated : isAuthenticated // ignore: cast_nullable_to_non_nullable
as bool?,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User?,usernameValidation: freezed == usernameValidation ? _self.usernameValidation : usernameValidation // ignore: cast_nullable_to_non_nullable
as String?,passwordValidation: freezed == passwordValidation ? _self.passwordValidation : passwordValidation // ignore: cast_nullable_to_non_nullable
as String?,isObsecure: null == isObsecure ? _self.isObsecure : isObsecure // ignore: cast_nullable_to_non_nullable
as bool,isLoading: freezed == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool?,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $UserCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// Adds pattern-matching-related methods to [RegisterState].
extension RegisterStatePatterns on RegisterState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RegisterState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RegisterState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RegisterState value)  $default,){
final _that = this;
switch (_that) {
case _RegisterState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RegisterState value)?  $default,){
final _that = this;
switch (_that) {
case _RegisterState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool? isAuthenticated,  User? user,  String? usernameValidation,  String? passwordValidation,  bool isObsecure,  bool? isLoading,  String? error)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RegisterState() when $default != null:
return $default(_that.isAuthenticated,_that.user,_that.usernameValidation,_that.passwordValidation,_that.isObsecure,_that.isLoading,_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool? isAuthenticated,  User? user,  String? usernameValidation,  String? passwordValidation,  bool isObsecure,  bool? isLoading,  String? error)  $default,) {final _that = this;
switch (_that) {
case _RegisterState():
return $default(_that.isAuthenticated,_that.user,_that.usernameValidation,_that.passwordValidation,_that.isObsecure,_that.isLoading,_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool? isAuthenticated,  User? user,  String? usernameValidation,  String? passwordValidation,  bool isObsecure,  bool? isLoading,  String? error)?  $default,) {final _that = this;
switch (_that) {
case _RegisterState() when $default != null:
return $default(_that.isAuthenticated,_that.user,_that.usernameValidation,_that.passwordValidation,_that.isObsecure,_that.isLoading,_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _RegisterState implements RegisterState {
  const _RegisterState({this.isAuthenticated, this.user, this.usernameValidation = '', this.passwordValidation = '', this.isObsecure = true, this.isLoading, this.error});
  

@override final  bool? isAuthenticated;
@override final  User? user;
@override@JsonKey() final  String? usernameValidation;
@override@JsonKey() final  String? passwordValidation;
@override@JsonKey() final  bool isObsecure;
@override final  bool? isLoading;
@override final  String? error;

/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RegisterStateCopyWith<_RegisterState> get copyWith => __$RegisterStateCopyWithImpl<_RegisterState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RegisterState&&(identical(other.isAuthenticated, isAuthenticated) || other.isAuthenticated == isAuthenticated)&&(identical(other.user, user) || other.user == user)&&(identical(other.usernameValidation, usernameValidation) || other.usernameValidation == usernameValidation)&&(identical(other.passwordValidation, passwordValidation) || other.passwordValidation == passwordValidation)&&(identical(other.isObsecure, isObsecure) || other.isObsecure == isObsecure)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,isAuthenticated,user,usernameValidation,passwordValidation,isObsecure,isLoading,error);

@override
String toString() {
  return 'RegisterState(isAuthenticated: $isAuthenticated, user: $user, usernameValidation: $usernameValidation, passwordValidation: $passwordValidation, isObsecure: $isObsecure, isLoading: $isLoading, error: $error)';
}


}

/// @nodoc
abstract mixin class _$RegisterStateCopyWith<$Res> implements $RegisterStateCopyWith<$Res> {
  factory _$RegisterStateCopyWith(_RegisterState value, $Res Function(_RegisterState) _then) = __$RegisterStateCopyWithImpl;
@override @useResult
$Res call({
 bool? isAuthenticated, User? user, String? usernameValidation, String? passwordValidation, bool isObsecure, bool? isLoading, String? error
});


@override $UserCopyWith<$Res>? get user;

}
/// @nodoc
class __$RegisterStateCopyWithImpl<$Res>
    implements _$RegisterStateCopyWith<$Res> {
  __$RegisterStateCopyWithImpl(this._self, this._then);

  final _RegisterState _self;
  final $Res Function(_RegisterState) _then;

/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isAuthenticated = freezed,Object? user = freezed,Object? usernameValidation = freezed,Object? passwordValidation = freezed,Object? isObsecure = null,Object? isLoading = freezed,Object? error = freezed,}) {
  return _then(_RegisterState(
isAuthenticated: freezed == isAuthenticated ? _self.isAuthenticated : isAuthenticated // ignore: cast_nullable_to_non_nullable
as bool?,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User?,usernameValidation: freezed == usernameValidation ? _self.usernameValidation : usernameValidation // ignore: cast_nullable_to_non_nullable
as String?,passwordValidation: freezed == passwordValidation ? _self.passwordValidation : passwordValidation // ignore: cast_nullable_to_non_nullable
as String?,isObsecure: null == isObsecure ? _self.isObsecure : isObsecure // ignore: cast_nullable_to_non_nullable
as bool,isLoading: freezed == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool?,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $UserCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}

// dart format on
