// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Product _$ProductFromJson(Map<String, dynamic> json) {
  return _Product.fromJson(json);
}

/// @nodoc
mixin _$Product {
  String get nama_produk => throw _privateConstructorUsedError;
  int get harga_produk => throw _privateConstructorUsedError;
  int get status_produk => throw _privateConstructorUsedError;
  String get deskripsi_produk => throw _privateConstructorUsedError;
  String get foto_produk => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductCopyWith<Product> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCopyWith<$Res> {
  factory $ProductCopyWith(Product value, $Res Function(Product) then) =
      _$ProductCopyWithImpl<$Res, Product>;
  @useResult
  $Res call(
      {String nama_produk,
      int harga_produk,
      int status_produk,
      String deskripsi_produk,
      String foto_produk});
}

/// @nodoc
class _$ProductCopyWithImpl<$Res, $Val extends Product>
    implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nama_produk = null,
    Object? harga_produk = null,
    Object? status_produk = null,
    Object? deskripsi_produk = null,
    Object? foto_produk = null,
  }) {
    return _then(_value.copyWith(
      nama_produk: null == nama_produk
          ? _value.nama_produk
          : nama_produk // ignore: cast_nullable_to_non_nullable
              as String,
      harga_produk: null == harga_produk
          ? _value.harga_produk
          : harga_produk // ignore: cast_nullable_to_non_nullable
              as int,
      status_produk: null == status_produk
          ? _value.status_produk
          : status_produk // ignore: cast_nullable_to_non_nullable
              as int,
      deskripsi_produk: null == deskripsi_produk
          ? _value.deskripsi_produk
          : deskripsi_produk // ignore: cast_nullable_to_non_nullable
              as String,
      foto_produk: null == foto_produk
          ? _value.foto_produk
          : foto_produk // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductImplCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$$ProductImplCopyWith(
          _$ProductImpl value, $Res Function(_$ProductImpl) then) =
      __$$ProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String nama_produk,
      int harga_produk,
      int status_produk,
      String deskripsi_produk,
      String foto_produk});
}

/// @nodoc
class __$$ProductImplCopyWithImpl<$Res>
    extends _$ProductCopyWithImpl<$Res, _$ProductImpl>
    implements _$$ProductImplCopyWith<$Res> {
  __$$ProductImplCopyWithImpl(
      _$ProductImpl _value, $Res Function(_$ProductImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nama_produk = null,
    Object? harga_produk = null,
    Object? status_produk = null,
    Object? deskripsi_produk = null,
    Object? foto_produk = null,
  }) {
    return _then(_$ProductImpl(
      nama_produk: null == nama_produk
          ? _value.nama_produk
          : nama_produk // ignore: cast_nullable_to_non_nullable
              as String,
      harga_produk: null == harga_produk
          ? _value.harga_produk
          : harga_produk // ignore: cast_nullable_to_non_nullable
              as int,
      status_produk: null == status_produk
          ? _value.status_produk
          : status_produk // ignore: cast_nullable_to_non_nullable
              as int,
      deskripsi_produk: null == deskripsi_produk
          ? _value.deskripsi_produk
          : deskripsi_produk // ignore: cast_nullable_to_non_nullable
              as String,
      foto_produk: null == foto_produk
          ? _value.foto_produk
          : foto_produk // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductImpl implements _Product {
  const _$ProductImpl(
      {required this.nama_produk,
      required this.harga_produk,
      required this.status_produk,
      required this.deskripsi_produk,
      required this.foto_produk});

  factory _$ProductImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductImplFromJson(json);

  @override
  final String nama_produk;
  @override
  final int harga_produk;
  @override
  final int status_produk;
  @override
  final String deskripsi_produk;
  @override
  final String foto_produk;

  @override
  String toString() {
    return 'Product(nama_produk: $nama_produk, harga_produk: $harga_produk, status_produk: $status_produk, deskripsi_produk: $deskripsi_produk, foto_produk: $foto_produk)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductImpl &&
            (identical(other.nama_produk, nama_produk) ||
                other.nama_produk == nama_produk) &&
            (identical(other.harga_produk, harga_produk) ||
                other.harga_produk == harga_produk) &&
            (identical(other.status_produk, status_produk) ||
                other.status_produk == status_produk) &&
            (identical(other.deskripsi_produk, deskripsi_produk) ||
                other.deskripsi_produk == deskripsi_produk) &&
            (identical(other.foto_produk, foto_produk) ||
                other.foto_produk == foto_produk));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, nama_produk, harga_produk,
      status_produk, deskripsi_produk, foto_produk);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      __$$ProductImplCopyWithImpl<_$ProductImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductImplToJson(
      this,
    );
  }
}

abstract class _Product implements Product {
  const factory _Product(
      {required final String nama_produk,
      required final int harga_produk,
      required final int status_produk,
      required final String deskripsi_produk,
      required final String foto_produk}) = _$ProductImpl;

  factory _Product.fromJson(Map<String, dynamic> json) = _$ProductImpl.fromJson;

  @override
  String get nama_produk;
  @override
  int get harga_produk;
  @override
  int get status_produk;
  @override
  String get deskripsi_produk;
  @override
  String get foto_produk;
  @override
  @JsonKey(ignore: true)
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
