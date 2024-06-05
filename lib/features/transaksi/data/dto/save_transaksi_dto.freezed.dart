// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'save_transaksi_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SaveTransaksiDto _$SaveTransaksiDtoFromJson(Map<String, dynamic> json) {
  return _SaveTransaksiDto.fromJson(json);
}

/// @nodoc
mixin _$SaveTransaksiDto {
  @JsonKey(name: 'transaksi')
  TransaksiData get transaksiData => throw _privateConstructorUsedError;
  @JsonKey(name: 'detail_transaksi')
  List<SaveDetailTransaksiDto> get detailTransaksi =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SaveTransaksiDtoCopyWith<SaveTransaksiDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaveTransaksiDtoCopyWith<$Res> {
  factory $SaveTransaksiDtoCopyWith(
          SaveTransaksiDto value, $Res Function(SaveTransaksiDto) then) =
      _$SaveTransaksiDtoCopyWithImpl<$Res, SaveTransaksiDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'transaksi') TransaksiData transaksiData,
      @JsonKey(name: 'detail_transaksi')
      List<SaveDetailTransaksiDto> detailTransaksi});

  $TransaksiDataCopyWith<$Res> get transaksiData;
}

/// @nodoc
class _$SaveTransaksiDtoCopyWithImpl<$Res, $Val extends SaveTransaksiDto>
    implements $SaveTransaksiDtoCopyWith<$Res> {
  _$SaveTransaksiDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transaksiData = null,
    Object? detailTransaksi = null,
  }) {
    return _then(_value.copyWith(
      transaksiData: null == transaksiData
          ? _value.transaksiData
          : transaksiData // ignore: cast_nullable_to_non_nullable
              as TransaksiData,
      detailTransaksi: null == detailTransaksi
          ? _value.detailTransaksi
          : detailTransaksi // ignore: cast_nullable_to_non_nullable
              as List<SaveDetailTransaksiDto>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TransaksiDataCopyWith<$Res> get transaksiData {
    return $TransaksiDataCopyWith<$Res>(_value.transaksiData, (value) {
      return _then(_value.copyWith(transaksiData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SaveTransaksiDtoImplCopyWith<$Res>
    implements $SaveTransaksiDtoCopyWith<$Res> {
  factory _$$SaveTransaksiDtoImplCopyWith(_$SaveTransaksiDtoImpl value,
          $Res Function(_$SaveTransaksiDtoImpl) then) =
      __$$SaveTransaksiDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'transaksi') TransaksiData transaksiData,
      @JsonKey(name: 'detail_transaksi')
      List<SaveDetailTransaksiDto> detailTransaksi});

  @override
  $TransaksiDataCopyWith<$Res> get transaksiData;
}

/// @nodoc
class __$$SaveTransaksiDtoImplCopyWithImpl<$Res>
    extends _$SaveTransaksiDtoCopyWithImpl<$Res, _$SaveTransaksiDtoImpl>
    implements _$$SaveTransaksiDtoImplCopyWith<$Res> {
  __$$SaveTransaksiDtoImplCopyWithImpl(_$SaveTransaksiDtoImpl _value,
      $Res Function(_$SaveTransaksiDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transaksiData = null,
    Object? detailTransaksi = null,
  }) {
    return _then(_$SaveTransaksiDtoImpl(
      transaksiData: null == transaksiData
          ? _value.transaksiData
          : transaksiData // ignore: cast_nullable_to_non_nullable
              as TransaksiData,
      detailTransaksi: null == detailTransaksi
          ? _value._detailTransaksi
          : detailTransaksi // ignore: cast_nullable_to_non_nullable
              as List<SaveDetailTransaksiDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SaveTransaksiDtoImpl implements _SaveTransaksiDto {
  const _$SaveTransaksiDtoImpl(
      {@JsonKey(name: 'transaksi') required this.transaksiData,
      @JsonKey(name: 'detail_transaksi')
      required final List<SaveDetailTransaksiDto> detailTransaksi})
      : _detailTransaksi = detailTransaksi;

  factory _$SaveTransaksiDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$SaveTransaksiDtoImplFromJson(json);

  @override
  @JsonKey(name: 'transaksi')
  final TransaksiData transaksiData;
  final List<SaveDetailTransaksiDto> _detailTransaksi;
  @override
  @JsonKey(name: 'detail_transaksi')
  List<SaveDetailTransaksiDto> get detailTransaksi {
    if (_detailTransaksi is EqualUnmodifiableListView) return _detailTransaksi;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_detailTransaksi);
  }

  @override
  String toString() {
    return 'SaveTransaksiDto(transaksiData: $transaksiData, detailTransaksi: $detailTransaksi)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveTransaksiDtoImpl &&
            (identical(other.transaksiData, transaksiData) ||
                other.transaksiData == transaksiData) &&
            const DeepCollectionEquality()
                .equals(other._detailTransaksi, _detailTransaksi));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, transaksiData,
      const DeepCollectionEquality().hash(_detailTransaksi));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SaveTransaksiDtoImplCopyWith<_$SaveTransaksiDtoImpl> get copyWith =>
      __$$SaveTransaksiDtoImplCopyWithImpl<_$SaveTransaksiDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SaveTransaksiDtoImplToJson(
      this,
    );
  }
}

abstract class _SaveTransaksiDto implements SaveTransaksiDto {
  const factory _SaveTransaksiDto(
      {@JsonKey(name: 'transaksi') required final TransaksiData transaksiData,
      @JsonKey(name: 'detail_transaksi')
      required final List<SaveDetailTransaksiDto>
          detailTransaksi}) = _$SaveTransaksiDtoImpl;

  factory _SaveTransaksiDto.fromJson(Map<String, dynamic> json) =
      _$SaveTransaksiDtoImpl.fromJson;

  @override
  @JsonKey(name: 'transaksi')
  TransaksiData get transaksiData;
  @override
  @JsonKey(name: 'detail_transaksi')
  List<SaveDetailTransaksiDto> get detailTransaksi;
  @override
  @JsonKey(ignore: true)
  _$$SaveTransaksiDtoImplCopyWith<_$SaveTransaksiDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TransaksiData _$TransaksiDataFromJson(Map<String, dynamic> json) {
  return _TransaksiData.fromJson(json);
}

/// @nodoc
mixin _$TransaksiData {
  @JsonKey(name: 'pelanggan_id')
  int? get pelangganId => throw _privateConstructorUsedError;
  @JsonKey(name: 'nama_pelanggan')
  String? get namaPelanggan => throw _privateConstructorUsedError;
  @JsonKey(name: 'meja')
  int? get meja => throw _privateConstructorUsedError;
  @JsonKey(name: 'author_id')
  int? get authorId => throw _privateConstructorUsedError;
  @JsonKey(name: 'shift_id')
  int? get shiftId => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'total')
  int? get total => throw _privateConstructorUsedError;
  @JsonKey(name: 'deskripsi')
  String? get deskripsi => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_tambahan')
  int? get totalTambahan => throw _privateConstructorUsedError;
  @JsonKey(name: 'pembayaran')
  int? get pembayaran => throw _privateConstructorUsedError;
  @JsonKey(name: 'metode_pembayaran')
  String? get metodePembayaran => throw _privateConstructorUsedError;
  @JsonKey(name: 'kembalian')
  int? get kembalian => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransaksiDataCopyWith<TransaksiData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransaksiDataCopyWith<$Res> {
  factory $TransaksiDataCopyWith(
          TransaksiData value, $Res Function(TransaksiData) then) =
      _$TransaksiDataCopyWithImpl<$Res, TransaksiData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'pelanggan_id') int? pelangganId,
      @JsonKey(name: 'nama_pelanggan') String? namaPelanggan,
      @JsonKey(name: 'meja') int? meja,
      @JsonKey(name: 'author_id') int? authorId,
      @JsonKey(name: 'shift_id') int? shiftId,
      @JsonKey(name: 'status') String? status,
      @JsonKey(name: 'total') int? total,
      @JsonKey(name: 'deskripsi') String? deskripsi,
      @JsonKey(name: 'total_tambahan') int? totalTambahan,
      @JsonKey(name: 'pembayaran') int? pembayaran,
      @JsonKey(name: 'metode_pembayaran') String? metodePembayaran,
      @JsonKey(name: 'kembalian') int? kembalian});
}

/// @nodoc
class _$TransaksiDataCopyWithImpl<$Res, $Val extends TransaksiData>
    implements $TransaksiDataCopyWith<$Res> {
  _$TransaksiDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
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
  }) {
    return _then(_value.copyWith(
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TransaksiDataImplCopyWith<$Res>
    implements $TransaksiDataCopyWith<$Res> {
  factory _$$TransaksiDataImplCopyWith(
          _$TransaksiDataImpl value, $Res Function(_$TransaksiDataImpl) then) =
      __$$TransaksiDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'pelanggan_id') int? pelangganId,
      @JsonKey(name: 'nama_pelanggan') String? namaPelanggan,
      @JsonKey(name: 'meja') int? meja,
      @JsonKey(name: 'author_id') int? authorId,
      @JsonKey(name: 'shift_id') int? shiftId,
      @JsonKey(name: 'status') String? status,
      @JsonKey(name: 'total') int? total,
      @JsonKey(name: 'deskripsi') String? deskripsi,
      @JsonKey(name: 'total_tambahan') int? totalTambahan,
      @JsonKey(name: 'pembayaran') int? pembayaran,
      @JsonKey(name: 'metode_pembayaran') String? metodePembayaran,
      @JsonKey(name: 'kembalian') int? kembalian});
}

/// @nodoc
class __$$TransaksiDataImplCopyWithImpl<$Res>
    extends _$TransaksiDataCopyWithImpl<$Res, _$TransaksiDataImpl>
    implements _$$TransaksiDataImplCopyWith<$Res> {
  __$$TransaksiDataImplCopyWithImpl(
      _$TransaksiDataImpl _value, $Res Function(_$TransaksiDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
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
  }) {
    return _then(_$TransaksiDataImpl(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TransaksiDataImpl implements _TransaksiData {
  const _$TransaksiDataImpl(
      {@JsonKey(name: 'pelanggan_id') this.pelangganId,
      @JsonKey(name: 'nama_pelanggan') this.namaPelanggan,
      @JsonKey(name: 'meja') this.meja,
      @JsonKey(name: 'author_id') this.authorId,
      @JsonKey(name: 'shift_id') this.shiftId,
      @JsonKey(name: 'status') this.status,
      @JsonKey(name: 'total') this.total,
      @JsonKey(name: 'deskripsi') this.deskripsi,
      @JsonKey(name: 'total_tambahan') this.totalTambahan,
      @JsonKey(name: 'pembayaran') this.pembayaran,
      @JsonKey(name: 'metode_pembayaran') this.metodePembayaran,
      @JsonKey(name: 'kembalian') this.kembalian});

  factory _$TransaksiDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$TransaksiDataImplFromJson(json);

  @override
  @JsonKey(name: 'pelanggan_id')
  final int? pelangganId;
  @override
  @JsonKey(name: 'nama_pelanggan')
  final String? namaPelanggan;
  @override
  @JsonKey(name: 'meja')
  final int? meja;
  @override
  @JsonKey(name: 'author_id')
  final int? authorId;
  @override
  @JsonKey(name: 'shift_id')
  final int? shiftId;
  @override
  @JsonKey(name: 'status')
  final String? status;
  @override
  @JsonKey(name: 'total')
  final int? total;
  @override
  @JsonKey(name: 'deskripsi')
  final String? deskripsi;
  @override
  @JsonKey(name: 'total_tambahan')
  final int? totalTambahan;
  @override
  @JsonKey(name: 'pembayaran')
  final int? pembayaran;
  @override
  @JsonKey(name: 'metode_pembayaran')
  final String? metodePembayaran;
  @override
  @JsonKey(name: 'kembalian')
  final int? kembalian;

  @override
  String toString() {
    return 'TransaksiData(pelangganId: $pelangganId, namaPelanggan: $namaPelanggan, meja: $meja, authorId: $authorId, shiftId: $shiftId, status: $status, total: $total, deskripsi: $deskripsi, totalTambahan: $totalTambahan, pembayaran: $pembayaran, metodePembayaran: $metodePembayaran, kembalian: $kembalian)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransaksiDataImpl &&
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
                other.kembalian == kembalian));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
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
      kembalian);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TransaksiDataImplCopyWith<_$TransaksiDataImpl> get copyWith =>
      __$$TransaksiDataImplCopyWithImpl<_$TransaksiDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TransaksiDataImplToJson(
      this,
    );
  }
}

abstract class _TransaksiData implements TransaksiData {
  const factory _TransaksiData(
      {@JsonKey(name: 'pelanggan_id') final int? pelangganId,
      @JsonKey(name: 'nama_pelanggan') final String? namaPelanggan,
      @JsonKey(name: 'meja') final int? meja,
      @JsonKey(name: 'author_id') final int? authorId,
      @JsonKey(name: 'shift_id') final int? shiftId,
      @JsonKey(name: 'status') final String? status,
      @JsonKey(name: 'total') final int? total,
      @JsonKey(name: 'deskripsi') final String? deskripsi,
      @JsonKey(name: 'total_tambahan') final int? totalTambahan,
      @JsonKey(name: 'pembayaran') final int? pembayaran,
      @JsonKey(name: 'metode_pembayaran') final String? metodePembayaran,
      @JsonKey(name: 'kembalian') final int? kembalian}) = _$TransaksiDataImpl;

  factory _TransaksiData.fromJson(Map<String, dynamic> json) =
      _$TransaksiDataImpl.fromJson;

  @override
  @JsonKey(name: 'pelanggan_id')
  int? get pelangganId;
  @override
  @JsonKey(name: 'nama_pelanggan')
  String? get namaPelanggan;
  @override
  @JsonKey(name: 'meja')
  int? get meja;
  @override
  @JsonKey(name: 'author_id')
  int? get authorId;
  @override
  @JsonKey(name: 'shift_id')
  int? get shiftId;
  @override
  @JsonKey(name: 'status')
  String? get status;
  @override
  @JsonKey(name: 'total')
  int? get total;
  @override
  @JsonKey(name: 'deskripsi')
  String? get deskripsi;
  @override
  @JsonKey(name: 'total_tambahan')
  int? get totalTambahan;
  @override
  @JsonKey(name: 'pembayaran')
  int? get pembayaran;
  @override
  @JsonKey(name: 'metode_pembayaran')
  String? get metodePembayaran;
  @override
  @JsonKey(name: 'kembalian')
  int? get kembalian;
  @override
  @JsonKey(ignore: true)
  _$$TransaksiDataImplCopyWith<_$TransaksiDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SaveDetailTransaksiDto _$SaveDetailTransaksiDtoFromJson(
    Map<String, dynamic> json) {
  return _SaveDetailTransaksiDto.fromJson(json);
}

/// @nodoc
mixin _$SaveDetailTransaksiDto {
  @JsonKey(name: 'produk_id')
  int get produkId => throw _privateConstructorUsedError;
  @JsonKey(name: 'quantity')
  int get quantity => throw _privateConstructorUsedError;
  @JsonKey(name: 'subtotal')
  int get subtotal => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SaveDetailTransaksiDtoCopyWith<SaveDetailTransaksiDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaveDetailTransaksiDtoCopyWith<$Res> {
  factory $SaveDetailTransaksiDtoCopyWith(SaveDetailTransaksiDto value,
          $Res Function(SaveDetailTransaksiDto) then) =
      _$SaveDetailTransaksiDtoCopyWithImpl<$Res, SaveDetailTransaksiDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'produk_id') int produkId,
      @JsonKey(name: 'quantity') int quantity,
      @JsonKey(name: 'subtotal') int subtotal});
}

/// @nodoc
class _$SaveDetailTransaksiDtoCopyWithImpl<$Res,
        $Val extends SaveDetailTransaksiDto>
    implements $SaveDetailTransaksiDtoCopyWith<$Res> {
  _$SaveDetailTransaksiDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? produkId = null,
    Object? quantity = null,
    Object? subtotal = null,
  }) {
    return _then(_value.copyWith(
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SaveDetailTransaksiDtoImplCopyWith<$Res>
    implements $SaveDetailTransaksiDtoCopyWith<$Res> {
  factory _$$SaveDetailTransaksiDtoImplCopyWith(
          _$SaveDetailTransaksiDtoImpl value,
          $Res Function(_$SaveDetailTransaksiDtoImpl) then) =
      __$$SaveDetailTransaksiDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'produk_id') int produkId,
      @JsonKey(name: 'quantity') int quantity,
      @JsonKey(name: 'subtotal') int subtotal});
}

/// @nodoc
class __$$SaveDetailTransaksiDtoImplCopyWithImpl<$Res>
    extends _$SaveDetailTransaksiDtoCopyWithImpl<$Res,
        _$SaveDetailTransaksiDtoImpl>
    implements _$$SaveDetailTransaksiDtoImplCopyWith<$Res> {
  __$$SaveDetailTransaksiDtoImplCopyWithImpl(
      _$SaveDetailTransaksiDtoImpl _value,
      $Res Function(_$SaveDetailTransaksiDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? produkId = null,
    Object? quantity = null,
    Object? subtotal = null,
  }) {
    return _then(_$SaveDetailTransaksiDtoImpl(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SaveDetailTransaksiDtoImpl implements _SaveDetailTransaksiDto {
  const _$SaveDetailTransaksiDtoImpl(
      {@JsonKey(name: 'produk_id') required this.produkId,
      @JsonKey(name: 'quantity') required this.quantity,
      @JsonKey(name: 'subtotal') required this.subtotal});

  factory _$SaveDetailTransaksiDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$SaveDetailTransaksiDtoImplFromJson(json);

  @override
  @JsonKey(name: 'produk_id')
  final int produkId;
  @override
  @JsonKey(name: 'quantity')
  final int quantity;
  @override
  @JsonKey(name: 'subtotal')
  final int subtotal;

  @override
  String toString() {
    return 'SaveDetailTransaksiDto(produkId: $produkId, quantity: $quantity, subtotal: $subtotal)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveDetailTransaksiDtoImpl &&
            (identical(other.produkId, produkId) ||
                other.produkId == produkId) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.subtotal, subtotal) ||
                other.subtotal == subtotal));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, produkId, quantity, subtotal);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SaveDetailTransaksiDtoImplCopyWith<_$SaveDetailTransaksiDtoImpl>
      get copyWith => __$$SaveDetailTransaksiDtoImplCopyWithImpl<
          _$SaveDetailTransaksiDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SaveDetailTransaksiDtoImplToJson(
      this,
    );
  }
}

abstract class _SaveDetailTransaksiDto implements SaveDetailTransaksiDto {
  const factory _SaveDetailTransaksiDto(
          {@JsonKey(name: 'produk_id') required final int produkId,
          @JsonKey(name: 'quantity') required final int quantity,
          @JsonKey(name: 'subtotal') required final int subtotal}) =
      _$SaveDetailTransaksiDtoImpl;

  factory _SaveDetailTransaksiDto.fromJson(Map<String, dynamic> json) =
      _$SaveDetailTransaksiDtoImpl.fromJson;

  @override
  @JsonKey(name: 'produk_id')
  int get produkId;
  @override
  @JsonKey(name: 'quantity')
  int get quantity;
  @override
  @JsonKey(name: 'subtotal')
  int get subtotal;
  @override
  @JsonKey(ignore: true)
  _$$SaveDetailTransaksiDtoImplCopyWith<_$SaveDetailTransaksiDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
