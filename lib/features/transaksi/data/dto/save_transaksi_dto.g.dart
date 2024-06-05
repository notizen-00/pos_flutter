// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'save_transaksi_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SaveTransaksiDtoImpl _$$SaveTransaksiDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$SaveTransaksiDtoImpl(
      transaksiData:
          TransaksiData.fromJson(json['transaksi'] as Map<String, dynamic>),
      detailTransaksi: (json['detail_transaksi'] as List<dynamic>)
          .map(
              (e) => SaveDetailTransaksiDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SaveTransaksiDtoImplToJson(
        _$SaveTransaksiDtoImpl instance) =>
    <String, dynamic>{
      'transaksi': instance.transaksiData,
      'detail_transaksi': instance.detailTransaksi,
    };

_$TransaksiDataImpl _$$TransaksiDataImplFromJson(Map<String, dynamic> json) =>
    _$TransaksiDataImpl(
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
    );

Map<String, dynamic> _$$TransaksiDataImplToJson(_$TransaksiDataImpl instance) =>
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
    };

_$SaveDetailTransaksiDtoImpl _$$SaveDetailTransaksiDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$SaveDetailTransaksiDtoImpl(
      produkId: (json['produk_id'] as num).toInt(),
      quantity: (json['quantity'] as num).toInt(),
      subtotal: (json['subtotal'] as num).toInt(),
    );

Map<String, dynamic> _$$SaveDetailTransaksiDtoImplToJson(
        _$SaveDetailTransaksiDtoImpl instance) =>
    <String, dynamic>{
      'produk_id': instance.produkId,
      'quantity': instance.quantity,
      'subtotal': instance.subtotal,
    };
