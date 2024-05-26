// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProductDto _$ProductDtoFromJson(Map<String, dynamic> json) {
  return _ProductDto.fromJson(json);
}

/// @nodoc
mixin _$ProductDto {
  int get id => throw _privateConstructorUsedError;
  String get nama => throw _privateConstructorUsedError;
  @JsonKey(name: 'kategori_id')
  int get kategoriId => throw _privateConstructorUsedError;
  String get harga => throw _privateConstructorUsedError;
  int get favorit => throw _privateConstructorUsedError;
  int get status => throw _privateConstructorUsedError;
  String get deskripsi => throw _privateConstructorUsedError;
  String get foto => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String get updatedAt => throw _privateConstructorUsedError;
  Kategori get kategori => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductDtoCopyWith<ProductDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDtoCopyWith<$Res> {
  factory $ProductDtoCopyWith(
          ProductDto value, $Res Function(ProductDto) then) =
      _$ProductDtoCopyWithImpl<$Res, ProductDto>;
  @useResult
  $Res call(
      {int id,
      String nama,
      @JsonKey(name: 'kategori_id') int kategoriId,
      String harga,
      int favorit,
      int status,
      String deskripsi,
      String foto,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt,
      Kategori kategori});

  $KategoriCopyWith<$Res> get kategori;
}

/// @nodoc
class _$ProductDtoCopyWithImpl<$Res, $Val extends ProductDto>
    implements $ProductDtoCopyWith<$Res> {
  _$ProductDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? nama = null,
    Object? kategoriId = null,
    Object? harga = null,
    Object? favorit = null,
    Object? status = null,
    Object? deskripsi = null,
    Object? foto = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? kategori = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      nama: null == nama
          ? _value.nama
          : nama // ignore: cast_nullable_to_non_nullable
              as String,
      kategoriId: null == kategoriId
          ? _value.kategoriId
          : kategoriId // ignore: cast_nullable_to_non_nullable
              as int,
      harga: null == harga
          ? _value.harga
          : harga // ignore: cast_nullable_to_non_nullable
              as String,
      favorit: null == favorit
          ? _value.favorit
          : favorit // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      deskripsi: null == deskripsi
          ? _value.deskripsi
          : deskripsi // ignore: cast_nullable_to_non_nullable
              as String,
      foto: null == foto
          ? _value.foto
          : foto // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      kategori: null == kategori
          ? _value.kategori
          : kategori // ignore: cast_nullable_to_non_nullable
              as Kategori,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $KategoriCopyWith<$Res> get kategori {
    return $KategoriCopyWith<$Res>(_value.kategori, (value) {
      return _then(_value.copyWith(kategori: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductDtoImplCopyWith<$Res>
    implements $ProductDtoCopyWith<$Res> {
  factory _$$ProductDtoImplCopyWith(
          _$ProductDtoImpl value, $Res Function(_$ProductDtoImpl) then) =
      __$$ProductDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String nama,
      @JsonKey(name: 'kategori_id') int kategoriId,
      String harga,
      int favorit,
      int status,
      String deskripsi,
      String foto,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt,
      Kategori kategori});

  @override
  $KategoriCopyWith<$Res> get kategori;
}

/// @nodoc
class __$$ProductDtoImplCopyWithImpl<$Res>
    extends _$ProductDtoCopyWithImpl<$Res, _$ProductDtoImpl>
    implements _$$ProductDtoImplCopyWith<$Res> {
  __$$ProductDtoImplCopyWithImpl(
      _$ProductDtoImpl _value, $Res Function(_$ProductDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? nama = null,
    Object? kategoriId = null,
    Object? harga = null,
    Object? favorit = null,
    Object? status = null,
    Object? deskripsi = null,
    Object? foto = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? kategori = null,
  }) {
    return _then(_$ProductDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      nama: null == nama
          ? _value.nama
          : nama // ignore: cast_nullable_to_non_nullable
              as String,
      kategoriId: null == kategoriId
          ? _value.kategoriId
          : kategoriId // ignore: cast_nullable_to_non_nullable
              as int,
      harga: null == harga
          ? _value.harga
          : harga // ignore: cast_nullable_to_non_nullable
              as String,
      favorit: null == favorit
          ? _value.favorit
          : favorit // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      deskripsi: null == deskripsi
          ? _value.deskripsi
          : deskripsi // ignore: cast_nullable_to_non_nullable
              as String,
      foto: null == foto
          ? _value.foto
          : foto // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      kategori: null == kategori
          ? _value.kategori
          : kategori // ignore: cast_nullable_to_non_nullable
              as Kategori,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductDtoImpl with DiagnosticableTreeMixin implements _ProductDto {
  _$ProductDtoImpl(
      {required this.id,
      required this.nama,
      @JsonKey(name: 'kategori_id') required this.kategoriId,
      required this.harga,
      required this.favorit,
      required this.status,
      required this.deskripsi,
      required this.foto,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt,
      required this.kategori});

  factory _$ProductDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductDtoImplFromJson(json);

  @override
  final int id;
  @override
  final String nama;
  @override
  @JsonKey(name: 'kategori_id')
  final int kategoriId;
  @override
  final String harga;
  @override
  final int favorit;
  @override
  final int status;
  @override
  final String deskripsi;
  @override
  final String foto;
  @override
  @JsonKey(name: 'created_at')
  final String createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String updatedAt;
  @override
  final Kategori kategori;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProductDto(id: $id, nama: $nama, kategoriId: $kategoriId, harga: $harga, favorit: $favorit, status: $status, deskripsi: $deskripsi, foto: $foto, createdAt: $createdAt, updatedAt: $updatedAt, kategori: $kategori)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProductDto'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('nama', nama))
      ..add(DiagnosticsProperty('kategoriId', kategoriId))
      ..add(DiagnosticsProperty('harga', harga))
      ..add(DiagnosticsProperty('favorit', favorit))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('deskripsi', deskripsi))
      ..add(DiagnosticsProperty('foto', foto))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('updatedAt', updatedAt))
      ..add(DiagnosticsProperty('kategori', kategori));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.nama, nama) || other.nama == nama) &&
            (identical(other.kategoriId, kategoriId) ||
                other.kategoriId == kategoriId) &&
            (identical(other.harga, harga) || other.harga == harga) &&
            (identical(other.favorit, favorit) || other.favorit == favorit) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.deskripsi, deskripsi) ||
                other.deskripsi == deskripsi) &&
            (identical(other.foto, foto) || other.foto == foto) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.kategori, kategori) ||
                other.kategori == kategori));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, nama, kategoriId, harga,
      favorit, status, deskripsi, foto, createdAt, updatedAt, kategori);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductDtoImplCopyWith<_$ProductDtoImpl> get copyWith =>
      __$$ProductDtoImplCopyWithImpl<_$ProductDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductDtoImplToJson(
      this,
    );
  }
}

