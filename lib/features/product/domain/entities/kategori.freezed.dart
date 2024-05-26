// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'kategori.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Kategori _$KategoriFromJson(Map<String, dynamic> json) {
  return _Kategori.fromJson(json);
}

/// @nodoc
mixin _$Kategori {
  int get id => throw _privateConstructorUsedError;
  String get nama_kategori => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $KategoriCopyWith<Kategori> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KategoriCopyWith<$Res> {
  factory $KategoriCopyWith(Kategori value, $Res Function(Kategori) then) =
      _$KategoriCopyWithImpl<$Res, Kategori>;
  @useResult
  $Res call(
      {int id, String nama_kategori, DateTime createdAt, DateTime updatedAt});
}

/// @nodoc
class _$KategoriCopyWithImpl<$Res, $Val extends Kategori>
    implements $KategoriCopyWith<$Res> {
  _$KategoriCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? nama_kategori = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      nama_kategori: null == nama_kategori
          ? _value.nama_kategori
          : nama_kategori // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$KategoriImplCopyWith<$Res>
    implements $KategoriCopyWith<$Res> {
  factory _$$KategoriImplCopyWith(
          _$KategoriImpl value, $Res Function(_$KategoriImpl) then) =
      __$$KategoriImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id, String nama_kategori, DateTime createdAt, DateTime updatedAt});
}

/// @nodoc
class __$$KategoriImplCopyWithImpl<$Res>
    extends _$KategoriCopyWithImpl<$Res, _$KategoriImpl>
    implements _$$KategoriImplCopyWith<$Res> {
  __$$KategoriImplCopyWithImpl(
      _$KategoriImpl _value, $Res Function(_$KategoriImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? nama_kategori = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$KategoriImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      nama_kategori: null == nama_kategori
          ? _value.nama_kategori
          : nama_kategori // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$KategoriImpl implements _Kategori {
  const _$KategoriImpl(
      {required this.id,
      required this.nama_kategori,
      required this.createdAt,
      required this.updatedAt});

  factory _$KategoriImpl.fromJson(Map<String, dynamic> json) =>
      _$$KategoriImplFromJson(json);

  @override
  final int id;
  @override
  final String nama_kategori;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'Kategori(id: $id, nama_kategori: $nama_kategori, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KategoriImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.nama_kategori, nama_kategori) ||
                other.nama_kategori == nama_kategori) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, nama_kategori, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$KategoriImplCopyWith<_$KategoriImpl> get copyWith =>
      __$$KategoriImplCopyWithImpl<_$KategoriImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$KategoriImplToJson(
      this,
    );
  }
}

abstract class _Kategori implements Kategori {
  const factory _Kategori(
      {required final int id,
      required final String nama_kategori,
      required final DateTime createdAt,
      required final DateTime updatedAt}) = _$KategoriImpl;

  factory _Kategori.fromJson(Map<String, dynamic> json) =
      _$KategoriImpl.fromJson;

  @override
  int get id;
  @override
  String get nama_kategori;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$KategoriImplCopyWith<_$KategoriImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
