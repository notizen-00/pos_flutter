// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaksi_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TransaksiDto _$TransaksiDtoFromJson(Map<String, dynamic> json) {
  return _TransaksiDto.fromJson(json);
}

/// @nodoc
mixin _$TransaksiDto {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'nomor_transaksi')
  String? get nomorTransaksi => throw _privateConstructorUsedError;
  @JsonKey(name: 'pelanggan_id')
  int? get pelangganId => throw _privateConstructorUsedError;
  @JsonKey(name: 'nama_pelanggan')
  String? get namaPelanggan => throw _privateConstructorUsedError;
  int? get meja => throw _privateConstructorUsedError;
  @JsonKey(name: 'author_id')
  int get authorId => throw _privateConstructorUsedError;
  @JsonKey(name: 'shift_id')
  int? get shiftId => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;
  String? get deskripsi => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_tambahan')
  int? get totalTambahan => throw _privateConstructorUsedError;
  int? get pembayaran => throw _privateConstructorUsedError;
  @JsonKey(name: 'metode_pembayaran')
  String? get metodePembayaran => throw _privateConstructorUsedError;
  int? get kembalian => throw _privateConstructorUsedError;
  @JsonKey(name: 'detail_transaksi')
  List<DetailTransaksiDto> get detailTransaksi =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransaksiDtoCopyWith<TransaksiDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransaksiDtoCopyWith<$Res> {
  factory $TransaksiDtoCopyWith(
          TransaksiDto value, $Res Function(TransaksiDto) then) =
      _$TransaksiDtoCopyWithImpl<$Res, TransaksiDto>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'nomor_transaksi') String? nomorTransaksi,
      @JsonKey(name: 'pelanggan_id') int? pelangganId,
      @JsonKey(name: 'nama_pelanggan') String? namaPelanggan,
      int? meja,
      @JsonKey(name: 'author_id') int authorId,
      @JsonKey(name: 'shift_id') int? shiftId,
      String status,
      int total,
      String? deskripsi,
      @JsonKey(name: 'total_tambahan') int? totalTambahan,
      int? pembayaran,
      @JsonKey(name: 'metode_pembayaran') String? metodePembayaran,
      int? kembalian,
      @JsonKey(name: 'detail_transaksi')
      List<DetailTransaksiDto> detailTransaksi,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt});
}

/// @nodoc
class _$TransaksiDtoCopyWithImpl<$Res, $Val extends TransaksiDto>
    implements $TransaksiDtoCopyWith<$Res> {
  _$TransaksiDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? nomorTransaksi = freezed,
    Object? pelangganId = freezed,
    Object? namaPelanggan = freezed,
    Object? meja = freezed,
    Object? authorId = null,
    Object? shiftId = freezed,
    Object? status = null,
    Object? total = null,
    Object? deskripsi = freezed,
    Object? totalTambahan = freezed,
    Object? pembayaran = freezed,
    Object? metodePembayaran = freezed,
    Object? kembalian = freezed,
    Object? detailTransaksi = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      nomorTransaksi: freezed == nomorTransaksi
          ? _value.nomorTransaksi
          : nomorTransaksi // ignore: cast_nullable_to_non_nullable
              as String?,
      pelangganId: freezed == pelangganId
          ? _value.pelangganId
          : pelangganId // ignore: cast_nullable_to_non_nullable
              as int?,
      namaPelanggan: freezed == namaPelanggan
          ? _value.namaPelanggan
          : namaPelanggan // ignore: cast_nullable_to_non_nullable
              as String?,
      meja: freezed == meja
          ? _value.meja
          : meja // ignore: cast_nullable_to_non_nullable
              as int?,
      authorId: null == authorId
          ? _value.authorId
          : authorId // ignore: cast_nullable_to_non_nullable
              as int,
      shiftId: freezed == shiftId
          ? _value.shiftId
          : shiftId // ignore: cast_nullable_to_non_nullable
              as int?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      deskripsi: freezed == deskripsi
          ? _value.deskripsi
          : deskripsi // ignore: cast_nullable_to_non_nullable
              as String?,
      totalTambahan: freezed == totalTambahan
          ? _value.totalTambahan
          : totalTambahan // ignore: cast_nullable_to_non_nullable
              as int?,
      pembayaran: freezed == pembayaran
          ? _value.pembayaran
          : pembayaran // ignore: cast_nullable_to_non_nullable
              as int?,
      metodePembayaran: freezed == metodePembayaran
          ? _value.metodePembayaran
          : metodePembayaran // ignore: cast_nullable_to_non_nullable
              as String?,
      kembalian: freezed == kembalian
          ? _value.kembalian
          : kembalian // ignore: cast_nullable_to_non_nullable
              as int?,
      detailTransaksi: null == detailTransaksi
          ? _value.detailTransaksi
          : detailTransaksi // ignore: cast_nullable_to_non_nullable
              as List<DetailTransaksiDto>,
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
abstract class _$$TransaksiDtoImplCopyWith<$Res>
    implements $TransaksiDtoCopyWith<$Res> {
  factory _$$TransaksiDtoImplCopyWith(
          _$TransaksiDtoImpl value, $Res Function(_$TransaksiDtoImpl) then) =
      __$$TransaksiDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'nomor_transaksi') String? nomorTransaksi,
      @JsonKey(name: 'pelanggan_id') int? pelangganId,
      @JsonKey(name: 'nama_pelanggan') String? namaPelanggan,
      int? meja,
      @JsonKey(name: 'author_id') int authorId,
      @JsonKey(name: 'shift_id') int? shiftId,
      String status,
      int total,
      String? deskripsi,
      @JsonKey(name: 'total_tambahan') int? totalTambahan,
      int? pembayaran,
      @JsonKey(name: 'metode_pembayaran') String? metodePembayaran,
      int? kembalian,
      @JsonKey(name: 'detail_transaksi')
      List<DetailTransaksiDto> detailTransaksi,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt});
}

