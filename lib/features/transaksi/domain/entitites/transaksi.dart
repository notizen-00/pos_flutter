import 'package:blog_app/features/cashier/domain/entities/cashier.dart';
import 'package:blog_app/features/product/domain/entities/product.dart';
import 'package:equatable/equatable.dart';

class Transaksi extends Equatable {
  final int? id;
  final String? nomorTransaksi;
  final int? pelangganId;
  final String? namaPelanggan;
  final int? meja;
  final int authorId;
  final int? shiftId;
  final String status;
  final int total;
  final String? deskripsi;
  final int? totalTambahan;
  final int? pembayaran;
  final String? metodePembayaran;
  final int? kembalian;
  final List<DetailTransaksi> detailTransaksi;
  final DateTime createdAt;
  final DateTime updatedAt;

  const Transaksi({
    this.id,
    this.nomorTransaksi,
    this.pelangganId,
    this.namaPelanggan,
    this.meja,
    required this.authorId,
    this.shiftId,
    required this.status,
    required this.total,
    this.deskripsi,
    this.totalTambahan,
    this.pembayaran,
    this.metodePembayaran,
    this.kembalian,
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

class TransaksiLocal extends Equatable {
  final int? id;
  final String? nomorTransaksi;
  final int? pelangganId;
  final String? namaPelanggan;
  final int? meja;
  final int? authorId;
  final int? shiftId;
  final String status;
  final int total;
  final String? deskripsi;
  final int? totalTambahan;
  final int? pembayaran;
  final String? metodePembayaran;
  final int? kembalian;
  final List<CashierItem> cashier;
  final DateTime createdAt;
  final DateTime updatedAt;

  const TransaksiLocal({
    this.id,
    this.nomorTransaksi,
    this.pelangganId,
    this.namaPelanggan,
    this.meja,
    this.authorId,
    this.shiftId,
    required this.status,
    required this.total,
    this.deskripsi,
    this.totalTambahan,
    this.pembayaran,
    this.metodePembayaran,
    this.kembalian,
    required this.cashier,
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
        cashier,
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
  final String status;
  final int? total;
  final String? deskripsi;
  final int? totalTambahan;
  final int? pembayaran;
  final String? metodePembayaran;
  final int? kembalian;
  final DateTime createdAt;
  final DateTime updatedAt;

  const SingleTransaksi({
     this.id,
    this.nomorTransaksi,
    this.pelangganId,
    this.namaPelanggan,
    this.meja,
    this.authorId,
    this.shiftId,
    required this.status,
     this.total,
    this.deskripsi,
    this.totalTambahan,
    this.pembayaran,
    this.metodePembayaran,
     this.kembalian,
     required this.createdAt,
     required this.updatedAt,
  });

   SingleTransaksi copyWith({
    int? id,
    String? nomorTransaksi,
    int? pelangganId,
    String? namaPelanggan,
    int? meja,
    int? authorId,
    int? shiftId,
    String? status,
    int? total,
    String? deskripsi,
    int? totalTambahan,
    int? pembayaran,
    String? metodePembayaran,
    int? kembalian,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return SingleTransaksi(
      id: id ?? this.id,
      nomorTransaksi: nomorTransaksi ?? this.nomorTransaksi,
      pelangganId: pelangganId ?? this.pelangganId,
      namaPelanggan: namaPelanggan ?? this.namaPelanggan,
      meja: meja ?? this.meja,
      authorId: authorId ?? this.authorId,
      shiftId: shiftId ?? this.shiftId,
      status: status ?? this.status,
      total: total ?? this.total,
      deskripsi: deskripsi ?? this.deskripsi,
      totalTambahan: totalTambahan ?? this.totalTambahan,
      pembayaran: pembayaran ?? this.pembayaran,
      metodePembayaran: metodePembayaran ?? this.metodePembayaran,
      kembalian: kembalian ?? this.kembalian,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

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
