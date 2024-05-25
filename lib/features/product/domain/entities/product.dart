import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.freezed.dart';
part 'product.g.dart';

@freezed
class Product with _$Product {
  const factory Product({
      required String nama,
      required int harga,
      required int status,
      required String deskripsi,
      required String foto
    }
  ) = _Product;

  factory Product.fromJson(Map<String,dynamic> json) => _$ProductFromJson(json);
}