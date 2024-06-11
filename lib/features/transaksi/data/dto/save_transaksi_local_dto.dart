import 'package:blog_app/features/cashier/data/dto/cashier_dto.dart';
import 'package:blog_app/features/cashier/domain/entities/cashier.dart';
import 'package:blog_app/features/product/data/dto/product_dto.dart';
import 'package:blog_app/features/product/domain/entities/product.dart';
import 'package:blog_app/features/transaksi/domain/entitites/transaksi.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'save_transaksi_local_dto.freezed.dart';
part 'save_transaksi_local_dto.g.dart';


class ProductConverter implements JsonConverter<Product, Map<String, dynamic>> {
  const ProductConverter();

  @override
  Product fromJson(Map<String, dynamic> json) {
    // Implement logic to deserialize Product from json
    final produk = ProductDto.fromJson(json);

    return produk.toEntity();
  }

  @override
  Map<String, dynamic> toJson(Product product) {
    // Implement logic to serialize Product to json
    final produk = ProductDto.fromEntity(product).toJson();
    return produk;
  }
}
@freezed
class SaveTransaksiLocalDto with _$SaveTransaksiLocalDto {
  const factory SaveTransaksiLocalDto({
    @JsonKey(name: 'transaksi') required TransaksiDataLocal transaksiData,
    @JsonKey(name: 'cashier') required List<CashierItemDto> cashier,
  }) = _SaveTransaksiLocalDto;

  factory SaveTransaksiLocalDto.fromJson(Map<String, dynamic> json) => _$SaveTransaksiLocalDtoFromJson(json);

  factory SaveTransaksiLocalDto.fromEntity(SingleTransaksi transaksi, List<CashierItem> items) {
    return SaveTransaksiLocalDto(
      transaksiData: TransaksiDataLocal(
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
        createdAt: transaksi.createdAt,
        updatedAt: transaksi.updatedAt,
      ),
      cashier: items.map((item) => CashierItemDto.fromEntity(item)).toList(),
    );
  }

}


@freezed
class TransaksiDataLocal with _$TransaksiDataLocal {
  const factory TransaksiDataLocal({
    @JsonKey(name: 'pelanggan_id') int? pelangganId,
    @JsonKey(name: 'nama_pelanggan') String? namaPelanggan,
    @JsonKey(name: 'meja') int? meja,
    @JsonKey(name: 'author_id') int? authorId,
    @JsonKey(name: 'shift_id') int? shiftId,
    @JsonKey(name: 'status')  String? status,
    @JsonKey(name: 'total')  int? total,
    @JsonKey(name: 'deskripsi') String? deskripsi,
    @JsonKey(name: 'total_tambahan') int? totalTambahan,
    @JsonKey(name: 'pembayaran')  int? pembayaran,
    @JsonKey(name: 'metode_pembayaran') String? metodePembayaran,
    @JsonKey(name: 'kembalian') int? kembalian,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
  }) = _TransaksiDataLocal;

  factory TransaksiDataLocal.fromJson(Map<String, dynamic> json) => _$TransaksiDataLocalFromJson(json);
}

@freezed
class SaveDetailTransaksiLocalDto with _$SaveDetailTransaksiLocalDto {
  const factory SaveDetailTransaksiLocalDto({
    @JsonKey(name: 'produk_id') required int produkId,
    @ProductConverter() @JsonKey(name: 'produk') required Product produk,
    @JsonKey(name: 'quantity') required int quantity,
    @JsonKey(name: 'subtotal') required int subtotal,
  }) = _SaveDetailTransaksiLocalDto;

  factory SaveDetailTransaksiLocalDto.fromJson(Map<String, dynamic> json) => _$SaveDetailTransaksiLocalDtoFromJson(json);

  factory SaveDetailTransaksiLocalDto.fromCashierItem(CashierItem item) {
    return SaveDetailTransaksiLocalDto(
      produkId: item.product.id,
      produk:item.product,
      quantity: item.quantity,
      subtotal: item.subtotal,
    );
  }
  
  
}

extension SaveTransaksiLocalDtoToTransaksiLocal on SaveTransaksiLocalDto {
  TransaksiLocal toTransaksiLocal() {
    return TransaksiLocal(
      pelangganId: transaksiData.pelangganId,
      namaPelanggan: transaksiData.namaPelanggan,
      meja: transaksiData.meja,
      authorId: transaksiData.authorId ?? 0, // Default value if authorId is null
      shiftId: transaksiData.shiftId,
      status: transaksiData.status ?? '', // Default value if status is null
      total: transaksiData.total ?? 0, // Default value if total is null
      deskripsi: transaksiData.deskripsi,
      totalTambahan: transaksiData.totalTambahan,
      pembayaran: transaksiData.pembayaran,
      metodePembayaran: transaksiData.metodePembayaran,
      kembalian: transaksiData.kembalian,
      createdAt: transaksiData.createdAt,
      updatedAt: transaksiData.updatedAt,
      cashier: cashier.map((dto) => dto.toEntity()).toList(),
  
    );
  }
}













