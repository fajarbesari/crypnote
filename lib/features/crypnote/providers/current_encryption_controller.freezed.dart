// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'current_encryption_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$EncryptionState {

 User? get user; EncryptBox? get encryptBox; ImportanceLevel? get importanceLevel; bool? get isLoading; String? get error;
/// Create a copy of EncryptionState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EncryptionStateCopyWith<EncryptionState> get copyWith => _$EncryptionStateCopyWithImpl<EncryptionState>(this as EncryptionState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EncryptionState&&(identical(other.user, user) || other.user == user)&&(identical(other.encryptBox, encryptBox) || other.encryptBox == encryptBox)&&(identical(other.importanceLevel, importanceLevel) || other.importanceLevel == importanceLevel)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,user,encryptBox,importanceLevel,isLoading,error);

@override
String toString() {
  return 'EncryptionState(user: $user, encryptBox: $encryptBox, importanceLevel: $importanceLevel, isLoading: $isLoading, error: $error)';
}


}

/// @nodoc
abstract mixin class $EncryptionStateCopyWith<$Res>  {
  factory $EncryptionStateCopyWith(EncryptionState value, $Res Function(EncryptionState) _then) = _$EncryptionStateCopyWithImpl;
@useResult
$Res call({
 User? user, EncryptBox? encryptBox, ImportanceLevel? importanceLevel, bool? isLoading, String? error
});


$UserCopyWith<$Res>? get user;$EncryptBoxCopyWith<$Res>? get encryptBox;

}
/// @nodoc
class _$EncryptionStateCopyWithImpl<$Res>
    implements $EncryptionStateCopyWith<$Res> {
  _$EncryptionStateCopyWithImpl(this._self, this._then);

  final EncryptionState _self;
  final $Res Function(EncryptionState) _then;

/// Create a copy of EncryptionState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? user = freezed,Object? encryptBox = freezed,Object? importanceLevel = freezed,Object? isLoading = freezed,Object? error = freezed,}) {
  return _then(_self.copyWith(
user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User?,encryptBox: freezed == encryptBox ? _self.encryptBox : encryptBox // ignore: cast_nullable_to_non_nullable
as EncryptBox?,importanceLevel: freezed == importanceLevel ? _self.importanceLevel : importanceLevel // ignore: cast_nullable_to_non_nullable
as ImportanceLevel?,isLoading: freezed == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool?,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of EncryptionState
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
}/// Create a copy of EncryptionState
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


/// Adds pattern-matching-related methods to [EncryptionState].
extension EncryptionStatePatterns on EncryptionState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EncryptionState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EncryptionState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EncryptionState value)  $default,){
final _that = this;
switch (_that) {
case _EncryptionState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EncryptionState value)?  $default,){
final _that = this;
switch (_that) {
case _EncryptionState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( User? user,  EncryptBox? encryptBox,  ImportanceLevel? importanceLevel,  bool? isLoading,  String? error)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EncryptionState() when $default != null:
return $default(_that.user,_that.encryptBox,_that.importanceLevel,_that.isLoading,_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( User? user,  EncryptBox? encryptBox,  ImportanceLevel? importanceLevel,  bool? isLoading,  String? error)  $default,) {final _that = this;
switch (_that) {
case _EncryptionState():
return $default(_that.user,_that.encryptBox,_that.importanceLevel,_that.isLoading,_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( User? user,  EncryptBox? encryptBox,  ImportanceLevel? importanceLevel,  bool? isLoading,  String? error)?  $default,) {final _that = this;
switch (_that) {
case _EncryptionState() when $default != null:
return $default(_that.user,_that.encryptBox,_that.importanceLevel,_that.isLoading,_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _EncryptionState implements EncryptionState {
  const _EncryptionState({this.user, this.encryptBox, this.importanceLevel, this.isLoading, this.error});
  

@override final  User? user;
@override final  EncryptBox? encryptBox;
@override final  ImportanceLevel? importanceLevel;
@override final  bool? isLoading;
@override final  String? error;

/// Create a copy of EncryptionState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EncryptionStateCopyWith<_EncryptionState> get copyWith => __$EncryptionStateCopyWithImpl<_EncryptionState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EncryptionState&&(identical(other.user, user) || other.user == user)&&(identical(other.encryptBox, encryptBox) || other.encryptBox == encryptBox)&&(identical(other.importanceLevel, importanceLevel) || other.importanceLevel == importanceLevel)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,user,encryptBox,importanceLevel,isLoading,error);

@override
String toString() {
  return 'EncryptionState(user: $user, encryptBox: $encryptBox, importanceLevel: $importanceLevel, isLoading: $isLoading, error: $error)';
}


}

/// @nodoc
abstract mixin class _$EncryptionStateCopyWith<$Res> implements $EncryptionStateCopyWith<$Res> {
  factory _$EncryptionStateCopyWith(_EncryptionState value, $Res Function(_EncryptionState) _then) = __$EncryptionStateCopyWithImpl;
@override @useResult
$Res call({
 User? user, EncryptBox? encryptBox, ImportanceLevel? importanceLevel, bool? isLoading, String? error
});


@override $UserCopyWith<$Res>? get user;@override $EncryptBoxCopyWith<$Res>? get encryptBox;

}
/// @nodoc
class __$EncryptionStateCopyWithImpl<$Res>
    implements _$EncryptionStateCopyWith<$Res> {
  __$EncryptionStateCopyWithImpl(this._self, this._then);

  final _EncryptionState _self;
  final $Res Function(_EncryptionState) _then;

/// Create a copy of EncryptionState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? user = freezed,Object? encryptBox = freezed,Object? importanceLevel = freezed,Object? isLoading = freezed,Object? error = freezed,}) {
  return _then(_EncryptionState(
user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User?,encryptBox: freezed == encryptBox ? _self.encryptBox : encryptBox // ignore: cast_nullable_to_non_nullable
as EncryptBox?,importanceLevel: freezed == importanceLevel ? _self.importanceLevel : importanceLevel // ignore: cast_nullable_to_non_nullable
as ImportanceLevel?,isLoading: freezed == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool?,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of EncryptionState
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
}/// Create a copy of EncryptionState
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
