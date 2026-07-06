// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'encryptbox_collection_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$EncryptBoxCollectionState {

 List<EncryptBox>? get encryptBoxCollection; EncryptBox? get encryptBox; bool? get isPinValid; bool? get isLoading; String? get error;
/// Create a copy of EncryptBoxCollectionState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EncryptBoxCollectionStateCopyWith<EncryptBoxCollectionState> get copyWith => _$EncryptBoxCollectionStateCopyWithImpl<EncryptBoxCollectionState>(this as EncryptBoxCollectionState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EncryptBoxCollectionState&&const DeepCollectionEquality().equals(other.encryptBoxCollection, encryptBoxCollection)&&(identical(other.encryptBox, encryptBox) || other.encryptBox == encryptBox)&&(identical(other.isPinValid, isPinValid) || other.isPinValid == isPinValid)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(encryptBoxCollection),encryptBox,isPinValid,isLoading,error);

@override
String toString() {
  return 'EncryptBoxCollectionState(encryptBoxCollection: $encryptBoxCollection, encryptBox: $encryptBox, isPinValid: $isPinValid, isLoading: $isLoading, error: $error)';
}


}

/// @nodoc
abstract mixin class $EncryptBoxCollectionStateCopyWith<$Res>  {
  factory $EncryptBoxCollectionStateCopyWith(EncryptBoxCollectionState value, $Res Function(EncryptBoxCollectionState) _then) = _$EncryptBoxCollectionStateCopyWithImpl;
@useResult
$Res call({
 List<EncryptBox>? encryptBoxCollection, EncryptBox? encryptBox, bool? isPinValid, bool? isLoading, String? error
});


$EncryptBoxCopyWith<$Res>? get encryptBox;

}
/// @nodoc
class _$EncryptBoxCollectionStateCopyWithImpl<$Res>
    implements $EncryptBoxCollectionStateCopyWith<$Res> {
  _$EncryptBoxCollectionStateCopyWithImpl(this._self, this._then);

  final EncryptBoxCollectionState _self;
  final $Res Function(EncryptBoxCollectionState) _then;

/// Create a copy of EncryptBoxCollectionState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? encryptBoxCollection = freezed,Object? encryptBox = freezed,Object? isPinValid = freezed,Object? isLoading = freezed,Object? error = freezed,}) {
  return _then(_self.copyWith(
encryptBoxCollection: freezed == encryptBoxCollection ? _self.encryptBoxCollection : encryptBoxCollection // ignore: cast_nullable_to_non_nullable
as List<EncryptBox>?,encryptBox: freezed == encryptBox ? _self.encryptBox : encryptBox // ignore: cast_nullable_to_non_nullable
as EncryptBox?,isPinValid: freezed == isPinValid ? _self.isPinValid : isPinValid // ignore: cast_nullable_to_non_nullable
as bool?,isLoading: freezed == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool?,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of EncryptBoxCollectionState
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


/// Adds pattern-matching-related methods to [EncryptBoxCollectionState].
extension EncryptBoxCollectionStatePatterns on EncryptBoxCollectionState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EncryptBoxCollectionState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EncryptBoxCollectionState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EncryptBoxCollectionState value)  $default,){
final _that = this;
switch (_that) {
case _EncryptBoxCollectionState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EncryptBoxCollectionState value)?  $default,){
final _that = this;
switch (_that) {
case _EncryptBoxCollectionState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<EncryptBox>? encryptBoxCollection,  EncryptBox? encryptBox,  bool? isPinValid,  bool? isLoading,  String? error)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EncryptBoxCollectionState() when $default != null:
return $default(_that.encryptBoxCollection,_that.encryptBox,_that.isPinValid,_that.isLoading,_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<EncryptBox>? encryptBoxCollection,  EncryptBox? encryptBox,  bool? isPinValid,  bool? isLoading,  String? error)  $default,) {final _that = this;
switch (_that) {
case _EncryptBoxCollectionState():
return $default(_that.encryptBoxCollection,_that.encryptBox,_that.isPinValid,_that.isLoading,_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<EncryptBox>? encryptBoxCollection,  EncryptBox? encryptBox,  bool? isPinValid,  bool? isLoading,  String? error)?  $default,) {final _that = this;
switch (_that) {
case _EncryptBoxCollectionState() when $default != null:
return $default(_that.encryptBoxCollection,_that.encryptBox,_that.isPinValid,_that.isLoading,_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _EncryptBoxCollectionState implements EncryptBoxCollectionState {
  const _EncryptBoxCollectionState({final  List<EncryptBox>? encryptBoxCollection, this.encryptBox, this.isPinValid, this.isLoading, this.error}): _encryptBoxCollection = encryptBoxCollection;
  

 final  List<EncryptBox>? _encryptBoxCollection;
@override List<EncryptBox>? get encryptBoxCollection {
  final value = _encryptBoxCollection;
  if (value == null) return null;
  if (_encryptBoxCollection is EqualUnmodifiableListView) return _encryptBoxCollection;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  EncryptBox? encryptBox;
@override final  bool? isPinValid;
@override final  bool? isLoading;
@override final  String? error;

/// Create a copy of EncryptBoxCollectionState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EncryptBoxCollectionStateCopyWith<_EncryptBoxCollectionState> get copyWith => __$EncryptBoxCollectionStateCopyWithImpl<_EncryptBoxCollectionState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EncryptBoxCollectionState&&const DeepCollectionEquality().equals(other._encryptBoxCollection, _encryptBoxCollection)&&(identical(other.encryptBox, encryptBox) || other.encryptBox == encryptBox)&&(identical(other.isPinValid, isPinValid) || other.isPinValid == isPinValid)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_encryptBoxCollection),encryptBox,isPinValid,isLoading,error);

@override
String toString() {
  return 'EncryptBoxCollectionState(encryptBoxCollection: $encryptBoxCollection, encryptBox: $encryptBox, isPinValid: $isPinValid, isLoading: $isLoading, error: $error)';
}


}

/// @nodoc
abstract mixin class _$EncryptBoxCollectionStateCopyWith<$Res> implements $EncryptBoxCollectionStateCopyWith<$Res> {
  factory _$EncryptBoxCollectionStateCopyWith(_EncryptBoxCollectionState value, $Res Function(_EncryptBoxCollectionState) _then) = __$EncryptBoxCollectionStateCopyWithImpl;
@override @useResult
$Res call({
 List<EncryptBox>? encryptBoxCollection, EncryptBox? encryptBox, bool? isPinValid, bool? isLoading, String? error
});


@override $EncryptBoxCopyWith<$Res>? get encryptBox;

}
/// @nodoc
class __$EncryptBoxCollectionStateCopyWithImpl<$Res>
    implements _$EncryptBoxCollectionStateCopyWith<$Res> {
  __$EncryptBoxCollectionStateCopyWithImpl(this._self, this._then);

  final _EncryptBoxCollectionState _self;
  final $Res Function(_EncryptBoxCollectionState) _then;

/// Create a copy of EncryptBoxCollectionState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? encryptBoxCollection = freezed,Object? encryptBox = freezed,Object? isPinValid = freezed,Object? isLoading = freezed,Object? error = freezed,}) {
  return _then(_EncryptBoxCollectionState(
encryptBoxCollection: freezed == encryptBoxCollection ? _self._encryptBoxCollection : encryptBoxCollection // ignore: cast_nullable_to_non_nullable
as List<EncryptBox>?,encryptBox: freezed == encryptBox ? _self.encryptBox : encryptBox // ignore: cast_nullable_to_non_nullable
as EncryptBox?,isPinValid: freezed == isPinValid ? _self.isPinValid : isPinValid // ignore: cast_nullable_to_non_nullable
as bool?,isLoading: freezed == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool?,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of EncryptBoxCollectionState
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
