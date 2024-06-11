import 'package:blog_app/features/product/domain/entities/product.dart';
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
    required int harga,
    required int favorit,
    required int status,
    String? deskripsi,
    String? foto,
    @JsonKey(name: 'created_at') required String createdAt,
    @JsonKey(name: 'updated_at') required String updatedAt,
    required KategoriDto kategori,
  }) = _ProductDto;

  factory ProductDto.fromJson(Map<String, dynamic> json) => _$ProductDtoFromJson(json);

  factory ProductDto.fromEntity(Product produk) {
    return ProductDto(
      id: produk.id,
      nama: produk.nama,
      kategoriId: produk.kategoriId,
      harga: produk.harga,
      favorit: produk.favorit,
      status: produk.status,
      deskripsi: produk.deskripsi,
      foto: produk.foto,
      createdAt: produk.createdAt,
      updatedAt: produk.updatedAt,
      kategori: KategoriDto.fromEntity(produk.kategori),
    );
  }
}

@freezed
class KategoriDto with _$KategoriDto {
  factory KategoriDto({
    required int id,
    @JsonKey(name: 'nama_kategori') required String namaKategori,
    @JsonKey(name: 'created_at') required String createdAt,
    @JsonKey(name: 'updated_at') required String updatedAt,
  }) = _KategoriDto;

  factory KategoriDto.fromEntity(Kategori kategori) {
    return KategoriDto(
      id: kategori.id,
      namaKategori: kategori.namaKategori,
      createdAt: kategori.createdAt,
      updatedAt: kategori.updatedAt,
    );
  }

  factory KategoriDto.fromJson(Map<String, dynamic> json) => _$KategoriDtoFromJson(json);
}

extension KategoriDtoX on KategoriDto {
  Kategori toEntity() {
    return Kategori(
      id: id,
      namaKategori: namaKategori,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }
}

extension ProductDtoX on ProductDto {
  Product toEntity() {
    return Product(
      id: id,
      nama: nama,
      kategoriId: kategoriId,
      harga: harga,
      favorit: favorit,
      status: status,
      deskripsi: deskripsi ?? '',
      foto: foto ?? '',
      createdAt: createdAt,
      updatedAt: updatedAt,
      kategori: kategori.toEntity(),
    );
  }
}