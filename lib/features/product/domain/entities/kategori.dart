import 'package:freezed_annotation/freezed_annotation.dart';

part 'kategori.freezed.dart';
part 'kategori.g.dart';

@freezed
class Kategori with _$Kategori {
  const factory Kategori({
    required int id,
    required String nama_kategori,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _Kategori;

  factory Kategori.fromJson(Map<String, dynamic> json) => _$KategoriFromJson(json);
}
