import 'package:blog_app/features/cashier/domain/entities/cashier.dart';
import 'package:blog_app/features/transaksi/domain/entitites/transaksi.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'save_transaksi_dto.freezed.dart';
part 'save_transaksi_dto.g.dart';

@freezed
class SaveTransaksiDto with _$SaveTransaksiDto {
  const factory SaveTransaksiDto({
    @JsonKey(name: 'transaksi') required TransaksiData transaksiData,
    @JsonKey(name: 'detail_transaksi') required List<SaveDetailTransaksiDto> detailTransaksi,
  }) = _SaveTransaksiDto;

  factory SaveTransaksiDto.fromJson(Map<String, dynamic> json) => _$SaveTransaksiDtoFromJson(json);

  factory SaveTransaksiDto.fromEntity(SingleTransaksi transaksi, List<CashierItem> items) {
    return SaveTransaksiDto(
      transaksiData: TransaksiData(
        pelangganId: transaksi.pelangganId,
        namaPelanggan: transaksi.namaPelanggan,
        meja: transaksi.meja,
        authorId: transaksi.authorId,
        shiftId: transaksi.shiftId,
        status: transaksi.status,
        total: transaksi.total,
        deskripsi: transaksi.deskripsi,
        totalTambahan: transaksi.totalTambahan,
        pembayaran: transaksi.pembayaran,
        metodePembayaran: transaksi.metodePembayaran,
        kembalian: transaksi.kembalian,
        createdAt:transaksi.createdAt,
        updatedAt:transaksi.updatedAt
      ),
      detailTransaksi: items.map((item) => SaveDetailTransaksiDto.fromCashierItem(item)).toList(),
    );
  }

}


@freezed
class TransaksiData with _$TransaksiData {
  const factory TransaksiData({
    @JsonKey(name: 'pelanggan_id') int? pelangganId,
    @JsonKey(name: 'nama_pelanggan') String? namaPelanggan,
    @JsonKey(name: 'meja') int? meja,
    @JsonKey(name: 'author_id') int? authorId,
    @JsonKey(name: 'shift_id') int? shiftId,
    @JsonKey(name: 'status')  required String status,
    @JsonKey(name: 'total')  int? total,
    @JsonKey(name: 'deskripsi') String? deskripsi,
    @JsonKey(name: 'total_tambahan') int? totalTambahan,
    @JsonKey(name: 'pembayaran')  int? pembayaran,
    @JsonKey(name: 'metode_pembayaran') String? metodePembayaran,
    @JsonKey(name: 'kembalian') int? kembalian,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') required DateTime updatedAt
  }) = _TransaksiData;

  factory TransaksiData.fromJson(Map<String, dynamic> json) => _$TransaksiDataFromJson(json);
}

@freezed
class SaveDetailTransaksiDto with _$SaveDetailTransaksiDto {
  const factory SaveDetailTransaksiDto({
    @JsonKey(name: 'produk_id') required int produkId,
    @JsonKey(name: 'quantity') required int quantity,
    @JsonKey(name: 'subtotal') required int subtotal,
  }) = _SaveDetailTransaksiDto;

  factory SaveDetailTransaksiDto.fromJson(Map<String, dynamic> json) => _$SaveDetailTransaksiDtoFromJson(json);

  factory SaveDetailTransaksiDto.fromCashierItem(CashierItem item) {
    return SaveDetailTransaksiDto(
      produkId: item.product.id,
      quantity: item.quantity,
      subtotal: item.subtotal,
    );
  }
  
}








