import 'package:blog_app/core/utils/format_rupiah.dart';
import 'package:blog_app/features/cashier/domain/entities/cashier.dart';
import 'package:blog_app/features/cashier/presentation/bloc/cashier_bloc.dart';
import 'package:blog_app/features/transaksi/domain/entitites/transaksi.dart';
import 'package:blog_app/features/transaksi/domain/usecases/delete_transaksi.dart';
import 'package:blog_app/features/transaksi/presentation/bloc/transaksi_bloc.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class TransaksiSavedPage extends StatelessWidget {
  const TransaksiSavedPage({super.key});

  static Route<dynamic> route() {
    return MaterialPageRoute(builder: (context) => const TransaksiSavedPage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Riwayat Transaksi'),
        backgroundColor: Colors.green,
      ),
      body: BlocBuilder<TransaksiBloc, TransaksiState>(
        builder: (context, state) {
          if (state is TransaksiLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is TransaksiLocalDisplaySuccess) {
            // Group transaksi by date
            final groupedTransaksi = groupBy(
              state.transaksi,
              (transaksi) => DateTime(transaksi.createdAt.year,
                  transaksi.createdAt.month, transaksi.createdAt.day),
            );
            final sortedDates = groupedTransaksi.keys.toList()
              ..sort((a, b) => b.compareTo(a));
            return ListView.builder(
              itemCount: groupedTransaksi.length,
              itemBuilder: (context, index) {
                final date = sortedDates[index];
                final transaksiList = groupedTransaksi[date]!;
                final count = transaksiList.length;

                return ExpansionTile(
                  initiallyExpanded: true,
                  trailing: Text(
                    '$count Transaksi',
                    style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white54),
                  ),
                  title: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      DateFormat.yMMMd()
                          .format(date)
                          .toString(), // Menampilkan tanggal di atas tile
                      style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white54),
                    ),
                  ),
                  children: transaksiList.map((transaksi) {
                    return Slidable(
                      closeOnScroll: false,
                      key: ValueKey(transaksi.deskripsi),
                      startActionPane: ActionPane(
                        motion: const ScrollMotion(),
                        children: [
                          SlidableAction(
                            flex: 1,
                            onPressed: (value) {
                              context.read<TransaksiBloc>().add(TransaksiDelete(
                                  transaksi: SingleTransaksi(
                                      status: 'open',
                                      createdAt: DateTime.now(),
                                      updatedAt: DateTime.now(),
                                      deskripsi: transaksi.deskripsi)));
                            },
                            backgroundColor: const Color(0xFFFE4A49),
                            foregroundColor: Colors.white,
                            icon: Icons.delete,
                            label: 'Delete',
                          ),
                          SlidableAction(
                            flex: 2,
                            onPressed: (value){
                              // context.read<CashierBloc>().add(
                              //   ResetCashier()
                              // );

                              // context.read<CashierBloc>().add(
                              //   UpdateCashierFromTransaksi(transaksi.cashier)
                              // );

                              context.read<TransaksiBloc>().add(
                                TransaksiUpdateLocal(
                                  transaksi: SingleTransaksi(meja:transaksi.meja,namaPelanggan: transaksi.namaPelanggan,pelangganId: transaksi.pelangganId,authorId: transaksi.authorId,shiftId: transaksi.shiftId,total:transaksi.total,deskripsi: transaksi.deskripsi,createdAt: DateTime.now(),updatedAt: DateTime.now(),status: 'open'),
                                  items:transaksi.cashier
                                )
                              );
                              print('klik');

                              Navigator.of(context).pop();
                              
                              
                            },
                            backgroundColor: const Color(0xFF21B7CA),
                            foregroundColor: Colors.white,
                            icon: Icons.read_more,
                            label: 'Lihat',
                          ),
                        ],
                      ),
                      child: GestureDetector(
                        onTap: () {
                          _showDetailModal(context, transaksi);
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white12,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          margin: const EdgeInsets.symmetric(vertical: 5),
                          padding: const EdgeInsets.all(10),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        transaksi.deskripsi.toString(),
                                        style: const TextStyle(fontSize: 12),
                                      ),
                                      const SizedBox(height: 5),
                                      Text(
                                        formatRupiah(transaksi.total),
                                        style: const TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                    flex: 1,
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          const Text('Status',
                                              style: TextStyle(fontSize: 12)),
                                          Text(
                                            transaksi.status,
                                            style: const TextStyle(
                                              fontSize: 17,
                                              fontWeight: FontWeight.w900,
                                            ),
                                          ),
                                        ])),
                                Expanded(
                                    flex: 1,
                                    child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          const Icon(Icons.schedule),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 10),
                                            child: Text(
                                              '${DateFormat.Hm().format(transaksi.createdAt)} WIB',
                                              style: const TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w300,
                                              ),
                                            ),
                                          ),
                                        ])),
                              ]),
                        ),
                      ),
                    );
                  }).toList(),
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

  void doNothing(BuildContext context) {}

  void _showDetailModal(BuildContext context, TransaksiLocal transaksi) {
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
              Text(DateFormat.Hms().format(transaksi.createdAt)),
              const SizedBox(height: 16),
              const Text(
                'Detail Produk:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              ...transaksi.cashier.map((detail) {
                return ListTile(
                  title: Text(detail.product.nama),
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
}
