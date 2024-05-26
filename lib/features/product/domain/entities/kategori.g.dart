// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kategori.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$KategoriImpl _$$KategoriImplFromJson(Map<String, dynamic> json) =>
    _$KategoriImpl(
      id: (json['id'] as num).toInt(),
      nama_kategori: json['nama_kategori'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$KategoriImplToJson(_$KategoriImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nama_kategori': instance.nama_kategori,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };
