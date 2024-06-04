import 'package:blog_app/features/product/domain/entities/product.dart';
import 'package:blog_app/features/transaksi/data/dto/transaksi_dto.dart';
import 'package:blog_app/features/transaksi/domain/entitites/transaksi.dart';
import 'package:flutter_test/flutter_test.dart';


void main() {
  group('TransaksiDto', () {
    test('should convert from entity to DTO and back', () {
      // Arrange
      const transaksi = Transaksi(
        id: 1,
        nomorTransaksi: 'TRX/001/20240604',
        pelangganId: null,
        namaPelanggan: 'Ikromi m',
        meja: null,
        authorId: 1,
        shiftId: null,
        status: 'closed',
        total: 40000,
        deskripsi: 'test',
        totalTambahan: null,
        pembayaran: 50000,
        metodePembayaran: 'tunai',
        kembalian: 10000,
        detailTransaksi: [
          DetailTransaksi(
            id: 4,
            transaksiId: 6,
            produkId: 2,
            quantity: 2,
            subtotal: 20000,
            createdAt: '2024-06-04T16:43:16.000000Z',
            updatedAt: '2024-06-04T16:43:16.000000Z',
            produk: Product(
              id: 2,
              nama: 'Es Kopi Susu Creamy',
              kategoriId: 4,
              harga: 10000,
              favorit: 1,
              status: 1,
              deskripsi: 'kosong',
              foto: 'foto_produk/01HYQY030CXTZRWD5PHGEZG4XN.jpg',
              createdAt: '2024-05-25 13:10:47',
              updatedAt:'2024-05-25 13:13:47',
              kategori: Kategori(
                id: 4,
                namaKategori: 'Ice Coffee Milk',
                createdAt:'2024-05-25 13:10:23',
                updatedAt:'2024-05-25 13:10:23',
              ),
            ),
          ),
        ],
        createdAt: '2024-06-04T16:43:16.000000Z',
        updatedAt: '2024-06-04T16:43:16.000000Z',
      );

      // Act
      final dto = TransaksiDto.fromEntity(transaksi);
      final convertedEntity = dto.toEntity();

      // Assert
      expect(convertedEntity, equals(transaksi));
    });

    test('should convert from JSON to DTO and back', () {
      // Arrange
      final json = {
        "id": 6,
        "nomor_transaksi": "TRX/001/20240604",
        "pelanggan_id": null,
        "nama_pelanggan": "Ikromi m",
        "meja": null,
        "author_id": 1,
        "shift_id": null,
        "status": "closed",
        "total": 40000,
        "deskripsi": "test",
        "total_tambahan": null,
        "pembayaran": 50000,
        "metode_pembayaran": "tunai",
        "kembalian": 10000,
        "created_at": "2024-06-04T16:43:16.000000Z",
        "updated_at": "2024-06-04T16:43:16.000000Z",
        "detail_transaksi": [
          {
            "id": 4,
            "transaksi_id": 6,
            "produk_id": 2,
            "quantity": 2,
            "subtotal": 20000,
            "created_at": "2024-06-04T16:43:16.000000Z",
            "updated_at": "2024-06-04T16:43:16.000000Z",
            "produk": {
              "id": 2,
              "nama": "Es Kopi Susu Creamy",
              "kategori_id": 4,
              "harga": 10000,
              "favorit": 1,
              "status": 1,
              "deskripsi": "kosong",
              "foto": "foto_produk/01HYQY030CXTZRWD5PHGEZG4XN.jpg",
              "created_at": "2024-05-25T13:10:47.000000Z",
              "updated_at": "2024-05-25T13:13:47.000000Z",
              "kategori": {
                "id": 4,
                "nama_kategori": "Ice Coffee Milk",
                "created_at": "2024-05-25T13:10:23.000000Z",
                "updated_at": "2024-05-25T13:10:23.000000Z"
              }
            }
          }
        ]
      };

      const expectedTransaksi = Transaksi(
        id: 6,
        nomorTransaksi: 'TRX/001/20240604',
        pelangganId: null,
        namaPelanggan: 'Ikromi m',
        meja: null,
        authorId: 1,
        shiftId: null,
        status: 'closed',
        total: 40000,
        deskripsi: 'test',
        totalTambahan: null,
        pembayaran: 50000,
        metodePembayaran: 'tunai',
        kembalian: 10000,
        detailTransaksi: [
          DetailTransaksi(
            id: 4,
            transaksiId: 6,
            produkId: 2,
            quantity: 2,
            subtotal: 20000,
            createdAt: '2024-06-04T16:43:16.000000Z',
            updatedAt: '2024-06-04T16:43:16.000000Z',
            produk: Product(
              id: 2,
              nama: 'Es Kopi Susu Creamy',
              kategoriId: 4,
              harga: 10000,
              favorit: 1,
              status: 1,
              deskripsi: 'kosong',
              foto: 'foto_produk/01HYQY030CXTZRWD5PHGEZG4XN.jpg',
              createdAt: '2024-05-25T13:10:47.000000Z',
              updatedAt: '2024-05-25T13:13:47.000000Z',
              kategori: Kategori(
                id: 4,
                namaKategori: 'Ice Coffee Milk',
                createdAt:'2024-05-25T13:10:23.000000Z',
                updatedAt:'2024-05-25T13:10:23.000000Z',
              ),
            ),
          ),
        ],
        createdAt: '2024-06-04T16:43:16.000000Z',
        updatedAt: '2024-06-04T16:43:16.000000Z',
      );

      // Act
      final dto = TransaksiDto.fromJson(json);

      final transaksi = dto.toEntity();

      // Assert
      expect(transaksi, equals(expectedTransaksi));
    });
  });
}