// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductImpl _$$ProductImplFromJson(Map<String, dynamic> json) =>
    _$ProductImpl(
      nama_produk: json['nama_produk'] as String,
      harga_produk: (json['harga_produk'] as num).toInt(),
      status_produk: (json['status_produk'] as num).toInt(),
      deskripsi_produk: json['deskripsi_produk'] as String,
      foto_produk: json['foto_produk'] as String,
    );

Map<String, dynamic> _$$ProductImplToJson(_$ProductImpl instance) =>
    <String, dynamic>{
      'nama_produk': instance.nama_produk,
      'harga_produk': instance.harga_produk,
      'status_produk': instance.status_produk,
      'deskripsi_produk': instance.deskripsi_produk,
      'foto_produk': instance.foto_produk,
    };