/// @nodoc
class __$$TransaksiDtoImplCopyWithImpl<$Res>
    extends _$TransaksiDtoCopyWithImpl<$Res, _$TransaksiDtoImpl>
    implements _$$TransaksiDtoImplCopyWith<$Res> {
  __$$TransaksiDtoImplCopyWithImpl(
      _$TransaksiDtoImpl _value, $Res Function(_$TransaksiDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? nomorTransaksi = freezed,
    Object? pelangganId = freezed,
    Object? namaPelanggan = freezed,
    Object? meja = freezed,
    Object? authorId = null,
    Object? shiftId = freezed,
    Object? status = null,
    Object? total = null,
    Object? deskripsi = freezed,
    Object? totalTambahan = freezed,
    Object? pembayaran = freezed,
    Object? metodePembayaran = freezed,
    Object? kembalian = freezed,
    Object? detailTransaksi = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$TransaksiDtoImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      nomorTransaksi: freezed == nomorTransaksi
          ? _value.nomorTransaksi
          : nomorTransaksi // ignore: cast_nullable_to_non_nullable
              as String?,
      pelangganId: freezed == pelangganId
          ? _value.pelangganId
          : pelangganId // ignore: cast_nullable_to_non_nullable
              as int?,
      namaPelanggan: freezed == namaPelanggan
          ? _value.namaPelanggan
          : namaPelanggan // ignore: cast_nullable_to_non_nullable
              as String?,
      meja: freezed == meja
          ? _value.meja
          : meja // ignore: cast_nullable_to_non_nullable
              as int?,
      authorId: null == authorId
          ? _value.authorId
          : authorId // ignore: cast_nullable_to_non_nullable
              as int,
      shiftId: freezed == shiftId
          ? _value.shiftId
          : shiftId // ignore: cast_nullable_to_non_nullable
              as int?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      deskripsi: freezed == deskripsi
          ? _value.deskripsi
          : deskripsi // ignore: cast_nullable_to_non_nullable
              as String?,
      totalTambahan: freezed == totalTambahan
          ? _value.totalTambahan
          : totalTambahan // ignore: cast_nullable_to_non_nullable
              as int?,
      pembayaran: freezed == pembayaran
          ? _value.pembayaran
          : pembayaran // ignore: cast_nullable_to_non_nullable
              as int?,
      metodePembayaran: freezed == metodePembayaran
          ? _value.metodePembayaran
          : metodePembayaran // ignore: cast_nullable_to_non_nullable
              as String?,
      kembalian: freezed == kembalian
          ? _value.kembalian
          : kembalian // ignore: cast_nullable_to_non_nullable
              as int?,
      detailTransaksi: null == detailTransaksi
          ? _value._detailTransaksi
          : detailTransaksi // ignore: cast_nullable_to_non_nullable
              as List<DetailTransaksiDto>,
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
class _$TransaksiDtoImpl implements _TransaksiDto {
  const _$TransaksiDtoImpl(
      {this.id,
      @JsonKey(name: 'nomor_transaksi') this.nomorTransaksi,
      @JsonKey(name: 'pelanggan_id') this.pelangganId,
      @JsonKey(name: 'nama_pelanggan') this.namaPelanggan,
      this.meja,
      @JsonKey(name: 'author_id') required this.authorId,
      @JsonKey(name: 'shift_id') this.shiftId,
      required this.status,
      required this.total,
      this.deskripsi,
      @JsonKey(name: 'total_tambahan') this.totalTambahan,
      this.pembayaran,
      @JsonKey(name: 'metode_pembayaran') this.metodePembayaran,
      this.kembalian,
      @JsonKey(name: 'detail_transaksi')
      required final List<DetailTransaksiDto> detailTransaksi,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt})
      : _detailTransaksi = detailTransaksi;

  factory _$TransaksiDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$TransaksiDtoImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'nomor_transaksi')
  final String? nomorTransaksi;
  @override
  @JsonKey(name: 'pelanggan_id')
  final int? pelangganId;
  @override
  @JsonKey(name: 'nama_pelanggan')
  final String? namaPelanggan;
  @override
  final int? meja;
  @override
  @JsonKey(name: 'author_id')
  final int authorId;
  @override
  @JsonKey(name: 'shift_id')
  final int? shiftId;
  @override
  final String status;
  @override
  final int total;
  @override
  final String? deskripsi;
  @override
  @JsonKey(name: 'total_tambahan')
  final int? totalTambahan;
  @override
  final int? pembayaran;
  @override
  @JsonKey(name: 'metode_pembayaran')
  final String? metodePembayaran;
  @override
  final int? kembalian;
  final List<DetailTransaksiDto> _detailTransaksi;
  @override
  @JsonKey(name: 'detail_transaksi')
  List<DetailTransaksiDto> get detailTransaksi {
    if (_detailTransaksi is EqualUnmodifiableListView) return _detailTransaksi;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_detailTransaksi);
  }

  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;

  @override
  String toString() {
    return 'TransaksiDto(id: $id, nomorTransaksi: $nomorTransaksi, pelangganId: $pelangganId, namaPelanggan: $namaPelanggan, meja: $meja, authorId: $authorId, shiftId: $shiftId, status: $status, total: $total, deskripsi: $deskripsi, totalTambahan: $totalTambahan, pembayaran: $pembayaran, metodePembayaran: $metodePembayaran, kembalian: $kembalian, detailTransaksi: $detailTransaksi, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransaksiDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.nomorTransaksi, nomorTransaksi) ||
                other.nomorTransaksi == nomorTransaksi) &&
            (identical(other.pelangganId, pelangganId) ||
                other.pelangganId == pelangganId) &&
            (identical(other.namaPelanggan, namaPelanggan) ||
                other.namaPelanggan == namaPelanggan) &&
            (identical(other.meja, meja) || other.meja == meja) &&
            (identical(other.authorId, authorId) ||
                other.authorId == authorId) &&
            (identical(other.shiftId, shiftId) || other.shiftId == shiftId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.deskripsi, deskripsi) ||
                other.deskripsi == deskripsi) &&
            (identical(other.totalTambahan, totalTambahan) ||
                other.totalTambahan == totalTambahan) &&
            (identical(other.pembayaran, pembayaran) ||
                other.pembayaran == pembayaran) &&
            (identical(other.metodePembayaran, metodePembayaran) ||
                other.metodePembayaran == metodePembayaran) &&
            (identical(other.kembalian, kembalian) ||
                other.kembalian == kembalian) &&
            const DeepCollectionEquality()
                .equals(other._detailTransaksi, _detailTransaksi) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      nomorTransaksi,
      pelangganId,
      namaPelanggan,
      meja,
      authorId,
      shiftId,
      status,
      total,
      deskripsi,
      totalTambahan,
      pembayaran,
      metodePembayaran,
      kembalian,
      const DeepCollectionEquality().hash(_detailTransaksi),
      createdAt,
      updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TransaksiDtoImplCopyWith<_$TransaksiDtoImpl> get copyWith =>
      __$$TransaksiDtoImplCopyWithImpl<_$TransaksiDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TransaksiDtoImplToJson(
      this,
    );
  }
}

