import 'package:blog_app/features/product/data/dto/product_dto.dart' as dto;
import 'package:blog_app/features/product/domain/entities/product.dart';

extension ProductDtoExtension on dto.ProductDto {
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
      kategori: Kategori(
        id: kategori.id,
        namaKategori: kategori.namaKategori,
        createdAt: kategori.createdAt,
        updatedAt: kategori.updatedAt,
      ),
    );
  }
}
