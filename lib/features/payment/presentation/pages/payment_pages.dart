import 'package:blog_app/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:blog_app/features/cashier/presentation/bloc/cashier_bloc.dart';
import 'package:blog_app/features/payment/presentation/bloc/payment_bloc.dart';
import 'package:blog_app/features/payment/presentation/bloc/payment_event.dart';
import 'package:blog_app/features/payment/presentation/bloc/payment_state.dart';
import 'package:blog_app/features/payment/presentation/widget/payment_method.dart';
import 'package:blog_app/features/transaksi/domain/entitites/transaksi.dart';
import 'package:blog_app/features/transaksi/presentation/bloc/transaksi_bloc.dart';
import 'package:flutter/material.dart';
import 'package:blog_app/features/cashier/domain/entities/cashier.dart';
import 'package:blog_app/core/utils/format_rupiah.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class BayarPage extends StatefulWidget {
  final Cashier cashier;

  const BayarPage({
    super.key,
    required this.cashier,
  });

  @override
  _BayarPageState createState() => _BayarPageState();
}

class _BayarPageState extends State<BayarPage> {
  final TextEditingController paymentController = TextEditingController();
  bool isButtonVisible = false;
  Metode selectedMethod = Metode.tunai;

  int roundToNearestIndonesianCurrency(int amount) {
    const int startingAmount = 5000;
    const int endingAmount = 300000;
    const int step = 5000;
    List<int> indonesianCurrencies = [];
    for (int i = startingAmount; i <= endingAmount; i += step) {
      indonesianCurrencies.add(i);
    }
    int roundedAmount = indonesianCurrencies
        .firstWhere((currency) => currency >= amount, orElse: () => 0);
    return roundedAmount;
  }

  @override
  void initState() {
    super.initState();
    paymentController.addListener(_updateButtonVisibility);
  }

  @override
  void dispose() {
    paymentController.removeListener(_updateButtonVisibility);
    paymentController.dispose();
    super.dispose();
  }

  void _updateButtonVisibility() {
    setState(() {
      isButtonVisible = paymentController.text.isNotEmpty;
    });
  }

  void _onPaymentMethodChanged(Metode method) {
    setState(() {
      selectedMethod = method;
    });
  }

  void _setPaymentAmount(int amount) {
    paymentController.text = amount.toString();
  }


