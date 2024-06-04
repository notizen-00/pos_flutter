import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:blog_app/features/cashier/domain/entities/cashier.dart'; // Import entitas CashierItem

part 'transaksi_dto.freezed.dart';
part 'transaksi_dto.g.dart';

@freezed
class TransaksiDTO with _$TransaksiDTO {
  const factory TransaksiDTO({
    required String pelangganId,
    String? namaPelanggan,
    int? meja,
    required int authorId,
    required int shiftId,
    required String status,
    required int total,
    String? deskripsi,
    required String totalTambahan,
    required int pembayaran,
    required String metodePembayaran,
    required int kembalian,
    required List<CashierItem> detailTransaksi,
    required int totalBayar,
  }) = _TransaksiDTO;

  factory TransaksiDTO.fromJson(Map<String, dynamic> json) {
    return TransaksiDTO(
      pelangganId: json['pelangganId'] as String,
      namaPelanggan: json['namaPelanggan'] as String?,
      meja: json['meja'] as int?,
      authorId: json['authorId'] as int,
      shiftId: json['shiftId'] as int,
      status: json['status'] as String,
      total: json['total'] as int,
      deskripsi: json['deskripsi'] as String?,
      totalTambahan: json['totalTambahan'] as String,
      pembayaran: json['pembayaran'] as int,
      metodePembayaran: json['metodePembayaran'] as String,
      kembalian: json['kembalian'] as int,
      detailTransaksi: (json['detailTransaksi'] as List<dynamic>)
          .map((itemJson) => CashierItem.fromJson(itemJson))
          .toList(),
      totalBayar: json['totalBayar'] as int,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'pelangganId': pelangganId,
      'namaPelanggan': namaPelanggan,
      'meja': meja,
      'authorId': authorId,
      'shiftId': shiftId,
      'status': status,
      'total': total,
      'deskripsi': deskripsi,
      'totalTambahan': totalTambahan,
      'pembayaran': pembayaran,
      'metodePembayaran': metodePembayaran,
      'kembalian': kembalian,
      'detailTransaksi': detailTransaksi.map((item) => item.toJson()).toList(),
      'totalBayar': totalBayar,
    };
  }
}
