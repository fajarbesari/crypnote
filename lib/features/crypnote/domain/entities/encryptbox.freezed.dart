// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'encryptbox.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EncryptBox {

 int? get id; String get algorithm; int get userId; int get codecrypt; List<int> get cipherText; List<int> get nonce; List<int> get mac; List<int> get secretKey; DateTime? get latestDecryptionAt; DateTime? get scheduleAt; DateTime? get deletedAt;
/// Create a copy of EncryptBox
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EncryptBoxCopyWith<EncryptBox> get copyWith => _$EncryptBoxCopyWithImpl<EncryptBox>(this as EncryptBox, _$identity);

  /// Serializes this EncryptBox to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EncryptBox&&(identical(other.id, id) || other.id == id)&&(identical(other.algorithm, algorithm) || other.algorithm == algorithm)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.codecrypt, codecrypt) || other.codecrypt == codecrypt)&&const DeepCollectionEquality().equals(other.cipherText, cipherText)&&const DeepCollectionEquality().equals(other.nonce, nonce)&&const DeepCollectionEquality().equals(other.mac, mac)&&const DeepCollectionEquality().equals(other.secretKey, secretKey)&&(identical(other.latestDecryptionAt, latestDecryptionAt) || other.latestDecryptionAt == latestDecryptionAt)&&(identical(other.scheduleAt, scheduleAt) || other.scheduleAt == scheduleAt)&&(identical(other.deletedAt, deletedAt) || other.deletedAt == deletedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,algorithm,userId,codecrypt,const DeepCollectionEquality().hash(cipherText),const DeepCollectionEquality().hash(nonce),const DeepCollectionEquality().hash(mac),const DeepCollectionEquality().hash(secretKey),latestDecryptionAt,scheduleAt,deletedAt);

@override
String toString() {
  return 'EncryptBox(id: $id, algorithm: $algorithm, userId: $userId, codecrypt: $codecrypt, cipherText: $cipherText, nonce: $nonce, mac: $mac, secretKey: $secretKey, latestDecryptionAt: $latestDecryptionAt, scheduleAt: $scheduleAt, deletedAt: $deletedAt)';
}


}

