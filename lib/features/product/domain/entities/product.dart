import 'package:freezed_annotation/freezed_annotation.dart';
import 'kategori.dart';

part 'product.freezed.dart';
part 'product.g.dart';

@freezed
class Product with _$Product {
  const factory Product({
    required int id,
    required String nama,
    required int harga,
    required int status,
    required int favorit,
    required int kategori_id,
    @Default('') String? deskripsi,
    @Default('') String? foto,
    required Kategori kategori,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) => _$ProductFromJson(json);


}
