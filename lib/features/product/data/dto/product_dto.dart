import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'product_dto.freezed.dart';
part 'product_dto.g.dart';

@freezed
class ProductDto with _$ProductDto {
  factory ProductDto({
    required int id,
    required String nama,
    @JsonKey(name: 'kategori_id') required int kategoriId,
    required String harga,
    required int favorit,
    required int status,
    String? deskripsi,
    String? foto,
    @JsonKey(name: 'created_at') required String createdAt,
    @JsonKey(name: 'updated_at') required String updatedAt,
    required Kategori kategori,
  }) = _ProductDto;

  factory ProductDto.fromJson(Map<String, dynamic> json) => _$ProductDtoFromJson(json);
}

@freezed
class Kategori with _$Kategori {
  factory Kategori({
    required int id,
    @JsonKey(name: 'nama_kategori') required String namaKategori,
    @JsonKey(name: 'created_at') required String createdAt,
    @JsonKey(name: 'updated_at') required String updatedAt,
  }) = _Kategori;

  factory Kategori.fromJson(Map<String, dynamic> json) => _$KategoriFromJson(json);

}
