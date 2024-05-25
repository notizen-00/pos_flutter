import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.freezed.dart';
part 'product.g.dart';

@freezed
class Product with _$Product {
  const factory Product({
      required String nama_produk,
      required int harga_produk,
      required int status_produk,
      required String deskripsi_produk,
      required String foto_produk
    }
  ) = _Product;

  factory Product.fromJson(Map<String,dynamic> json) => _$ProductFromJson(json);
}