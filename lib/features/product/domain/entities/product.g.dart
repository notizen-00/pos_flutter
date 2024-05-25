// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductImpl _$$ProductImplFromJson(Map<String, dynamic> json) =>
    _$ProductImpl(
      nama: json['nama'] as String,
      harga: (json['harga'] as num).toInt(),
      status: (json['status'] as num).toInt(),
      deskripsi: json['deskripsi'] as String,
      foto: json['foto'] as String,
    );

Map<String, dynamic> _$$ProductImplToJson(_$ProductImpl instance) =>
    <String, dynamic>{
      'nama': instance.nama,
      'harga': instance.harga,
      'status': instance.status,
      'deskripsi': instance.deskripsi,
      'foto': instance.foto,
    };
