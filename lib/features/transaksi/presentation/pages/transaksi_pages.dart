import 'package:blog_app/core/utils/format_date.dart';
import 'package:blog_app/core/utils/format_rupiah.dart';
import 'package:blog_app/features/transaksi/domain/entitites/transaksi.dart';
import 'package:blog_app/features/transaksi/presentation/bloc/transaksi_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TransaksiPage extends StatelessWidget {
  const TransaksiPage({super.key});

  static Route<dynamic> route() {
    return MaterialPageRoute(builder: (context) => const TransaksiPage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Transaksi Page'),
      ),
      body: BlocBuilder<TransaksiBloc, TransaksiState>(
        builder: (context, state) {
          if (state is TransaksiLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is TransaksiDisplaySuccess) {
            return ListView.builder(
              itemCount: state.transaksi.length,
              itemBuilder: (context, index) {
                final transaksi = state.transaksi[index];
                return Container(
                  color:Colors.white12,
                  margin: const EdgeInsets.only(top: 10, left: 10, right: 10),
                  alignment: Alignment.topLeft,
                  child: ListTile(
                    splashColor: Colors.red,
                    selectedColor: Colors.red,
                    focusColor: Colors.blue,
                    title: Text(transaksi.metodePembayaran,style: const TextStyle(fontSize: 12),),
                    subtitle: Text(
                        formatRupiah(transaksi.total),
                        style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                        ),
                    onTap: () {
                      _showDetailModal(context, transaksi);
                    },
                  ),
                );
              },
            );
          } else if (state is TransaksiFailure) {
            return Center(child: Text('Error: ${state.error}'));
          } else {
            return const Center(child: Text('No transactions available.'));
          }
        },
      ),
    );
  }
}

void _showDetailModal(BuildContext context, Transaksi transaksi) {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return Padding(
        padding: const EdgeInsets.all(0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Detail Transaksi',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 26),
            Text('Nomor Transaksi: ${transaksi.nomorTransaksi}'),
            Text('Nama Pelanggan: ${transaksi.namaPelanggan ?? 'No Name'}'),
            Text('Total: ${transaksi.total}'),
            Text('Status: ${transaksi.status}'),
            Text('Deskripsi: ${transaksi.deskripsi ?? 'No Description'}'),
            const SizedBox(height: 16),
            const Text(
              'Detail Produk:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            ...transaksi.detailTransaksi.map((detail) {
              return ListTile(
                title: Text(detail.produk.nama),
                subtitle: Text(
                    'Quantity: ${detail.quantity}, Subtotal: ${detail.subtotal}'),
              );
            }),
          ],
        ),
      );
    },
  );
}
