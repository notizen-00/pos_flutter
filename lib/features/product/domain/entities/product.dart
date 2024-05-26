import 'package:equatable/equatable.dart';

class Product extends Equatable {
  final int id;
  final String nama;
  final int kategoriId;
  final String harga;
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

  @override
  List<Object?> get props => [
        id,
        namaKategori,
        createdAt,
        updatedAt,
      ];
}
