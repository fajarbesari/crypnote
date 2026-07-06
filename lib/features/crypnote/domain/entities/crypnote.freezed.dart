// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'crypnote.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Crypnote {

@UuidValueConverter() UuidValue get id; int get userId; String get body; DateTime? get createdAt; bool get isCompleted; ImportanceLevel get importanceLevel;
/// Create a copy of Crypnote
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CrypnoteCopyWith<Crypnote> get copyWith => _$CrypnoteCopyWithImpl<Crypnote>(this as Crypnote, _$identity);

  /// Serializes this Crypnote to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Crypnote&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.body, body) || other.body == body)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.isCompleted, isCompleted) || other.isCompleted == isCompleted)&&(identical(other.importanceLevel, importanceLevel) || other.importanceLevel == importanceLevel));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,body,createdAt,isCompleted,importanceLevel);

@override
String toString() {
  return 'Crypnote(id: $id, userId: $userId, body: $body, createdAt: $createdAt, isCompleted: $isCompleted, importanceLevel: $importanceLevel)';
}


}

/// @nodoc
abstract mixin class $CrypnoteCopyWith<$Res>  {
  factory $CrypnoteCopyWith(Crypnote value, $Res Function(Crypnote) _then) = _$CrypnoteCopyWithImpl;
@useResult
$Res call({
@UuidValueConverter() UuidValue id, int userId, String body, DateTime? createdAt, bool isCompleted, ImportanceLevel importanceLevel
});




}
/// @nodoc
class _$CrypnoteCopyWithImpl<$Res>
    implements $CrypnoteCopyWith<$Res> {
  _$CrypnoteCopyWithImpl(this._self, this._then);

  final Crypnote _self;
  final $Res Function(Crypnote) _then;

/// Create a copy of Crypnote
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? userId = null,Object? body = null,Object? createdAt = freezed,Object? isCompleted = null,Object? importanceLevel = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as UuidValue,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,isCompleted: null == isCompleted ? _self.isCompleted : isCompleted // ignore: cast_nullable_to_non_nullable
as bool,importanceLevel: null == importanceLevel ? _self.importanceLevel : importanceLevel // ignore: cast_nullable_to_non_nullable
as ImportanceLevel,
  ));
}

}


/// Adds pattern-matching-related methods to [Crypnote].
extension CrypnotePatterns on Crypnote {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Crypnote value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Crypnote() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Crypnote value)  $default,){
final _that = this;
switch (_that) {
case _Crypnote():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Crypnote value)?  $default,){
final _that = this;
switch (_that) {
case _Crypnote() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@UuidValueConverter()  UuidValue id,  int userId,  String body,  DateTime? createdAt,  bool isCompleted,  ImportanceLevel importanceLevel)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Crypnote() when $default != null:
return $default(_that.id,_that.userId,_that.body,_that.createdAt,_that.isCompleted,_that.importanceLevel);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@UuidValueConverter()  UuidValue id,  int userId,  String body,  DateTime? createdAt,  bool isCompleted,  ImportanceLevel importanceLevel)  $default,) {final _that = this;
switch (_that) {
case _Crypnote():
return $default(_that.id,_that.userId,_that.body,_that.createdAt,_that.isCompleted,_that.importanceLevel);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@UuidValueConverter()  UuidValue id,  int userId,  String body,  DateTime? createdAt,  bool isCompleted,  ImportanceLevel importanceLevel)?  $default,) {final _that = this;
switch (_that) {
case _Crypnote() when $default != null:
return $default(_that.id,_that.userId,_that.body,_that.createdAt,_that.isCompleted,_that.importanceLevel);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Crypnote implements Crypnote {
  const _Crypnote({@UuidValueConverter() required this.id, required this.userId, required this.body, this.createdAt, this.isCompleted = false, this.importanceLevel = ImportanceLevel.levelFour});
  factory _Crypnote.fromJson(Map<String, dynamic> json) => _$CrypnoteFromJson(json);

@override@UuidValueConverter() final  UuidValue id;
@override final  int userId;
@override final  String body;
@override final  DateTime? createdAt;
@override@JsonKey() final  bool isCompleted;
@override@JsonKey() final  ImportanceLevel importanceLevel;

/// Create a copy of Crypnote
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CrypnoteCopyWith<_Crypnote> get copyWith => __$CrypnoteCopyWithImpl<_Crypnote>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CrypnoteToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Crypnote&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.body, body) || other.body == body)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.isCompleted, isCompleted) || other.isCompleted == isCompleted)&&(identical(other.importanceLevel, importanceLevel) || other.importanceLevel == importanceLevel));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,body,createdAt,isCompleted,importanceLevel);

@override
String toString() {
  return 'Crypnote(id: $id, userId: $userId, body: $body, createdAt: $createdAt, isCompleted: $isCompleted, importanceLevel: $importanceLevel)';
}


}

/// @nodoc
abstract mixin class _$CrypnoteCopyWith<$Res> implements $CrypnoteCopyWith<$Res> {
  factory _$CrypnoteCopyWith(_Crypnote value, $Res Function(_Crypnote) _then) = __$CrypnoteCopyWithImpl;
@override @useResult
$Res call({
@UuidValueConverter() UuidValue id, int userId, String body, DateTime? createdAt, bool isCompleted, ImportanceLevel importanceLevel
});




}
/// @nodoc
class __$CrypnoteCopyWithImpl<$Res>
    implements _$CrypnoteCopyWith<$Res> {
  __$CrypnoteCopyWithImpl(this._self, this._then);

  final _Crypnote _self;
  final $Res Function(_Crypnote) _then;

/// Create a copy of Crypnote
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userId = null,Object? body = null,Object? createdAt = freezed,Object? isCompleted = null,Object? importanceLevel = null,}) {
  return _then(_Crypnote(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as UuidValue,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,isCompleted: null == isCompleted ? _self.isCompleted : isCompleted // ignore: cast_nullable_to_non_nullable
as bool,importanceLevel: null == importanceLevel ? _self.importanceLevel : importanceLevel // ignore: cast_nullable_to_non_nullable
as ImportanceLevel,
  ));
}


}

// dart format on
