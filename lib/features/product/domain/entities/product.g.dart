// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductImpl _$$ProductImplFromJson(Map<String, dynamic> json) =>
    _$ProductImpl(
      id: (json['id'] as num).toInt(),
      nama: json['nama'] as String,
      harga: (json['harga'] as num).toInt(),
      status: (json['status'] as num).toInt(),
      favorit: (json['favorit'] as num).toInt(),
      kategori_id: (json['kategori_id'] as num).toInt(),
      deskripsi: json['deskripsi'] as String? ?? '',
      foto: json['foto'] as String? ?? '',
      kategori: Kategori.fromJson(json['kategori'] as Map<String, dynamic>),
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$ProductImplToJson(_$ProductImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nama': instance.nama,
      'harga': instance.harga,
      'status': instance.status,
      'favorit': instance.favorit,
      'kategori_id': instance.kategori_id,
      'deskripsi': instance.deskripsi,
      'foto': instance.foto,
      'kategori': instance.kategori,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
    };
