// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'save_transaksi_local_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SaveTransaksiLocalDtoImpl _$$SaveTransaksiLocalDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$SaveTransaksiLocalDtoImpl(
      transaksiData: TransaksiDataLocal.fromJson(
          json['transaksi'] as Map<String, dynamic>),
      cashier: (json['cashier'] as List<dynamic>)
          .map((e) => CashierItemDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SaveTransaksiLocalDtoImplToJson(
        _$SaveTransaksiLocalDtoImpl instance) =>
    <String, dynamic>{
      'transaksi': instance.transaksiData,
      'cashier': instance.cashier,
    };

_$TransaksiDataLocalImpl _$$TransaksiDataLocalImplFromJson(
        Map<String, dynamic> json) =>
    _$TransaksiDataLocalImpl(
      pelangganId: (json['pelanggan_id'] as num?)?.toInt(),
      namaPelanggan: json['nama_pelanggan'] as String?,
      meja: (json['meja'] as num?)?.toInt(),
      authorId: (json['author_id'] as num?)?.toInt(),
      shiftId: (json['shift_id'] as num?)?.toInt(),
      status: json['status'] as String?,
      total: (json['total'] as num?)?.toInt(),
      deskripsi: json['deskripsi'] as String?,
      totalTambahan: (json['total_tambahan'] as num?)?.toInt(),
      pembayaran: (json['pembayaran'] as num?)?.toInt(),
      metodePembayaran: json['metode_pembayaran'] as String?,
      kembalian: (json['kembalian'] as num?)?.toInt(),
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$TransaksiDataLocalImplToJson(
        _$TransaksiDataLocalImpl instance) =>
    <String, dynamic>{
      'pelanggan_id': instance.pelangganId,
      'nama_pelanggan': instance.namaPelanggan,
      'meja': instance.meja,
      'author_id': instance.authorId,
      'shift_id': instance.shiftId,
      'status': instance.status,
      'total': instance.total,
      'deskripsi': instance.deskripsi,
      'total_tambahan': instance.totalTambahan,
      'pembayaran': instance.pembayaran,
      'metode_pembayaran': instance.metodePembayaran,
      'kembalian': instance.kembalian,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
    };

_$SaveDetailTransaksiLocalDtoImpl _$$SaveDetailTransaksiLocalDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$SaveDetailTransaksiLocalDtoImpl(
      produkId: (json['produk_id'] as num).toInt(),
      produk: const ProductConverter()
          .fromJson(json['produk'] as Map<String, dynamic>),
      quantity: (json['quantity'] as num).toInt(),
      subtotal: (json['subtotal'] as num).toInt(),
    );

Map<String, dynamic> _$$SaveDetailTransaksiLocalDtoImplToJson(
        _$SaveDetailTransaksiLocalDtoImpl instance) =>
    <String, dynamic>{
      'produk_id': instance.produkId,
      'produk': const ProductConverter().toJson(instance.produk),
      'quantity': instance.quantity,
      'subtotal': instance.subtotal,
    };