/// @nodoc
abstract mixin class $EncryptBoxCopyWith<$Res>  {
  factory $EncryptBoxCopyWith(EncryptBox value, $Res Function(EncryptBox) _then) = _$EncryptBoxCopyWithImpl;
@useResult
$Res call({
 int? id, String algorithm, int userId, int codecrypt, List<int> cipherText, List<int> nonce, List<int> mac, List<int> secretKey, DateTime? latestDecryptionAt, DateTime? scheduleAt, DateTime? deletedAt
});




}
/// @nodoc
class _$EncryptBoxCopyWithImpl<$Res>
    implements $EncryptBoxCopyWith<$Res> {
  _$EncryptBoxCopyWithImpl(this._self, this._then);

  final EncryptBox _self;
  final $Res Function(EncryptBox) _then;

/// Create a copy of EncryptBox
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? algorithm = null,Object? userId = null,Object? codecrypt = null,Object? cipherText = null,Object? nonce = null,Object? mac = null,Object? secretKey = null,Object? latestDecryptionAt = freezed,Object? scheduleAt = freezed,Object? deletedAt = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,algorithm: null == algorithm ? _self.algorithm : algorithm // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,codecrypt: null == codecrypt ? _self.codecrypt : codecrypt // ignore: cast_nullable_to_non_nullable
as int,cipherText: null == cipherText ? _self.cipherText : cipherText // ignore: cast_nullable_to_non_nullable
as List<int>,nonce: null == nonce ? _self.nonce : nonce // ignore: cast_nullable_to_non_nullable
as List<int>,mac: null == mac ? _self.mac : mac // ignore: cast_nullable_to_non_nullable
as List<int>,secretKey: null == secretKey ? _self.secretKey : secretKey // ignore: cast_nullable_to_non_nullable
as List<int>,latestDecryptionAt: freezed == latestDecryptionAt ? _self.latestDecryptionAt : latestDecryptionAt // ignore: cast_nullable_to_non_nullable
as DateTime?,scheduleAt: freezed == scheduleAt ? _self.scheduleAt : scheduleAt // ignore: cast_nullable_to_non_nullable
as DateTime?,deletedAt: freezed == deletedAt ? _self.deletedAt : deletedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [EncryptBox].
extension EncryptBoxPatterns on EncryptBox {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EncryptBox value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EncryptBox() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EncryptBox value)  $default,){
final _that = this;
switch (_that) {
case _EncryptBox():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EncryptBox value)?  $default,){
final _that = this;
switch (_that) {
case _EncryptBox() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String algorithm,  int userId,  int codecrypt,  List<int> cipherText,  List<int> nonce,  List<int> mac,  List<int> secretKey,  DateTime? latestDecryptionAt,  DateTime? scheduleAt,  DateTime? deletedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EncryptBox() when $default != null:
return $default(_that.id,_that.algorithm,_that.userId,_that.codecrypt,_that.cipherText,_that.nonce,_that.mac,_that.secretKey,_that.latestDecryptionAt,_that.scheduleAt,_that.deletedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String algorithm,  int userId,  int codecrypt,  List<int> cipherText,  List<int> nonce,  List<int> mac,  List<int> secretKey,  DateTime? latestDecryptionAt,  DateTime? scheduleAt,  DateTime? deletedAt)  $default,) {final _that = this;
switch (_that) {
case _EncryptBox():
return $default(_that.id,_that.algorithm,_that.userId,_that.codecrypt,_that.cipherText,_that.nonce,_that.mac,_that.secretKey,_that.latestDecryptionAt,_that.scheduleAt,_that.deletedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String algorithm,  int userId,  int codecrypt,  List<int> cipherText,  List<int> nonce,  List<int> mac,  List<int> secretKey,  DateTime? latestDecryptionAt,  DateTime? scheduleAt,  DateTime? deletedAt)?  $default,) {final _that = this;
switch (_that) {
case _EncryptBox() when $default != null:
return $default(_that.id,_that.algorithm,_that.userId,_that.codecrypt,_that.cipherText,_that.nonce,_that.mac,_that.secretKey,_that.latestDecryptionAt,_that.scheduleAt,_that.deletedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EncryptBox implements EncryptBox {
  const _EncryptBox({this.id, required this.algorithm, required this.userId, required this.codecrypt, required final  List<int> cipherText, required final  List<int> nonce, required final  List<int> mac, required final  List<int> secretKey, this.latestDecryptionAt, this.scheduleAt, this.deletedAt}): _cipherText = cipherText,_nonce = nonce,_mac = mac,_secretKey = secretKey;
  factory _EncryptBox.fromJson(Map<String, dynamic> json) => _$EncryptBoxFromJson(json);

@override final  int? id;
@override final  String algorithm;
@override final  int userId;
@override final  int codecrypt;
 final  List<int> _cipherText;
@override List<int> get cipherText {
  if (_cipherText is EqualUnmodifiableListView) return _cipherText;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_cipherText);
}

 final  List<int> _nonce;
@override List<int> get nonce {
  if (_nonce is EqualUnmodifiableListView) return _nonce;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_nonce);
}

 final  List<int> _mac;
@override List<int> get mac {
  if (_mac is EqualUnmodifiableListView) return _mac;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_mac);
}

 final  List<int> _secretKey;
@override List<int> get secretKey {
  if (_secretKey is EqualUnmodifiableListView) return _secretKey;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_secretKey);
}

@override final  DateTime? latestDecryptionAt;
@override final  DateTime? scheduleAt;
@override final  DateTime? deletedAt;

/// Create a copy of EncryptBox
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EncryptBoxCopyWith<_EncryptBox> get copyWith => __$EncryptBoxCopyWithImpl<_EncryptBox>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EncryptBoxToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EncryptBox&&(identical(other.id, id) || other.id == id)&&(identical(other.algorithm, algorithm) || other.algorithm == algorithm)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.codecrypt, codecrypt) || other.codecrypt == codecrypt)&&const DeepCollectionEquality().equals(other._cipherText, _cipherText)&&const DeepCollectionEquality().equals(other._nonce, _nonce)&&const DeepCollectionEquality().equals(other._mac, _mac)&&const DeepCollectionEquality().equals(other._secretKey, _secretKey)&&(identical(other.latestDecryptionAt, latestDecryptionAt) || other.latestDecryptionAt == latestDecryptionAt)&&(identical(other.scheduleAt, scheduleAt) || other.scheduleAt == scheduleAt)&&(identical(other.deletedAt, deletedAt) || other.deletedAt == deletedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,algorithm,userId,codecrypt,const DeepCollectionEquality().hash(_cipherText),const DeepCollectionEquality().hash(_nonce),const DeepCollectionEquality().hash(_mac),const DeepCollectionEquality().hash(_secretKey),latestDecryptionAt,scheduleAt,deletedAt);