  void _showPaymentSuccessModal(BuildContext context, int totalBayar, int total,
      int kembalian, String metodePembayaran) {
    showDialog(
      barrierColor: Colors.green[100],
      context: context,
      builder: (BuildContext context) {
        final cashierState = context.read<CashierBloc>().state;
        final authState = context.read<AuthBloc>().state;
        final transaksiState = context.read<TransaksiBloc>().state;
        final int userID =
            authState is AuthSuccess ? int.tryParse(authState.user.id) ?? 0 : 0;
        final status = cashierState is CashierUpdated
            ? cashierState.cashier.items.isEmpty
                ? 'open'
                : 'closed'
            : '';
        
        print(transaksiState is TransaksiUpdated ? 'anda benar' : 'salah woy');
        final SingleTransaksi updatedTransaksi = SingleTransaksi(
            id: 1,
            authorId: userID,
            createdAt: DateTime.now(),
            updatedAt: DateTime.now(),
            total: total,
            pembayaran: totalBayar,
            kembalian: kembalian,
            meja:transaksiState is TransaksiUpdated ? transaksiState.transaksi.meja ?? transaksiState.transaksi.meja : 0,
            namaPelanggan: transaksiState is TransaksiUpdated ? transaksiState.transaksi.namaPelanggan ?? transaksiState.transaksi.namaPelanggan : '',
            metodePembayaran: metodePembayaran,
            status: status
            );
        // Dispatch the updated transaction event
        // context
        //     .read<TransaksiBloc>()
        //     .add(TransaksiUpdate(transaksi: updatedTransaksi));

        return  PopScope(
          canPop: false,
          child: AlertDialog(
                    title: const Text('Pembayaran Berhasil'),
                    content: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Total Bayar: ${formatRupiah(totalBayar)}'),
                        Text('Total: ${formatRupiah(total)}'),
                        Text('Kembalian: ${formatRupiah(kembalian)}'),
                        Text('Metode Pembayaran: $metodePembayaran'),
                        if (authState is AuthSuccess) ...[
                          Text('ID Kasir: ${authState.user.id}'),
                          Text('Nama Cashier: ${authState.user.name}'),
                        ] else ...[
                          const Text('kasir tidak login'),
                        ],
                        if (cashierState is CashierUpdated) ...[
                          Text('ID Cashier: ${cashierState.cashier.items.toString()}'),
                        ] else ...[
                          const Text('Loading...'), 
                        ]
                      ],
                    ),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () {
                        
                          context.read<PaymentBloc>().add(
                                PaymentEvent.updatePayment(
                                  totalBayar: 0,
                                  total: total,
                                  kembalian: 0,
                                  metodePembayaran: selectedMethod.name,
                                ),
                              );
                        },
                
                        child: const Text('Kembali'),
                      ),
                      TextButton(
                        onPressed: () {
                          if (cashierState is CashierUpdated) {
                         
                            context.read<TransaksiBloc>().add(
                              TransaksiSave(
                                transaksi: updatedTransaksi,
                                items: cashierState.cashier.items
                                ));
                          }
                        },
                        child: const Text('Simpan'),
                      ),
                    ],
                  ),
        )
        ;
      
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final totalHarga = widget.cashier.totalHarga;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Pembayaran'),
      ),
      body: MultiBlocListener(
        listeners: [
          BlocListener<PaymentBloc, PaymentState>(
            listener: (context, state) {
              state.when(
                initial: () {},
                updated: (totalBayar, total, kembalian, metodePembayaran) {
                  
                  if(totalBayar == 0 && kembalian == 0 ){
                    Navigator.of(context).pop(true);
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Silahkan Update Pembayaran')),
                    );
                  }else{
                      _showPaymentSuccessModal(
                      context, totalBayar, total, kembalian, metodePembayaran);
                  }

                
                },
                failure: (message) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Error: ')),
                  );
                },
              );
            },
          ),
          BlocListener<TransaksiBloc, TransaksiState>(
            listener: (context, state) {
              final transaksiState = context.read<TransaksiBloc>().state;
              if (transaksiState is TransaksiSaveSuccess) {
                final String nomorTransaksi =
                    transaksiState.transaksi.nomorTransaksi ?? 'No Transaction';

                Future.delayed(Duration.zero, () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('$nomorTransaksi Berhasil Di simpan'),
                    ),
                  );
                });

                context.read<CashierBloc>().add(ResetCashier());
                context
                    .read<PaymentBloc>()
                    .add(const PaymentEvent.paymentReset());
                Navigator.of(context).pop();
                Navigator.of(context).pop();
              }

              if (transaksiState is TransaksiFailure) {
                Future.delayed(Duration.zero, () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(transaksiState.error),
                    ),
                  );
                });
              }
            },
          ),
        ],
        child: BlocBuilder<PaymentBloc, PaymentState>(
          builder: (context, state) {
            return Container(
              color: Colors.grey[50],
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'TOTAL',
                      style: TextStyle(color: Colors.black45),
                    ),
                    Text(
                      formatRupiah(totalHarga),
                      style:
                          const TextStyle(fontSize: 49, color: Colors.black87),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 20),
                      child: Row(
                        children: [
                          const Text(
                            'METODE PEMBAYARAN',
                            style: TextStyle(color: Colors.black45),
                          ),
                          const SizedBox(width: 20),
                          PaymentMethod(
                              onSelectionChanged: _onPaymentMethodChanged),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: GridView.count(
                        shrinkWrap: true,
                        crossAxisCount: 6,
                        mainAxisSpacing: 90,
                        crossAxisSpacing: 20,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 80, top: 20),
                            child: ElevatedButton(
                              onPressed: () => _setPaymentAmount(totalHarga),
                              style: ElevatedButton.styleFrom(
                                textStyle: const TextStyle(fontSize: 15),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                              child: const Text('Uang Pas'),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 80, top: 20),
                            child: ElevatedButton(
                              onPressed: () {
                                _setPaymentAmount(
                                    roundToNearestIndonesianCurrency(
                                        totalHarga));
                                final int payment =
                                    int.tryParse(paymentController.text) ?? 0;
                                final int kembalian = payment - totalHarga;

                                context
                                    .read<PaymentBloc>()
                                    .add(PaymentEvent.updatePayment(
                                      totalBayar: payment,
                                      total: totalHarga,
                                      kembalian: kembalian,
                                      metodePembayaran: selectedMethod.name,
                                    ));
                              },
                              style: ElevatedButton.styleFrom(
                                foregroundColor: Colors.white,
                                textStyle: const TextStyle(fontSize: 14),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                              child: Text(formatRupiah(
                                  roundToNearestIndonesianCurrency(
                                      totalHarga))),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 80, top: 20),
                            child: ElevatedButton(
                              onPressed: () {
                                _setPaymentAmount(
                                    roundToNearestIndonesianCurrency(
                                        totalHarga * 2));

                                final int payment =
                                    int.tryParse(paymentController.text) ?? 0;
                                final int kembalian = payment - totalHarga;

                                context
                                    .read<PaymentBloc>()
                                    .add(PaymentEvent.updatePayment(
                                      totalBayar: payment,
                                      total: totalHarga,
                                      kembalian: kembalian,
                                      metodePembayaran: selectedMethod.name,
                                    ));
                              },
                              style: ElevatedButton.styleFrom(
                                foregroundColor: Colors.white,
                                textStyle: const TextStyle(fontSize: 14),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                              child: Text(formatRupiah(
                                  roundToNearestIndonesianCurrency(
                                      totalHarga * 2))),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 80, top: 20),
                            child: ElevatedButton(
                              onPressed: () {
                                _setPaymentAmount(
                                    roundToNearestIndonesianCurrency(
                                        totalHarga * 3));

                                final int payment =
                                    int.tryParse(paymentController.text) ?? 0;
                                final int kembalian = payment - totalHarga;

                                context
                                    .read<PaymentBloc>()
                                    .add(PaymentEvent.updatePayment(
                                      totalBayar: payment,
                                      total: totalHarga,
                                      kembalian: kembalian,
                                      metodePembayaran: selectedMethod.name,
                                    ));
                              },
                              style: ElevatedButton.styleFrom(
                                foregroundColor: Colors.white,
                                textStyle: const TextStyle(fontSize: 14),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                              child: Text(formatRupiah(
                                  roundToNearestIndonesianCurrency(
                                      totalHarga * 3))),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 300),
                      child: TextField(
                        style: const TextStyle(color: Colors.black),
                        controller: paymentController,
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          labelText: 'Jumlah Lain',
                          floatingLabelStyle: TextStyle(color: Colors.green),
                          labelStyle: TextStyle(
                            color: Color.fromARGB(255, 169, 204, 170),
                          ),
                          contentPadding: EdgeInsets.all(20),
                          border: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.red, width: 1),
                          ),
                          fillColor: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            );
          },
        ),
      ),
      bottomNavigationBar: isButtonVisible
          ? BottomAppBar(
              color: Colors.white12,
              child: Padding(
                padding: const EdgeInsets.all(1.0),
                child: ElevatedButton(
                  onPressed: () {
                    final int payment =
                        int.tryParse(paymentController.text) ?? 0;
                    final int kembalian = payment - totalHarga;

                    context.read<PaymentBloc>().add(PaymentEvent.updatePayment(
                          totalBayar: payment,
                          total: totalHarga,
                          kembalian: kembalian,
                          metodePembayaran: selectedMethod.name,
                        ));
                  },
                  child: const Text('Bayar'),
                ),
              ),
            )
          : const SizedBox(),
    );
  }
}