abstract class _TransaksiDto implements TransaksiDto {
  const factory _TransaksiDto(
          {final int? id,
          @JsonKey(name: 'nomor_transaksi') final String? nomorTransaksi,
          @JsonKey(name: 'pelanggan_id') final int? pelangganId,
          @JsonKey(name: 'nama_pelanggan') final String? namaPelanggan,
          final int? meja,
          @JsonKey(name: 'author_id') required final int authorId,
          @JsonKey(name: 'shift_id') final int? shiftId,
          required final String status,
          required final int total,
          final String? deskripsi,
          @JsonKey(name: 'total_tambahan') final int? totalTambahan,
          final int? pembayaran,
          @JsonKey(name: 'metode_pembayaran') final String? metodePembayaran,
          final int? kembalian,
          @JsonKey(name: 'detail_transaksi')
          required final List<DetailTransaksiDto> detailTransaksi,
          @JsonKey(name: 'created_at') required final DateTime createdAt,
          @JsonKey(name: 'updated_at') required final DateTime updatedAt}) =
      _$TransaksiDtoImpl;

  factory _TransaksiDto.fromJson(Map<String, dynamic> json) =
      _$TransaksiDtoImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'nomor_transaksi')
  String? get nomorTransaksi;
  @override
  @JsonKey(name: 'pelanggan_id')
  int? get pelangganId;
  @override
  @JsonKey(name: 'nama_pelanggan')
  String? get namaPelanggan;
  @override
  int? get meja;
  @override
  @JsonKey(name: 'author_id')
  int get authorId;
  @override
  @JsonKey(name: 'shift_id')
  int? get shiftId;
  @override
  String get status;
  @override
  int get total;
  @override
  String? get deskripsi;
  @override
  @JsonKey(name: 'total_tambahan')
  int? get totalTambahan;
  @override
  int? get pembayaran;
  @override
  @JsonKey(name: 'metode_pembayaran')
  String? get metodePembayaran;
  @override
  int? get kembalian;
  @override
  @JsonKey(name: 'detail_transaksi')
  List<DetailTransaksiDto> get detailTransaksi;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$TransaksiDtoImplCopyWith<_$TransaksiDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SingleTransaksiDto _$SingleTransaksiDtoFromJson(Map<String, dynamic> json) {
  return _SingleTransaksiDto.fromJson(json);
}

