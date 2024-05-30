import 'package:blog_app/features/cashier/presentation/bloc/cashier_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CashierPage extends StatelessWidget {
  const CashierPage({super.key,});

  @override
  Widget build(BuildContext context) {
  

    return Container(
      padding: const EdgeInsets.all(1),
      color: Colors.black12,
      height: MediaQuery.of(context).size.height,
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
                    final items = state.cashier.products;
                    return items.isNotEmpty
                        ? DecoratedBox(
                            decoration: const BoxDecoration(
                              color: Colors.white10,
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(20),
                                  bottomRight: Radius.circular(20)),
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
                                      item.nama,
                                      maxLines: 2,
                                      style: const TextStyle(fontSize: 12),
                                    ),
                                    subtitle: Text(
                                      'Rp. ${item.harga}',
                                      style: const TextStyle(fontSize: 10),
                                    ),
                                    trailing: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        const Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                             Text(
                                              'Qty',
                                              style: TextStyle(fontSize: 10),
                                            ),
                                             Text(
                                              '0',
                                              style:  TextStyle(fontSize: 15),
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
                                            // context.read<CartBloc>().add(RemoveProductFromCart(item));
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
                                  const Icon(Icons.info, size: 48, color: Colors.grey),
                                  const SizedBox(height: 15),
                                  const Text(
                                    'Data kasir kosong',
                                    style: TextStyle(fontSize: 16, color: Colors.grey),
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
                  } else {
                    return const SizedBox.shrink();
                  }
                },
              ),
            ),

          // Bagian 3: Subtotal dan Tombol Bayar (30%)
   Expanded(
  flex: 3,
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.end,
    children: [
      Expanded(
        child: ElevatedButton(
          onPressed: () {
            // Logika untuk menyimpan
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.amber[800],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text('Simpan',style: TextStyle(color:Colors.white)),
          ),
        ),
      ),
      const SizedBox(width: 8),
      Expanded(
        child: ElevatedButton(
          onPressed: () {
            // Logika untuk membayar
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green[800] ,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(vertical: 10,horizontal: 30),
            child: Text('Bayar',style: TextStyle(color:Colors.white)),
          ),
        ),
      ),
    ],
  ),
),

        ],
      ),
    );
  }
}
