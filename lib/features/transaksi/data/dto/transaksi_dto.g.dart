// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaksi_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TransaksiDtoImpl _$$TransaksiDtoImplFromJson(Map<String, dynamic> json) =>
    _$TransaksiDtoImpl(
      id: (json['id'] as num?)?.toInt(),
      nomorTransaksi: json['nomor_transaksi'] as String?,
      pelangganId: (json['pelanggan_id'] as num?)?.toInt(),
      namaPelanggan: json['nama_pelanggan'] as String?,
      meja: (json['meja'] as num?)?.toInt(),
      authorId: (json['author_id'] as num).toInt(),
      shiftId: (json['shift_id'] as num?)?.toInt(),
      status: json['status'] as String,
      total: (json['total'] as num).toInt(),
      deskripsi: json['deskripsi'] as String?,
      totalTambahan: (json['total_tambahan'] as num?)?.toInt(),
      pembayaran: (json['pembayaran'] as num?)?.toInt(),
      metodePembayaran: json['metode_pembayaran'] as String?,
      kembalian: (json['kembalian'] as num?)?.toInt(),
      detailTransaksi: (json['detail_transaksi'] as List<dynamic>)
          .map((e) => DetailTransaksiDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$TransaksiDtoImplToJson(_$TransaksiDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nomor_transaksi': instance.nomorTransaksi,
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
      'detail_transaksi': instance.detailTransaksi,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
    };

_$SingleTransaksiDtoImpl _$$SingleTransaksiDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$SingleTransaksiDtoImpl(
      id: (json['id'] as num?)?.toInt(),
      nomorTransaksi: json['nomor_transaksi'] as String?,
      pelangganId: (json['pelanggan_id'] as num?)?.toInt(),
      namaPelanggan: json['nama_pelanggan'] as String?,
      meja: (json['meja'] as num?)?.toInt(),
      authorId: (json['author_id'] as num?)?.toInt(),
      shiftId: (json['shift_id'] as num?)?.toInt(),
      status: json['status'] as String,
      total: (json['total'] as num?)?.toInt(),
      deskripsi: json['deskripsi'] as String?,
      totalTambahan: (json['total_tambahan'] as num?)?.toInt(),
      pembayaran: (json['pembayaran'] as num?)?.toInt(),
      metodePembayaran: json['metode_pembayaran'] as String?,
      kembalian: (json['kembalian'] as num?)?.toInt(),
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$SingleTransaksiDtoImplToJson(
        _$SingleTransaksiDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nomor_transaksi': instance.nomorTransaksi,
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

_$DetailTransaksiDtoImpl _$$DetailTransaksiDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$DetailTransaksiDtoImpl(
      id: (json['id'] as num).toInt(),
      transaksiId: (json['transaksi_id'] as num).toInt(),
      produkId: (json['produk_id'] as num).toInt(),
      quantity: (json['quantity'] as num).toInt(),
      subtotal: (json['subtotal'] as num).toInt(),
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      produk: ProductDto.fromJson(json['produk'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DetailTransaksiDtoImplToJson(
        _$DetailTransaksiDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'transaksi_id': instance.transaksiId,
      'produk_id': instance.produkId,
      'quantity': instance.quantity,
      'subtotal': instance.subtotal,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'produk': instance.produk,
    };
