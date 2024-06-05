// ignore: file_names
import 'package:blog_app/features/product/domain/entities/product.dart';
import 'package:blog_app/features/transaksi/data/dto/transaksi_dto.dart';
import 'package:blog_app/features/transaksi/domain/entitites/transaksi.dart';

void main(){
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
      final person = TransaksiDto.fromEntity(transaksi).copyWith(authorId: 1);
      print(person.status);
      final convertedEntity = dto.toEntity();

}