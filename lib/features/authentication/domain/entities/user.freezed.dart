// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$User implements DiagnosticableTreeMixin {

 int? get id; Login get login; String? get firstname; String? get lastname; Pin? get pin;
/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserCopyWith<User> get copyWith => _$UserCopyWithImpl<User>(this as User, _$identity);

  /// Serializes this User to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'User'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('login', login))..add(DiagnosticsProperty('firstname', firstname))..add(DiagnosticsProperty('lastname', lastname))..add(DiagnosticsProperty('pin', pin));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is User&&(identical(other.id, id) || other.id == id)&&(identical(other.login, login) || other.login == login)&&(identical(other.firstname, firstname) || other.firstname == firstname)&&(identical(other.lastname, lastname) || other.lastname == lastname)&&(identical(other.pin, pin) || other.pin == pin));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,login,firstname,lastname,pin);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'User(id: $id, login: $login, firstname: $firstname, lastname: $lastname, pin: $pin)';
}


}

/// @nodoc
abstract mixin class $UserCopyWith<$Res>  {
  factory $UserCopyWith(User value, $Res Function(User) _then) = _$UserCopyWithImpl;
@useResult
$Res call({
 int? id, Login login, String? firstname, String? lastname, Pin? pin
});


$LoginCopyWith<$Res> get login;$PinCopyWith<$Res>? get pin;

}
/// @nodoc
class _$UserCopyWithImpl<$Res>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._self, this._then);

  final User _self;
  final $Res Function(User) _then;

/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? login = null,Object? firstname = freezed,Object? lastname = freezed,Object? pin = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,login: null == login ? _self.login : login // ignore: cast_nullable_to_non_nullable
as Login,firstname: freezed == firstname ? _self.firstname : firstname // ignore: cast_nullable_to_non_nullable
as String?,lastname: freezed == lastname ? _self.lastname : lastname // ignore: cast_nullable_to_non_nullable
as String?,pin: freezed == pin ? _self.pin : pin // ignore: cast_nullable_to_non_nullable
as Pin?,
  ));
}
/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LoginCopyWith<$Res> get login {
  
  return $LoginCopyWith<$Res>(_self.login, (value) {
    return _then(_self.copyWith(login: value));
  });
}/// Create a copy of User
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


/// Adds pattern-matching-related methods to [User].
extension UserPatterns on User {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _User value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _User() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _User value)  $default,){
final _that = this;
switch (_that) {
case _User():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _User value)?  $default,){
final _that = this;
switch (_that) {
case _User() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  Login login,  String? firstname,  String? lastname,  Pin? pin)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _User() when $default != null:
return $default(_that.id,_that.login,_that.firstname,_that.lastname,_that.pin);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  Login login,  String? firstname,  String? lastname,  Pin? pin)  $default,) {final _that = this;
switch (_that) {
case _User():
return $default(_that.id,_that.login,_that.firstname,_that.lastname,_that.pin);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  Login login,  String? firstname,  String? lastname,  Pin? pin)?  $default,) {final _that = this;
switch (_that) {
case _User() when $default != null:
return $default(_that.id,_that.login,_that.firstname,_that.lastname,_that.pin);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _User with DiagnosticableTreeMixin implements User {
  const _User({this.id, required this.login, this.firstname, this.lastname, this.pin});
  factory _User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

@override final  int? id;
@override final  Login login;
@override final  String? firstname;
@override final  String? lastname;
@override final  Pin? pin;

/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserCopyWith<_User> get copyWith => __$UserCopyWithImpl<_User>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'User'))
    ..add(DiagnosticsProperty('id', id))..add(DiagnosticsProperty('login', login))..add(DiagnosticsProperty('firstname', firstname))..add(DiagnosticsProperty('lastname', lastname))..add(DiagnosticsProperty('pin', pin));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _User&&(identical(other.id, id) || other.id == id)&&(identical(other.login, login) || other.login == login)&&(identical(other.firstname, firstname) || other.firstname == firstname)&&(identical(other.lastname, lastname) || other.lastname == lastname)&&(identical(other.pin, pin) || other.pin == pin));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,login,firstname,lastname,pin);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'User(id: $id, login: $login, firstname: $firstname, lastname: $lastname, pin: $pin)';
}


}

/// @nodoc
abstract mixin class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) _then) = __$UserCopyWithImpl;
@override @useResult
$Res call({
 int? id, Login login, String? firstname, String? lastname, Pin? pin
});


@override $LoginCopyWith<$Res> get login;@override $PinCopyWith<$Res>? get pin;

}
/// @nodoc
class __$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(this._self, this._then);

  final _User _self;
  final $Res Function(_User) _then;

/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? login = null,Object? firstname = freezed,Object? lastname = freezed,Object? pin = freezed,}) {
  return _then(_User(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,login: null == login ? _self.login : login // ignore: cast_nullable_to_non_nullable
as Login,firstname: freezed == firstname ? _self.firstname : firstname // ignore: cast_nullable_to_non_nullable
as String?,lastname: freezed == lastname ? _self.lastname : lastname // ignore: cast_nullable_to_non_nullable
as String?,pin: freezed == pin ? _self.pin : pin // ignore: cast_nullable_to_non_nullable
as Pin?,
  ));
}

/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LoginCopyWith<$Res> get login {
  
  return $LoginCopyWith<$Res>(_self.login, (value) {
    return _then(_self.copyWith(login: value));
  });
}/// Create a copy of User
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