/// @nodoc
mixin _$SingleTransaksiDto {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'nomor_transaksi')
  String? get nomorTransaksi => throw _privateConstructorUsedError;
  @JsonKey(name: 'pelanggan_id')
  int? get pelangganId => throw _privateConstructorUsedError;
  @JsonKey(name: 'nama_pelanggan')
  String? get namaPelanggan => throw _privateConstructorUsedError;
  int? get meja => throw _privateConstructorUsedError;
  @JsonKey(name: 'author_id')
  int? get authorId => throw _privateConstructorUsedError;
  @JsonKey(name: 'shift_id')
  int? get shiftId => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  int? get total => throw _privateConstructorUsedError;
  String? get deskripsi => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_tambahan')
  int? get totalTambahan => throw _privateConstructorUsedError;
  int? get pembayaran => throw _privateConstructorUsedError;
  @JsonKey(name: 'metode_pembayaran')
  String? get metodePembayaran => throw _privateConstructorUsedError;
  int? get kembalian => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SingleTransaksiDtoCopyWith<SingleTransaksiDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SingleTransaksiDtoCopyWith<$Res> {
  factory $SingleTransaksiDtoCopyWith(
          SingleTransaksiDto value, $Res Function(SingleTransaksiDto) then) =
      _$SingleTransaksiDtoCopyWithImpl<$Res, SingleTransaksiDto>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'nomor_transaksi') String? nomorTransaksi,
      @JsonKey(name: 'pelanggan_id') int? pelangganId,
      @JsonKey(name: 'nama_pelanggan') String? namaPelanggan,
      int? meja,
      @JsonKey(name: 'author_id') int? authorId,
      @JsonKey(name: 'shift_id') int? shiftId,
      String? status,
      int? total,
      String? deskripsi,
      @JsonKey(name: 'total_tambahan') int? totalTambahan,
      int? pembayaran,
      @JsonKey(name: 'metode_pembayaran') String? metodePembayaran,
      int? kembalian,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt});
}

