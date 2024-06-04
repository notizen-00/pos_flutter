// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductDtoImpl _$$ProductDtoImplFromJson(Map<String, dynamic> json) =>
    _$ProductDtoImpl(
      id: (json['id'] as num).toInt(),
      nama: json['nama'] as String,
      kategoriId: (json['kategori_id'] as num).toInt(),
      harga: (json['harga'] as num).toInt(),
      favorit: (json['favorit'] as num).toInt(),
      status: (json['status'] as num).toInt(),
      deskripsi: json['deskripsi'] as String?,
      foto: json['foto'] as String?,
      createdAt: json['created_at'] as String,
      updatedAt: json['updated_at'] as String,
      kategori: KategoriDto.fromJson(json['kategori'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ProductDtoImplToJson(_$ProductDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nama': instance.nama,
      'kategori_id': instance.kategoriId,
      'harga': instance.harga,
      'favorit': instance.favorit,
      'status': instance.status,
      'deskripsi': instance.deskripsi,
      'foto': instance.foto,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'kategori': instance.kategori,
    };

_$KategoriDtoImpl _$$KategoriDtoImplFromJson(Map<String, dynamic> json) =>
    _$KategoriDtoImpl(
      id: (json['id'] as num).toInt(),
      namaKategori: json['nama_kategori'] as String,
      createdAt: json['created_at'] as String,
      updatedAt: json['updated_at'] as String,
    );

Map<String, dynamic> _$$KategoriDtoImplToJson(_$KategoriDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nama_kategori': instance.namaKategori,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
