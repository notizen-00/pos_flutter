// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'save_transaksi_local_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SaveTransaksiLocalDto _$SaveTransaksiLocalDtoFromJson(
    Map<String, dynamic> json) {
  return _SaveTransaksiLocalDto.fromJson(json);
}

/// @nodoc
mixin _$SaveTransaksiLocalDto {
  @JsonKey(name: 'transaksi')
  TransaksiDataLocal get transaksiData => throw _privateConstructorUsedError;
  @JsonKey(name: 'cashier')
  List<CashierItemDto> get cashier => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SaveTransaksiLocalDtoCopyWith<SaveTransaksiLocalDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaveTransaksiLocalDtoCopyWith<$Res> {
  factory $SaveTransaksiLocalDtoCopyWith(SaveTransaksiLocalDto value,
          $Res Function(SaveTransaksiLocalDto) then) =
      _$SaveTransaksiLocalDtoCopyWithImpl<$Res, SaveTransaksiLocalDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'transaksi') TransaksiDataLocal transaksiData,
      @JsonKey(name: 'cashier') List<CashierItemDto> cashier});

  $TransaksiDataLocalCopyWith<$Res> get transaksiData;
}

/// @nodoc
class _$SaveTransaksiLocalDtoCopyWithImpl<$Res,
        $Val extends SaveTransaksiLocalDto>
    implements $SaveTransaksiLocalDtoCopyWith<$Res> {
  _$SaveTransaksiLocalDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transaksiData = null,
    Object? cashier = null,
  }) {
    return _then(_value.copyWith(
      transaksiData: null == transaksiData
          ? _value.transaksiData
          : transaksiData // ignore: cast_nullable_to_non_nullable
              as TransaksiDataLocal,
      cashier: null == cashier
          ? _value.cashier
          : cashier // ignore: cast_nullable_to_non_nullable
              as List<CashierItemDto>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TransaksiDataLocalCopyWith<$Res> get transaksiData {
    return $TransaksiDataLocalCopyWith<$Res>(_value.transaksiData, (value) {
      return _then(_value.copyWith(transaksiData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SaveTransaksiLocalDtoImplCopyWith<$Res>
    implements $SaveTransaksiLocalDtoCopyWith<$Res> {
  factory _$$SaveTransaksiLocalDtoImplCopyWith(
          _$SaveTransaksiLocalDtoImpl value,
          $Res Function(_$SaveTransaksiLocalDtoImpl) then) =
      __$$SaveTransaksiLocalDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'transaksi') TransaksiDataLocal transaksiData,
      @JsonKey(name: 'cashier') List<CashierItemDto> cashier});

  @override
  $TransaksiDataLocalCopyWith<$Res> get transaksiData;
}

/// @nodoc
class __$$SaveTransaksiLocalDtoImplCopyWithImpl<$Res>
    extends _$SaveTransaksiLocalDtoCopyWithImpl<$Res,
        _$SaveTransaksiLocalDtoImpl>
    implements _$$SaveTransaksiLocalDtoImplCopyWith<$Res> {
  __$$SaveTransaksiLocalDtoImplCopyWithImpl(_$SaveTransaksiLocalDtoImpl _value,
      $Res Function(_$SaveTransaksiLocalDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transaksiData = null,
    Object? cashier = null,
  }) {
    return _then(_$SaveTransaksiLocalDtoImpl(
      transaksiData: null == transaksiData
          ? _value.transaksiData
          : transaksiData // ignore: cast_nullable_to_non_nullable
              as TransaksiDataLocal,
      cashier: null == cashier
          ? _value._cashier
          : cashier // ignore: cast_nullable_to_non_nullable
              as List<CashierItemDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SaveTransaksiLocalDtoImpl implements _SaveTransaksiLocalDto {
  const _$SaveTransaksiLocalDtoImpl(
      {@JsonKey(name: 'transaksi') required this.transaksiData,
      @JsonKey(name: 'cashier') required final List<CashierItemDto> cashier})
      : _cashier = cashier;

  factory _$SaveTransaksiLocalDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$SaveTransaksiLocalDtoImplFromJson(json);

  @override
  @JsonKey(name: 'transaksi')
  final TransaksiDataLocal transaksiData;
  final List<CashierItemDto> _cashier;
  @override
  @JsonKey(name: 'cashier')
  List<CashierItemDto> get cashier {
    if (_cashier is EqualUnmodifiableListView) return _cashier;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cashier);
  }

  @override
  String toString() {
    return 'SaveTransaksiLocalDto(transaksiData: $transaksiData, cashier: $cashier)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveTransaksiLocalDtoImpl &&
            (identical(other.transaksiData, transaksiData) ||
                other.transaksiData == transaksiData) &&
            const DeepCollectionEquality().equals(other._cashier, _cashier));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, transaksiData,
      const DeepCollectionEquality().hash(_cashier));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SaveTransaksiLocalDtoImplCopyWith<_$SaveTransaksiLocalDtoImpl>
      get copyWith => __$$SaveTransaksiLocalDtoImplCopyWithImpl<
          _$SaveTransaksiLocalDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SaveTransaksiLocalDtoImplToJson(
      this,
    );
  }
}

abstract class _SaveTransaksiLocalDto implements SaveTransaksiLocalDto {
  const factory _SaveTransaksiLocalDto(
          {@JsonKey(name: 'transaksi')
          required final TransaksiDataLocal transaksiData,
          @JsonKey(name: 'cashier')
          required final List<CashierItemDto> cashier}) =
      _$SaveTransaksiLocalDtoImpl;

  factory _SaveTransaksiLocalDto.fromJson(Map<String, dynamic> json) =
      _$SaveTransaksiLocalDtoImpl.fromJson;

  @override
  @JsonKey(name: 'transaksi')
  TransaksiDataLocal get transaksiData;
  @override
  @JsonKey(name: 'cashier')
  List<CashierItemDto> get cashier;
  @override
  @JsonKey(ignore: true)
  _$$SaveTransaksiLocalDtoImplCopyWith<_$SaveTransaksiLocalDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

TransaksiDataLocal _$TransaksiDataLocalFromJson(Map<String, dynamic> json) {
  return _TransaksiDataLocal.fromJson(json);
}

/// @nodoc
mixin _$TransaksiDataLocal {
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
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransaksiDataLocalCopyWith<TransaksiDataLocal> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransaksiDataLocalCopyWith<$Res> {
  factory $TransaksiDataLocalCopyWith(
          TransaksiDataLocal value, $Res Function(TransaksiDataLocal) then) =
      _$TransaksiDataLocalCopyWithImpl<$Res, TransaksiDataLocal>;
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
      @JsonKey(name: 'kembalian') int? kembalian,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt});
}

/// @nodoc
class _$TransaksiDataLocalCopyWithImpl<$Res, $Val extends TransaksiDataLocal>
    implements $TransaksiDataLocalCopyWith<$Res> {
  _$TransaksiDataLocalCopyWithImpl(this._value, this._then);

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
    Object? createdAt = null,
    Object? updatedAt = null,
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
abstract class _$$TransaksiDataLocalImplCopyWith<$Res>
    implements $TransaksiDataLocalCopyWith<$Res> {
  factory _$$TransaksiDataLocalImplCopyWith(_$TransaksiDataLocalImpl value,
          $Res Function(_$TransaksiDataLocalImpl) then) =
      __$$TransaksiDataLocalImplCopyWithImpl<$Res>;
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
      @JsonKey(name: 'kembalian') int? kembalian,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt});
}

/// @nodoc
class __$$TransaksiDataLocalImplCopyWithImpl<$Res>
    extends _$TransaksiDataLocalCopyWithImpl<$Res, _$TransaksiDataLocalImpl>
    implements _$$TransaksiDataLocalImplCopyWith<$Res> {
  __$$TransaksiDataLocalImplCopyWithImpl(_$TransaksiDataLocalImpl _value,
      $Res Function(_$TransaksiDataLocalImpl) _then)
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
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$TransaksiDataLocalImpl(
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
class _$TransaksiDataLocalImpl implements _TransaksiDataLocal {
  const _$TransaksiDataLocalImpl(
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
      @JsonKey(name: 'kembalian') this.kembalian,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt});

  factory _$TransaksiDataLocalImpl.fromJson(Map<String, dynamic> json) =>
      _$$TransaksiDataLocalImplFromJson(json);

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
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;

  @override
  String toString() {
    return 'TransaksiDataLocal(pelangganId: $pelangganId, namaPelanggan: $namaPelanggan, meja: $meja, authorId: $authorId, shiftId: $shiftId, status: $status, total: $total, deskripsi: $deskripsi, totalTambahan: $totalTambahan, pembayaran: $pembayaran, metodePembayaran: $metodePembayaran, kembalian: $kembalian, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransaksiDataLocalImpl &&
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
  _$$TransaksiDataLocalImplCopyWith<_$TransaksiDataLocalImpl> get copyWith =>
      __$$TransaksiDataLocalImplCopyWithImpl<_$TransaksiDataLocalImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TransaksiDataLocalImplToJson(
      this,
    );
  }
}

abstract class _TransaksiDataLocal implements TransaksiDataLocal {
  const factory _TransaksiDataLocal(
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
          @JsonKey(name: 'kembalian') final int? kembalian,
          @JsonKey(name: 'created_at') required final DateTime createdAt,
          @JsonKey(name: 'updated_at') required final DateTime updatedAt}) =
      _$TransaksiDataLocalImpl;

  factory _TransaksiDataLocal.fromJson(Map<String, dynamic> json) =
      _$TransaksiDataLocalImpl.fromJson;

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
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$TransaksiDataLocalImplCopyWith<_$TransaksiDataLocalImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SaveDetailTransaksiLocalDto _$SaveDetailTransaksiLocalDtoFromJson(
    Map<String, dynamic> json) {
  return _SaveDetailTransaksiLocalDto.fromJson(json);
}

/// @nodoc
mixin _$SaveDetailTransaksiLocalDto {
  @JsonKey(name: 'produk_id')
  int get produkId => throw _privateConstructorUsedError;
  @ProductConverter()
  @JsonKey(name: 'produk')
  Product get produk => throw _privateConstructorUsedError;
  @JsonKey(name: 'quantity')
  int get quantity => throw _privateConstructorUsedError;
  @JsonKey(name: 'subtotal')
  int get subtotal => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SaveDetailTransaksiLocalDtoCopyWith<SaveDetailTransaksiLocalDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaveDetailTransaksiLocalDtoCopyWith<$Res> {
  factory $SaveDetailTransaksiLocalDtoCopyWith(
          SaveDetailTransaksiLocalDto value,
          $Res Function(SaveDetailTransaksiLocalDto) then) =
      _$SaveDetailTransaksiLocalDtoCopyWithImpl<$Res,
          SaveDetailTransaksiLocalDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'produk_id') int produkId,
      @ProductConverter() @JsonKey(name: 'produk') Product produk,
      @JsonKey(name: 'quantity') int quantity,
      @JsonKey(name: 'subtotal') int subtotal});
}

/// @nodoc
class _$SaveDetailTransaksiLocalDtoCopyWithImpl<$Res,
        $Val extends SaveDetailTransaksiLocalDto>
    implements $SaveDetailTransaksiLocalDtoCopyWith<$Res> {
  _$SaveDetailTransaksiLocalDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? produkId = null,
    Object? produk = null,
    Object? quantity = null,
    Object? subtotal = null,
  }) {
    return _then(_value.copyWith(
      produkId: null == produkId
          ? _value.produkId
          : produkId // ignore: cast_nullable_to_non_nullable
              as int,
      produk: null == produk
          ? _value.produk
          : produk // ignore: cast_nullable_to_non_nullable
              as Product,
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
abstract class _$$SaveDetailTransaksiLocalDtoImplCopyWith<$Res>
    implements $SaveDetailTransaksiLocalDtoCopyWith<$Res> {
  factory _$$SaveDetailTransaksiLocalDtoImplCopyWith(
          _$SaveDetailTransaksiLocalDtoImpl value,
          $Res Function(_$SaveDetailTransaksiLocalDtoImpl) then) =
      __$$SaveDetailTransaksiLocalDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'produk_id') int produkId,
      @ProductConverter() @JsonKey(name: 'produk') Product produk,
      @JsonKey(name: 'quantity') int quantity,
      @JsonKey(name: 'subtotal') int subtotal});
}

/// @nodoc
class __$$SaveDetailTransaksiLocalDtoImplCopyWithImpl<$Res>
    extends _$SaveDetailTransaksiLocalDtoCopyWithImpl<$Res,
        _$SaveDetailTransaksiLocalDtoImpl>
    implements _$$SaveDetailTransaksiLocalDtoImplCopyWith<$Res> {
  __$$SaveDetailTransaksiLocalDtoImplCopyWithImpl(
      _$SaveDetailTransaksiLocalDtoImpl _value,
      $Res Function(_$SaveDetailTransaksiLocalDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? produkId = null,
    Object? produk = null,
    Object? quantity = null,
    Object? subtotal = null,
  }) {
    return _then(_$SaveDetailTransaksiLocalDtoImpl(
      produkId: null == produkId
          ? _value.produkId
          : produkId // ignore: cast_nullable_to_non_nullable
              as int,
      produk: null == produk
          ? _value.produk
          : produk // ignore: cast_nullable_to_non_nullable
              as Product,
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
class _$SaveDetailTransaksiLocalDtoImpl
    implements _SaveDetailTransaksiLocalDto {
  const _$SaveDetailTransaksiLocalDtoImpl(
      {@JsonKey(name: 'produk_id') required this.produkId,
      @ProductConverter() @JsonKey(name: 'produk') required this.produk,
      @JsonKey(name: 'quantity') required this.quantity,
      @JsonKey(name: 'subtotal') required this.subtotal});

  factory _$SaveDetailTransaksiLocalDtoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SaveDetailTransaksiLocalDtoImplFromJson(json);

  @override
  @JsonKey(name: 'produk_id')
  final int produkId;
  @override
  @ProductConverter()
  @JsonKey(name: 'produk')
  final Product produk;
  @override
  @JsonKey(name: 'quantity')
  final int quantity;
  @override
  @JsonKey(name: 'subtotal')
  final int subtotal;

  @override
  String toString() {
    return 'SaveDetailTransaksiLocalDto(produkId: $produkId, produk: $produk, quantity: $quantity, subtotal: $subtotal)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveDetailTransaksiLocalDtoImpl &&
            (identical(other.produkId, produkId) ||
                other.produkId == produkId) &&
            (identical(other.produk, produk) || other.produk == produk) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.subtotal, subtotal) ||
                other.subtotal == subtotal));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, produkId, produk, quantity, subtotal);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SaveDetailTransaksiLocalDtoImplCopyWith<_$SaveDetailTransaksiLocalDtoImpl>
      get copyWith => __$$SaveDetailTransaksiLocalDtoImplCopyWithImpl<
          _$SaveDetailTransaksiLocalDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SaveDetailTransaksiLocalDtoImplToJson(
      this,
    );
  }
}

abstract class _SaveDetailTransaksiLocalDto
    implements SaveDetailTransaksiLocalDto {
  const factory _SaveDetailTransaksiLocalDto(
          {@JsonKey(name: 'produk_id') required final int produkId,
          @ProductConverter()
          @JsonKey(name: 'produk')
          required final Product produk,
          @JsonKey(name: 'quantity') required final int quantity,
          @JsonKey(name: 'subtotal') required final int subtotal}) =
      _$SaveDetailTransaksiLocalDtoImpl;

  factory _SaveDetailTransaksiLocalDto.fromJson(Map<String, dynamic> json) =
      _$SaveDetailTransaksiLocalDtoImpl.fromJson;

  @override
  @JsonKey(name: 'produk_id')
  int get produkId;
  @override
  @ProductConverter()
  @JsonKey(name: 'produk')
  Product get produk;
  @override
  @JsonKey(name: 'quantity')
  int get quantity;
  @override
  @JsonKey(name: 'subtotal')
  int get subtotal;
  @override
  @JsonKey(ignore: true)
  _$$SaveDetailTransaksiLocalDtoImplCopyWith<_$SaveDetailTransaksiLocalDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