/// @nodoc
class _$SingleTransaksiDtoCopyWithImpl<$Res, $Val extends SingleTransaksiDto>
    implements $SingleTransaksiDtoCopyWith<$Res> {
  _$SingleTransaksiDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? nomorTransaksi = freezed,
    Object? pelangganId = freezed,
    Object? namaPelanggan = freezed,
    Object? meja = freezed,
    Object? authorId = freezed,
    Object? shiftId = freezed,
    Object? status = freezed,
    Object? total = freezed,
    Object? deskripsi = freezed,
    Object? totalTambahan = freezed,
    Object? pembayaran = freezed,
    Object? metodePembayaran = freezed,
    Object? kembalian = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      nomorTransaksi: freezed == nomorTransaksi
          ? _value.nomorTransaksi
          : nomorTransaksi // ignore: cast_nullable_to_non_nullable
              as String?,
      pelangganId: freezed == pelangganId
          ? _value.pelangganId
          : pelangganId // ignore: cast_nullable_to_non_nullable
              as int?,
      namaPelanggan: freezed == namaPelanggan
          ? _value.namaPelanggan
          : namaPelanggan // ignore: cast_nullable_to_non_nullable
              as String?,
      meja: freezed == meja
          ? _value.meja
          : meja // ignore: cast_nullable_to_non_nullable
              as int?,
      authorId: freezed == authorId
          ? _value.authorId
          : authorId // ignore: cast_nullable_to_non_nullable
              as int?,
      shiftId: freezed == shiftId
          ? _value.shiftId
          : shiftId // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      deskripsi: freezed == deskripsi
          ? _value.deskripsi
          : deskripsi // ignore: cast_nullable_to_non_nullable
              as String?,
      totalTambahan: freezed == totalTambahan
          ? _value.totalTambahan
          : totalTambahan // ignore: cast_nullable_to_non_nullable
              as int?,
      pembayaran: freezed == pembayaran
          ? _value.pembayaran
          : pembayaran // ignore: cast_nullable_to_non_nullable
              as int?,
      metodePembayaran: freezed == metodePembayaran
          ? _value.metodePembayaran
          : metodePembayaran // ignore: cast_nullable_to_non_nullable
              as String?,
      kembalian: freezed == kembalian
          ? _value.kembalian
          : kembalian // ignore: cast_nullable_to_non_nullable
              as int?,
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
abstract class _$$SingleTransaksiDtoImplCopyWith<$Res>
    implements $SingleTransaksiDtoCopyWith<$Res> {
  factory _$$SingleTransaksiDtoImplCopyWith(_$SingleTransaksiDtoImpl value,
          $Res Function(_$SingleTransaksiDtoImpl) then) =
      __$$SingleTransaksiDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'nomor_transaksi') String? nomorTransaksi,
      @JsonKey(name: 'pelanggan_id') int? pelangganId,
      @JsonKey(name: 'nama_pelanggan') String? namaPelanggan,
      int? meja,
      @JsonKey(name: 'author_id') int? authorId,
      @JsonKey(name: 'shift_id') int? shiftId,
      String? status,
      int? total,
      String? deskripsi,
      @JsonKey(name: 'total_tambahan') int? totalTambahan,
      int? pembayaran,
      @JsonKey(name: 'metode_pembayaran') String? metodePembayaran,
      int? kembalian,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt});
}

