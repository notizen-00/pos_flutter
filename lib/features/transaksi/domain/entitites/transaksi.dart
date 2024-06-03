import 'package:blog_app/features/cashier/domain/entities/cashier.dart';
import 'package:equatable/equatable.dart';

class Transaksi extends Equatable {
  final String pelangganId;
  final String namaPelanggan;
  final int meja;
  final int authorId;
  final int shiftId;
  final String status;
  final int total;
  final String deskripsi;
  final String totalTambahan;
  final int pembayaran;
  final String metodePembayaran;
  final int kembalian;
  final List<CashierItem> detailTransaksi;
  final int totalBayar;

  const Transaksi({
    required this.pelangganId,
    required this.namaPelanggan,
    required this.meja,
    required this.authorId,
    required this.shiftId,
    required this.status,
    required this.total,
    required this.deskripsi,
    required this.totalTambahan,
    required this.pembayaran,
    required this.metodePembayaran,
    required this.kembalian,
    required this.detailTransaksi,
    required this.totalBayar,
  });

  @override
  List<Object?> get props => [
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
        totalBayar,
      ];
}