abstract class _ProductDto implements ProductDto {
  factory _ProductDto(
      {required final int id,
      required final String nama,
      @JsonKey(name: 'kategori_id') required final int kategoriId,
      required final String harga,
      required final int favorit,
      required final int status,
      required final String deskripsi,
      required final String foto,
      @JsonKey(name: 'created_at') required final String createdAt,
      @JsonKey(name: 'updated_at') required final String updatedAt,
      required final Kategori kategori}) = _$ProductDtoImpl;

  factory _ProductDto.fromJson(Map<String, dynamic> json) =
      _$ProductDtoImpl.fromJson;

  @override
  int get id;
  @override
  String get nama;
  @override
  @JsonKey(name: 'kategori_id')
  int get kategoriId;
  @override
  String get harga;
  @override
  int get favorit;
  @override
  int get status;
  @override
  String get deskripsi;
  @override
  String get foto;
  @override
  @JsonKey(name: 'created_at')
  String get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String get updatedAt;
  @override
  Kategori get kategori;
  @override
  @JsonKey(ignore: true)
  _$$ProductDtoImplCopyWith<_$ProductDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Kategori _$KategoriFromJson(Map<String, dynamic> json) {
  return _Kategori.fromJson(json);
}

/// @nodoc
mixin _$Kategori {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'nama_kategori')
  String get namaKategori => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String get updatedAt => throw _privateConstructorUsedError;

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
      {int id,
      @JsonKey(name: 'nama_kategori') String namaKategori,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt});
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
    Object? namaKategori = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      namaKategori: null == namaKategori
          ? _value.namaKategori
          : namaKategori // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
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
      {int id,
      @JsonKey(name: 'nama_kategori') String namaKategori,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt});
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
    Object? namaKategori = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$KategoriImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      namaKategori: null == namaKategori
          ? _value.namaKategori
          : namaKategori // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$KategoriImpl with DiagnosticableTreeMixin implements _Kategori {
  _$KategoriImpl(
      {required this.id,
      @JsonKey(name: 'nama_kategori') required this.namaKategori,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt});

  factory _$KategoriImpl.fromJson(Map<String, dynamic> json) =>
      _$$KategoriImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'nama_kategori')
  final String namaKategori;
  @override
  @JsonKey(name: 'created_at')
  final String createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String updatedAt;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Kategori(id: $id, namaKategori: $namaKategori, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Kategori'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('namaKategori', namaKategori))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('updatedAt', updatedAt));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KategoriImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.namaKategori, namaKategori) ||
                other.namaKategori == namaKategori) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, namaKategori, createdAt, updatedAt);

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
  factory _Kategori(
          {required final int id,
          @JsonKey(name: 'nama_kategori') required final String namaKategori,
          @JsonKey(name: 'created_at') required final String createdAt,
          @JsonKey(name: 'updated_at') required final String updatedAt}) =
      _$KategoriImpl;

  factory _Kategori.fromJson(Map<String, dynamic> json) =
      _$KategoriImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'nama_kategori')
  String get namaKategori;
  @override
  @JsonKey(name: 'created_at')
  String get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$KategoriImplCopyWith<_$KategoriImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