/// @nodoc
class __$$SingleTransaksiDtoImplCopyWithImpl<$Res>
    extends _$SingleTransaksiDtoCopyWithImpl<$Res, _$SingleTransaksiDtoImpl>
    implements _$$SingleTransaksiDtoImplCopyWith<$Res> {
  __$$SingleTransaksiDtoImplCopyWithImpl(_$SingleTransaksiDtoImpl _value,
      $Res Function(_$SingleTransaksiDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? nomorTransaksi = freezed,
    Object? pelangganId = freezed,
    Object? namaPelanggan = freezed,
    Object? meja = freezed,
    Object? authorId = freezed,
    Object? shiftId = freezed,
    Object? status = freezed,
    Object? total = freezed,
    Object? deskripsi = freezed,
    Object? totalTambahan = freezed,
    Object? pembayaran = freezed,
    Object? metodePembayaran = freezed,
    Object? kembalian = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$SingleTransaksiDtoImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      nomorTransaksi: freezed == nomorTransaksi
          ? _value.nomorTransaksi
          : nomorTransaksi // ignore: cast_nullable_to_non_nullable
              as String?,
      pelangganId: freezed == pelangganId
          ? _value.pelangganId
          : pelangganId // ignore: cast_nullable_to_non_nullable
              as int?,
      namaPelanggan: freezed == namaPelanggan
          ? _value.namaPelanggan
          : namaPelanggan // ignore: cast_nullable_to_non_nullable
              as String?,
      meja: freezed == meja
          ? _value.meja
          : meja // ignore: cast_nullable_to_non_nullable
              as int?,
      authorId: freezed == authorId
          ? _value.authorId
          : authorId // ignore: cast_nullable_to_non_nullable
              as int?,
      shiftId: freezed == shiftId
          ? _value.shiftId
          : shiftId // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      deskripsi: freezed == deskripsi
          ? _value.deskripsi
          : deskripsi // ignore: cast_nullable_to_non_nullable
              as String?,
      totalTambahan: freezed == totalTambahan
          ? _value.totalTambahan
          : totalTambahan // ignore: cast_nullable_to_non_nullable
              as int?,
      pembayaran: freezed == pembayaran
          ? _value.pembayaran
          : pembayaran // ignore: cast_nullable_to_non_nullable
              as int?,
      metodePembayaran: freezed == metodePembayaran
          ? _value.metodePembayaran
          : metodePembayaran // ignore: cast_nullable_to_non_nullable
              as String?,
      kembalian: freezed == kembalian
          ? _value.kembalian
          : kembalian // ignore: cast_nullable_to_non_nullable
              as int?,
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
class _$SingleTransaksiDtoImpl implements _SingleTransaksiDto {
  const _$SingleTransaksiDtoImpl(
      {this.id,
      @JsonKey(name: 'nomor_transaksi') this.nomorTransaksi,
      @JsonKey(name: 'pelanggan_id') this.pelangganId,
      @JsonKey(name: 'nama_pelanggan') this.namaPelanggan,
      this.meja,
      @JsonKey(name: 'author_id') this.authorId,
      @JsonKey(name: 'shift_id') this.shiftId,
      this.status,
      this.total,
      this.deskripsi,
      @JsonKey(name: 'total_tambahan') this.totalTambahan,
      this.pembayaran,
      @JsonKey(name: 'metode_pembayaran') this.metodePembayaran,
      this.kembalian,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt});

  factory _$SingleTransaksiDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$SingleTransaksiDtoImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'nomor_transaksi')
  final String? nomorTransaksi;
  @override
  @JsonKey(name: 'pelanggan_id')
  final int? pelangganId;
  @override
  @JsonKey(name: 'nama_pelanggan')
  final String? namaPelanggan;
  @override
  final int? meja;
  @override
  @JsonKey(name: 'author_id')
  final int? authorId;
  @override
  @JsonKey(name: 'shift_id')
  final int? shiftId;
  @override
  final String? status;
  @override
  final int? total;
  @override
  final String? deskripsi;
  @override
  @JsonKey(name: 'total_tambahan')
  final int? totalTambahan;
  @override
  final int? pembayaran;
  @override
  @JsonKey(name: 'metode_pembayaran')
  final String? metodePembayaran;
  @override
  final int? kembalian;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;

  @override
  String toString() {
    return 'SingleTransaksiDto(id: $id, nomorTransaksi: $nomorTransaksi, pelangganId: $pelangganId, namaPelanggan: $namaPelanggan, meja: $meja, authorId: $authorId, shiftId: $shiftId, status: $status, total: $total, deskripsi: $deskripsi, totalTambahan: $totalTambahan, pembayaran: $pembayaran, metodePembayaran: $metodePembayaran, kembalian: $kembalian, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SingleTransaksiDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.nomorTransaksi, nomorTransaksi) ||
                other.nomorTransaksi == nomorTransaksi) &&
            (identical(other.pelangganId, pelangganId) ||
                other.pelangganId == pelangganId) &&
            (identical(other.namaPelanggan, namaPelanggan) ||
                other.namaPelanggan == namaPelanggan) &&
            (identical(other.meja, meja) || other.meja == meja) &&
            (identical(other.authorId, authorId) ||
                other.authorId == authorId) &&
            (identical(other.shiftId, shiftId) || other.shiftId == shiftId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.deskripsi, deskripsi) ||
                other.deskripsi == deskripsi) &&
            (identical(other.totalTambahan, totalTambahan) ||
                other.totalTambahan == totalTambahan) &&
            (identical(other.pembayaran, pembayaran) ||
                other.pembayaran == pembayaran) &&
            (identical(other.metodePembayaran, metodePembayaran) ||
                other.metodePembayaran == metodePembayaran) &&
            (identical(other.kembalian, kembalian) ||
                other.kembalian == kembalian) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      nomorTransaksi,
      pelangganId,
      namaPelanggan,
      meja,
      authorId,
      shiftId,
      status,
      total,
      deskripsi,
      totalTambahan,
      pembayaran,
      metodePembayaran,
      kembalian,
      createdAt,
      updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SingleTransaksiDtoImplCopyWith<_$SingleTransaksiDtoImpl> get copyWith =>
      __$$SingleTransaksiDtoImplCopyWithImpl<_$SingleTransaksiDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SingleTransaksiDtoImplToJson(
      this,
    );
  }
}

