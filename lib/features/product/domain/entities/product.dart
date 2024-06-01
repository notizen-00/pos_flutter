import 'package:equatable/equatable.dart';

class Product extends Equatable {
  final int id;
  final String nama;
  final int kategoriId;
  final int harga;
  final int favorit;
  final int status;
  final String deskripsi;
  final String foto;
  final String createdAt;
  final String updatedAt;
  final Kategori kategori;

  const Product({
    required this.id,
    required this.nama,
    required this.kategoriId,
    required this.harga,
    required this.favorit,
    required this.status,
    required this.deskripsi,
    required this.foto,
    required this.createdAt,
    required this.updatedAt,
    required this.kategori,
  });

  Product copyWith({
    int? id,
    String? nama,
    int? kategoriId,
    int? harga,
    int? favorit,
    int? status,
    String? deskripsi,
    String? foto,
    String? createdAt,
    String? updatedAt,
    Kategori? kategori,
  }) {
    return Product(
      id: id ?? this.id,
      nama: nama ?? this.nama,
      kategoriId: kategoriId ?? this.kategoriId,
      harga: harga ?? this.harga,
      favorit: favorit ?? this.favorit,
      status: status ?? this.status,
      deskripsi: deskripsi ?? this.deskripsi,
      foto: foto ?? this.foto,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      kategori: kategori ?? this.kategori,
    );
  }

  @override
  List<Object?> get props => [
        id,
        nama,
        kategoriId,
        harga,
        favorit,
        status,
        deskripsi,
        foto,
        createdAt,
        updatedAt,
        kategori,
      ];

  indexWhere(bool Function(dynamic product) param0) {}
}

class Kategori extends Equatable {
  final int id;
  final String namaKategori;
  final String createdAt;
  final String updatedAt;

  const Kategori({
    required this.id,
    required this.namaKategori,
    required this.createdAt,
    required this.updatedAt,
  });

  Kategori copyWith({
    int? id,
    String? namaKategori,
    String? createdAt,
    String? updatedAt,
  }) {
    return Kategori(
      id: id ?? this.id,
      namaKategori: namaKategori ?? this.namaKategori,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  List<Object?> get props => [
        id,
        namaKategori,
        createdAt,
        updatedAt,
      ];
}


