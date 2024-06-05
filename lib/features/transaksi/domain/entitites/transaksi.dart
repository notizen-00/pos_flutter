import 'package:blog_app/features/product/domain/entities/product.dart';
import 'package:equatable/equatable.dart';

class Transaksi extends Equatable {
  final int id;
  final String nomorTransaksi;
  final String? pelangganId;
  final String? namaPelanggan;
  final int? meja;
  final int authorId;
  final int? shiftId;
  final String status;
  final int total;
  final String? deskripsi;
  final int? totalTambahan;
  final int pembayaran;
  final String metodePembayaran;
  final int kembalian;
  final List<DetailTransaksi> detailTransaksi;
  final String createdAt;
  final String updatedAt;

  const Transaksi({
    required this.id,
    required this.nomorTransaksi,
    this.pelangganId,
    this.namaPelanggan,
    this.meja,
    required this.authorId,
    this.shiftId,
    required this.status,
    required this.total,
    this.deskripsi,
    this.totalTambahan,
    required this.pembayaran,
    required this.metodePembayaran,
    required this.kembalian,
    required this.detailTransaksi,
    required this.createdAt,
    required this.updatedAt,
  });

  @override
  List<Object?> get props => [
        id,
        nomorTransaksi,
        pelangganId,
        namaPelanggan,
        meja,
        authorId,
        shiftId,
        status,
        total,
        deskripsi,
        totalTambahan,
        pembayaran,
        metodePembayaran,
        kembalian,
        detailTransaksi,
        createdAt,
        updatedAt,
      ];
}

class SingleTransaksi extends Equatable {
  final int? id;
  final String? nomorTransaksi;
  final int? pelangganId;
  final String? namaPelanggan;
  final int? meja;
  final int? authorId;
  final int? shiftId;
  final String? status;
  final int? total;
  final String? deskripsi;
  final int? totalTambahan;
  final int? pembayaran;
  final String? metodePembayaran;
  final int? kembalian;
  final String? createdAt;
  final String? updatedAt;

  const SingleTransaksi({
     this.id,
    this.nomorTransaksi,
    this.pelangganId,
    this.namaPelanggan,
    this.meja,
    this.authorId,
    this.shiftId,
     this.status,
     this.total,
    this.deskripsi,
    this.totalTambahan,
    this.pembayaran,
    this.metodePembayaran,
     this.kembalian,
     this.createdAt,
     this.updatedAt,
  });

  @override
  List<Object?> get props => [
        id,
        nomorTransaksi,
        pelangganId,
        namaPelanggan,
        meja,
        authorId,
        shiftId,
        status,
        total,
        deskripsi,
        totalTambahan,
        pembayaran,
        metodePembayaran,
        kembalian,
        createdAt,
        updatedAt,
      ];
}

class DetailTransaksi extends Equatable {
  final int id;
  final int transaksiId;
  final int produkId;
  final int quantity;
  final int subtotal;
  final String createdAt;
  final String updatedAt;
  final Product produk;

  const DetailTransaksi({
    required this.id,
    required this.transaksiId,
    required this.produkId,
    required this.quantity,
    required this.subtotal,
    required this.createdAt,
    required this.updatedAt,
    required this.produk,
  });

  @override
  List<Object?> get props => [id, transaksiId, produkId, quantity, subtotal, createdAt, updatedAt, produk];
}
