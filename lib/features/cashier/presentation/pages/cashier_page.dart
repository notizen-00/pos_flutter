import 'package:blog_app/core/utils/format_rupiah.dart';
import 'package:blog_app/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:blog_app/features/cashier/presentation/bloc/cashier_bloc.dart';
import 'package:blog_app/features/payment/presentation/pages/payment_pages.dart';
import 'package:blog_app/features/transaksi/domain/entitites/transaksi.dart';
import 'package:blog_app/features/transaksi/presentation/bloc/transaksi_bloc.dart';

import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class CashierPage extends StatelessWidget {
  const CashierPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(1),
      color: Colors.black12,
      height: MediaQuery.of(context).size.height,
      child: BlocListener<TransaksiBloc, TransaksiState>(
        listener: (context, state) {
          if (state is TransaksiSaveSuccess) {
            ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                    duration: const Duration(milliseconds: 1000),
                                    backgroundColor: Colors.greenAccent,
                                    closeIconColor: Colors.white,
                                    showCloseIcon: true,
                                    content: Text(
                                      'Transaksi dengan nomor ${state.transaksi.deskripsi} Berhasil di Simpan',
                                      style: const TextStyle(color: Colors.white),
                                    ),
                                  ),
                                );
            context.read<CashierBloc>().add(ResetCashier());
            context.read<TransaksiBloc>().add(TransaksiFetchAllLocalTransaksi());
          }else if (state is TransaksiUpdated){
                ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                    duration: const Duration(milliseconds: 1000),
                                    backgroundColor: Colors.green,
                                    closeIconColor: Colors.white,
                                    showCloseIcon: true,
                                    content: Text(
                                      'Silahkan Update Transaksi ${state.transaksi.deskripsi} ',
                                      style: const TextStyle(color: Colors.white),
                                    ),
                                  ),
                                );
          }else{
            print(state);
          }
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Bagian 1: Ringkasan Order (10%)
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
              child: const Center(
                child: Text(
                  'Ringkasan Orders',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
            ),

            // Bagian 2: Detail Produk Checkout (60%)
            Expanded(
              flex: 6,
              child: BlocBuilder<CashierBloc, CashierState>(
                builder: (context, state) {
                  if (state is CashierLoading) {
                    return const Center(child: CircularProgressIndicator());
                  } else if (state is CashierUpdated) {
                    print('now updated');
                    final items = state.cashier.items;
                    return items.isNotEmpty
                        ? DecoratedBox(
                            decoration: const BoxDecoration(
                              color: Colors.white10,
                              border: Border(top: BorderSide(width: 1)),
                            ),
                            child: ListView.builder(
                              padding: const EdgeInsets.only(top: 20),
                              itemCount: items.length,
                              itemBuilder: (BuildContext context, int index) {
                                final item = items[index];
                                return DecoratedBox(
                                  decoration: const BoxDecoration(
                                    color: Colors.white12,
                                    border: Border(top: BorderSide(width: 1)),
                                  ),
                                  child: ListTile(
                                    focusColor: Colors.white,
                                    selectedColor: Colors.white,
                                    leading: const Icon(Icons.coffee),
                                    selected: true,
                                    visualDensity: VisualDensity.comfortable,
                                    title: Text(
                                      item.product.nama,
                                      maxLines: 2,
                                      style: const TextStyle(fontSize: 12),
                                    ),
                                    subtitle: Text(
                                      formatRupiah(item.subtotal),
                                      style: const TextStyle(fontSize: 10),
                                    ),
                                    trailing: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const Text(
                                              'Qty',
                                              style: TextStyle(fontSize: 10),
                                            ),
                                            Text(
                                              item.quantity.toString(),
                                              style:
                                                  const TextStyle(fontSize: 15),
                                            )
                                          ],
                                        ),
                                        const SizedBox(width: 8),
                                        IconButton(
                                          icon: const Icon(
                                            Icons.delete,
                                            color: Colors.red,
                                          ),
                                          onPressed: () {
                                            context.read<CashierBloc>().add(
                                                RemoveProductFromCashier(
                                                    item.product));
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            ),
                          )
                        : Container(
                            color: Colors.white12,
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Icon(Icons.info,
                                      size: 48, color: Colors.grey),
                                  const SizedBox(height: 15),
                                  const Text(
                                    'Data Kasir kosong',
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.grey),
                                  ),
                                  const SizedBox(height: 10),
                                  ElevatedButton(
                                    onPressed: () {
                                      // Logika untuk memilih produk
                                    },
                                    child: const Text('Pilih Produk'),
                                  ),
                                ],
                              ),
                            ),
                          );
                  } else if (state is CashierFailure) {
                    return Center(child: Text('Error: ${state.message}'));
                  } else if (state is CashierInitial) {
                    context.read<AuthBloc>().add(AuthIsUserLoggedIn());
                    return Container(
                      color: Colors.white12,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(Icons.info,
                                size: 48, color: Colors.grey),
                            const SizedBox(height: 15),
                            const Text(
                              'Data Kasir kosong',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.grey),
                            ),
                            const SizedBox(height: 10),
                            ElevatedButton(
                              onPressed: () {
                                // Logika untuk memilih produk
                              },
                              child: const Text('Pilih Produk'),
                            ),
                          ],
                        ),
                      ),
                    );
                  } else {
                    return const Center(child: Text('Error: '));
                  }
                },
              ),
            ),
            Expanded(
              flex: 2,
              child: Stack(
                children: [
                  // BoxDecoration yang memenuhi ruang vertikal
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.green[800],
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(0),
                          topRight: Radius.circular(70)),
                    ),
                    // Placeholder untuk subtotal
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: BlocBuilder<CashierBloc, CashierState>(
                        builder: (context, state) {
                          if (state is CashierUpdated) {
                            final authState = context.read<AuthBloc>().state;
                            String username = '';
                            if (authState is AuthSuccess) {
                              username = authState.user.name;
                            }
                            return ListTile(
                              dense: true,
                              title: Text(
                                  'Total: ${formatRupiah(state.cashier.totalHarga)}'),
                              subtitle: Text('Kasir : $username'),
                            );
                          } else if (state is CashierInitial) {
                            final authState = context.read<AuthBloc>().state;
                            String username = '';
                            if (authState is AuthSuccess) {
                              username = authState.user.name;
                            }
                            return ListTile(
                              dense: true,
                              title: const Text('Total : Rp. 0'),
                              subtitle: Text('Kasir : $username'),
                            );
                          } else {
                            return const SizedBox.shrink();
                          }
                        },
                      ),
                    ),
                  ),
                  // Tombol Simpan dan Bayar di atas BoxDecoration
                  Positioned(
                    bottom: 0, // Menempatkan widget di bawah BoxDecoration
                    left: 0, // Menempatkan widget di kiri BoxDecoration
                    right: 0, // Menempatkan widget di kanan BoxDecoration
                    child: Padding(
                      padding: const EdgeInsets.all(2),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          // Tombol Simpan

                          ElevatedButton.icon(
                            icon: const Icon(Icons.save),
                            label: const Text('simpan'),
                            onPressed: () {
                              final cashierState =
                                context.read<CashierBloc>().state;
                              
                              final authState = context.read<AuthBloc>().state;
                              if (cashierState is CashierUpdated) {
                                final singleTransaksis = SingleTransaksi(
                                  id: 0,
                                  nomorTransaksi:
                                      '', // Gunakan nomor transaksi acak
                                  pelangganId: 0,
                                  namaPelanggan: '',
                                  meja: 0,
                                  authorId: authState is AuthSuccess
                                      ? int.parse(authState.user.id)
                                      : 0,
                                  shiftId: 0,
                                  status: 'open',
                                  total: cashierState.cashier.totalHarga,
                                  deskripsi: '',
                                  totalTambahan: 0,
                                  pembayaran: 0,
                                  metodePembayaran: '',
                                  kembalian: 0,
                                  createdAt:
                                      DateTime.now(), // Atur waktu pembuatan sesuai kebutuhan
                                  updatedAt:
                                      DateTime.now(), // Atur waktu pembaruan sesuai kebutuhan
                                );
                                
                                context.read<TransaksiBloc>().add(TransaksiSave(
                                    transaksi: singleTransaksis,
                                    items: cashierState.cashier.items));
                              
                                // Kirim peristiwa SaveTransaksi bersama dengan transaksi yang baru dibuat ke TransaksiBloc
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    duration: Duration(milliseconds: 1000),
                                    backgroundColor: Colors.redAccent,
                                    closeIconColor: Colors.white,
                                    showCloseIcon: true,
                                    content: Text(
                                      'Silakan isi data transaksi terlebih dahulu!',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                );
                              }
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.amber[800],
                              foregroundColor: Colors.white,
                              elevation: 10,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                          ),

                          const SizedBox(width: 8),

                          ElevatedButton.icon(
                            icon: const Icon(Icons.payment),
                            label: const Text('bayar'),
                            onPressed: () {
                              final cashierState =
                                  context.read<CashierBloc>().state;
                              if (cashierState is CashierUpdated) {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => BayarPage(
                                      cashier: cashierState.cashier,
                                    ),
                                  ),
                                );
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    duration: Duration(milliseconds: 1000),
                                    backgroundColor: Colors.redAccent,
                                    closeIconColor: Colors.white,
                                    showCloseIcon: true,
                                    content: Text(
                                      'Silakan isi data transaksi terlebih dahulu!',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                );
                              }
                              // Logika untuk menyimpan
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue[800],
                              foregroundColor: Colors.white,
                              elevation: 10,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