@override
String toString() {
  return 'EncryptBox(id: $id, algorithm: $algorithm, userId: $userId, codecrypt: $codecrypt, cipherText: $cipherText, nonce: $nonce, mac: $mac, secretKey: $secretKey, latestDecryptionAt: $latestDecryptionAt, scheduleAt: $scheduleAt, deletedAt: $deletedAt)';
}


}

/// @nodoc
abstract mixin class _$EncryptBoxCopyWith<$Res> implements $EncryptBoxCopyWith<$Res> {
  factory _$EncryptBoxCopyWith(_EncryptBox value, $Res Function(_EncryptBox) _then) = __$EncryptBoxCopyWithImpl;
@override @useResult
$Res call({
 int? id, String algorithm, int userId, int codecrypt, List<int> cipherText, List<int> nonce, List<int> mac, List<int> secretKey, DateTime? latestDecryptionAt, DateTime? scheduleAt, DateTime? deletedAt
});




}
/// @nodoc
class __$EncryptBoxCopyWithImpl<$Res>
    implements _$EncryptBoxCopyWith<$Res> {
  __$EncryptBoxCopyWithImpl(this._self, this._then);

  final _EncryptBox _self;
  final $Res Function(_EncryptBox) _then;

/// Create a copy of EncryptBox
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? algorithm = null,Object? userId = null,Object? codecrypt = null,Object? cipherText = null,Object? nonce = null,Object? mac = null,Object? secretKey = null,Object? latestDecryptionAt = freezed,Object? scheduleAt = freezed,Object? deletedAt = freezed,}) {
  return _then(_EncryptBox(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,algorithm: null == algorithm ? _self.algorithm : algorithm // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,codecrypt: null == codecrypt ? _self.codecrypt : codecrypt // ignore: cast_nullable_to_non_nullable
as int,cipherText: null == cipherText ? _self._cipherText : cipherText // ignore: cast_nullable_to_non_nullable
as List<int>,nonce: null == nonce ? _self._nonce : nonce // ignore: cast_nullable_to_non_nullable
as List<int>,mac: null == mac ? _self._mac : mac // ignore: cast_nullable_to_non_nullable
as List<int>,secretKey: null == secretKey ? _self._secretKey : secretKey // ignore: cast_nullable_to_non_nullable
as List<int>,latestDecryptionAt: freezed == latestDecryptionAt ? _self.latestDecryptionAt : latestDecryptionAt // ignore: cast_nullable_to_non_nullable
as DateTime?,scheduleAt: freezed == scheduleAt ? _self.scheduleAt : scheduleAt // ignore: cast_nullable_to_non_nullable
as DateTime?,deletedAt: freezed == deletedAt ? _self.deletedAt : deletedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
