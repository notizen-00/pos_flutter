import 'package:blog_app/features/product/data/dto/product_dto.dart';
// import 'package:blog_app/features/product/data/dto/product_dto_extension.dart';
import 'package:blog_app/features/transaksi/domain/entitites/transaksi.dart';
import 'package:freezed_annotation/freezed_annotation.dart';


part 'transaksi_dto.freezed.dart';
part 'transaksi_dto.g.dart';

@freezed
class TransaksiDto with _$TransaksiDto {
  const factory TransaksiDto({
    required int id,
    @JsonKey(name:'nomor_transaksi') required String nomorTransaksi,
    @JsonKey(name:'pelanggan_id') String? pelangganId,
    @JsonKey(name:'nama_pelanggan') String? namaPelanggan,
    int? meja,
    @JsonKey(name:'author_id') required int authorId,
    @JsonKey(name:'shift_id') int? shiftId,
    required String status,
    required int total,
    String? deskripsi,
    @JsonKey(name:'total_tambahan') int? totalTambahan,
    required int pembayaran,
    @JsonKey(name:'metode_pembayaran') required String metodePembayaran,
    required int kembalian,
    @JsonKey(name:'detail_transaksi') required List<DetailTransaksiDto> detailTransaksi,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
  }) = _TransaksiDto;

  factory TransaksiDto.fromJson(Map<String, dynamic> json) => _$TransaksiDtoFromJson(json);

  factory TransaksiDto.fromEntity(Transaksi transaksi) {
    return TransaksiDto(
      id: transaksi.id,
      nomorTransaksi: transaksi.nomorTransaksi,
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
      detailTransaksi: transaksi.detailTransaksi.map((detail) => DetailTransaksiDto.fromEntity(detail)).toList(),
      createdAt: transaksi.createdAt,
      updatedAt: transaksi.updatedAt,
    );
  }
}

@freezed
class SingleTransaksiDto with _$SingleTransaksiDto {
  const factory SingleTransaksiDto({
    required int id,
    @JsonKey(name:'nomor_transaksi') required String nomorTransaksi,
    @JsonKey(name:'pelanggan_id') String? pelangganId,
    @JsonKey(name:'nama_pelanggan') String? namaPelanggan,
    int? meja,
    @JsonKey(name:'author_id') required int authorId,
    @JsonKey(name:'shift_id') int? shiftId,
    required String status,
    required int total,
    String? deskripsi,
    @JsonKey(name:'total_tambahan') int? totalTambahan,
    required int pembayaran,
    @JsonKey(name:'metode_pembayaran') required String metodePembayaran,
    required int kembalian,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
  }) = _SingleTransaksiDto;

  factory SingleTransaksiDto.fromJson(Map<String, dynamic> json) => _$SingleTransaksiDtoFromJson(json);

  factory SingleTransaksiDto.fromEntity(SingleTransaksi transaksi) {
    return SingleTransaksiDto(
      id: transaksi.id,
      nomorTransaksi: transaksi.nomorTransaksi,
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
    );
  }
}


@freezed
class DetailTransaksiDto with _$DetailTransaksiDto {
  const factory DetailTransaksiDto({
    required int id,
    @JsonKey(name:'transaksi_id') required int transaksiId,
    @JsonKey(name:'produk_id') required int produkId,
    required int quantity,
    required int subtotal,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
    required ProductDto produk,
  }) = _DetailTransaksiDto;

  factory DetailTransaksiDto.fromJson(Map<String, dynamic> json) => _$DetailTransaksiDtoFromJson(json);

  factory DetailTransaksiDto.fromEntity(DetailTransaksi detailTransaksi) {
    return DetailTransaksiDto(
      id: detailTransaksi.id,
      transaksiId: detailTransaksi.transaksiId,
      produkId: detailTransaksi.produkId,
      quantity: detailTransaksi.quantity,
      subtotal: detailTransaksi.subtotal,
      createdAt: detailTransaksi.createdAt,
      updatedAt: detailTransaksi.updatedAt,
      produk: ProductDto.fromEntity(detailTransaksi.produk),
    );
  }
}

extension DetailTransaksiDtoX on DetailTransaksiDto {
  DetailTransaksi toEntity() {
    return DetailTransaksi(
      id: id,
      transaksiId: transaksiId,
      produkId: produkId,
      quantity: quantity,
      subtotal: subtotal,
      createdAt: createdAt ?? '',
      updatedAt: updatedAt ?? '',
      produk: produk.toEntity(),
    );
  }
}

extension TransaksiDtoX on TransaksiDto {
  Transaksi toEntity() {
    return Transaksi(
      id: id,
      nomorTransaksi: nomorTransaksi,
      pelangganId: pelangganId,
      namaPelanggan: namaPelanggan,
      meja: meja,
      authorId: authorId,
      shiftId: shiftId,
      status: status,
      total: total,
      deskripsi: deskripsi,
      totalTambahan: totalTambahan,
      pembayaran: pembayaran,
      metodePembayaran: metodePembayaran,
      kembalian: kembalian,
      detailTransaksi: detailTransaksi.map((detail) => detail.toEntity()).toList(),
      createdAt: createdAt ?? '',
      updatedAt: updatedAt ?? '',
    );
  }
}

extension SingleTransaksiDtoX on SingleTransaksiDto {
  SingleTransaksi toEntity() {
    return SingleTransaksi(
      id: id,
      nomorTransaksi: nomorTransaksi,
      pelangganId: pelangganId,
      namaPelanggan: namaPelanggan,
      meja: meja,
      authorId: authorId,
      shiftId: shiftId,
      status: status,
      total: total,
      deskripsi: deskripsi,
      totalTambahan: totalTambahan,
      pembayaran: pembayaran,
      metodePembayaran: metodePembayaran,
      kembalian: kembalian,
      createdAt: createdAt ?? '',
      updatedAt: updatedAt ?? '',
    );
  }
}