abstract class _SingleTransaksiDto implements SingleTransaksiDto {
  const factory _SingleTransaksiDto(
          {final int? id,
          @JsonKey(name: 'nomor_transaksi') final String? nomorTransaksi,
          @JsonKey(name: 'pelanggan_id') final int? pelangganId,
          @JsonKey(name: 'nama_pelanggan') final String? namaPelanggan,
          final int? meja,
          @JsonKey(name: 'author_id') final int? authorId,
          @JsonKey(name: 'shift_id') final int? shiftId,
          final String? status,
          final int? total,
          final String? deskripsi,
          @JsonKey(name: 'total_tambahan') final int? totalTambahan,
          final int? pembayaran,
          @JsonKey(name: 'metode_pembayaran') final String? metodePembayaran,
          final int? kembalian,
          @JsonKey(name: 'created_at') required final DateTime createdAt,
          @JsonKey(name: 'updated_at') required final DateTime updatedAt}) =
      _$SingleTransaksiDtoImpl;

  factory _SingleTransaksiDto.fromJson(Map<String, dynamic> json) =
      _$SingleTransaksiDtoImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'nomor_transaksi')
  String? get nomorTransaksi;
  @override
  @JsonKey(name: 'pelanggan_id')
  int? get pelangganId;
  @override
  @JsonKey(name: 'nama_pelanggan')
  String? get namaPelanggan;
  @override
  int? get meja;
  @override
  @JsonKey(name: 'author_id')
  int? get authorId;
  @override
  @JsonKey(name: 'shift_id')
  int? get shiftId;
  @override
  String? get status;
  @override
  int? get total;
  @override
  String? get deskripsi;
  @override
  @JsonKey(name: 'total_tambahan')
  int? get totalTambahan;
  @override
  int? get pembayaran;
  @override
  @JsonKey(name: 'metode_pembayaran')
  String? get metodePembayaran;
  @override
  int? get kembalian;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$SingleTransaksiDtoImplCopyWith<_$SingleTransaksiDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DetailTransaksiDto _$DetailTransaksiDtoFromJson(Map<String, dynamic> json) {
  return _DetailTransaksiDto.fromJson(json);
}

/// @nodoc
mixin _$DetailTransaksiDto {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'transaksi_id')
  int get transaksiId => throw _privateConstructorUsedError;
  @JsonKey(name: 'produk_id')
  int get produkId => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  int get subtotal => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String? get updatedAt => throw _privateConstructorUsedError;
  ProductDto get produk => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DetailTransaksiDtoCopyWith<DetailTransaksiDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailTransaksiDtoCopyWith<$Res> {
  factory $DetailTransaksiDtoCopyWith(
          DetailTransaksiDto value, $Res Function(DetailTransaksiDto) then) =
      _$DetailTransaksiDtoCopyWithImpl<$Res, DetailTransaksiDto>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'transaksi_id') int transaksiId,
      @JsonKey(name: 'produk_id') int produkId,
      int quantity,
      int subtotal,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt,
      ProductDto produk});

  $ProductDtoCopyWith<$Res> get produk;
}

/// @nodoc
class _$DetailTransaksiDtoCopyWithImpl<$Res, $Val extends DetailTransaksiDto>
    implements $DetailTransaksiDtoCopyWith<$Res> {
  _$DetailTransaksiDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? transaksiId = null,
    Object? produkId = null,
    Object? quantity = null,
    Object? subtotal = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? produk = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      transaksiId: null == transaksiId
          ? _value.transaksiId
          : transaksiId // ignore: cast_nullable_to_non_nullable
              as int,
      produkId: null == produkId
          ? _value.produkId
          : produkId // ignore: cast_nullable_to_non_nullable
              as int,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      subtotal: null == subtotal
          ? _value.subtotal
          : subtotal // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      produk: null == produk
          ? _value.produk
          : produk // ignore: cast_nullable_to_non_nullable
              as ProductDto,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductDtoCopyWith<$Res> get produk {
    return $ProductDtoCopyWith<$Res>(_value.produk, (value) {
      return _then(_value.copyWith(produk: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DetailTransaksiDtoImplCopyWith<$Res>
    implements $DetailTransaksiDtoCopyWith<$Res> {
  factory _$$DetailTransaksiDtoImplCopyWith(_$DetailTransaksiDtoImpl value,
          $Res Function(_$DetailTransaksiDtoImpl) then) =
      __$$DetailTransaksiDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'transaksi_id') int transaksiId,
      @JsonKey(name: 'produk_id') int produkId,
      int quantity,
      int subtotal,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt,
      ProductDto produk});

  @override
  $ProductDtoCopyWith<$Res> get produk;
}

/// @nodoc
class __$$DetailTransaksiDtoImplCopyWithImpl<$Res>
    extends _$DetailTransaksiDtoCopyWithImpl<$Res, _$DetailTransaksiDtoImpl>
    implements _$$DetailTransaksiDtoImplCopyWith<$Res> {
  __$$DetailTransaksiDtoImplCopyWithImpl(_$DetailTransaksiDtoImpl _value,
      $Res Function(_$DetailTransaksiDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? transaksiId = null,
    Object? produkId = null,
    Object? quantity = null,
    Object? subtotal = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? produk = null,
  }) {
    return _then(_$DetailTransaksiDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      transaksiId: null == transaksiId
          ? _value.transaksiId
          : transaksiId // ignore: cast_nullable_to_non_nullable
              as int,
      produkId: null == produkId
          ? _value.produkId
          : produkId // ignore: cast_nullable_to_non_nullable
              as int,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      subtotal: null == subtotal
          ? _value.subtotal
          : subtotal // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      produk: null == produk
          ? _value.produk
          : produk // ignore: cast_nullable_to_non_nullable
              as ProductDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DetailTransaksiDtoImpl implements _DetailTransaksiDto {
  const _$DetailTransaksiDtoImpl(
      {required this.id,
      @JsonKey(name: 'transaksi_id') required this.transaksiId,
      @JsonKey(name: 'produk_id') required this.produkId,
      required this.quantity,
      required this.subtotal,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      required this.produk});

  factory _$DetailTransaksiDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$DetailTransaksiDtoImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'transaksi_id')
  final int transaksiId;
  @override
  @JsonKey(name: 'produk_id')
  final int produkId;
  @override
  final int quantity;
  @override
  final int subtotal;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String? updatedAt;
  @override
  final ProductDto produk;

  @override
  String toString() {
    return 'DetailTransaksiDto(id: $id, transaksiId: $transaksiId, produkId: $produkId, quantity: $quantity, subtotal: $subtotal, createdAt: $createdAt, updatedAt: $updatedAt, produk: $produk)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailTransaksiDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.transaksiId, transaksiId) ||
                other.transaksiId == transaksiId) &&
            (identical(other.produkId, produkId) ||
                other.produkId == produkId) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.subtotal, subtotal) ||
                other.subtotal == subtotal) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.produk, produk) || other.produk == produk));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, transaksiId, produkId,
      quantity, subtotal, createdAt, updatedAt, produk);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailTransaksiDtoImplCopyWith<_$DetailTransaksiDtoImpl> get copyWith =>
      __$$DetailTransaksiDtoImplCopyWithImpl<_$DetailTransaksiDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DetailTransaksiDtoImplToJson(
      this,
    );
  }
}

abstract class _DetailTransaksiDto implements DetailTransaksiDto {
  const factory _DetailTransaksiDto(
      {required final int id,
      @JsonKey(name: 'transaksi_id') required final int transaksiId,
      @JsonKey(name: 'produk_id') required final int produkId,
      required final int quantity,
      required final int subtotal,
      @JsonKey(name: 'created_at') final String? createdAt,
      @JsonKey(name: 'updated_at') final String? updatedAt,
      required final ProductDto produk}) = _$DetailTransaksiDtoImpl;

  factory _DetailTransaksiDto.fromJson(Map<String, dynamic> json) =
      _$DetailTransaksiDtoImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'transaksi_id')
  int get transaksiId;
  @override
  @JsonKey(name: 'produk_id')
  int get produkId;
  @override
  int get quantity;
  @override
  int get subtotal;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String? get updatedAt;
  @override
  ProductDto get produk;
  @override
  @JsonKey(ignore: true)
  _$$DetailTransaksiDtoImplCopyWith<_$DetailTransaksiDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
