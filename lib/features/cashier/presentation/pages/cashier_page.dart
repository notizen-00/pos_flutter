import 'package:blog_app/core/theme/app_pallete.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CashierPage extends StatelessWidget {
  const CashierPage({super.key,});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> items = [
      // {'name': 'V60', 'price': 'Rp. 13.009', 'quantity': 2},
      // {'name': 'Es Kopi Sussu Creamysss', 'price': 'Rp. 13.000', 'quantity': 2},
      // {'name': 'Jahe', 'price': 'Rp. 10.000', 'quantity': 4},
      // {'name': 'Es Kopi Susu Creamy', 'price': 'Rp. 13.000', 'quantity': 2},
      // {'name': 'Es Kopi Susu Creamy', 'price': 'Rp. 13.000', 'quantity': 2},
    ];

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
                'Ringkasan Order',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
          ),

          // Bagian 2: Detail Produk Checkout (60%)
      Expanded(
  flex: 6,
  child: items.isNotEmpty
      ? 
      DecoratedBox( 
                decoration: const BoxDecoration(
                color: Colors.white10,
                borderRadius: BorderRadius.only(bottomLeft:Radius.circular(20) ,bottomRight: Radius.circular(20)),
                border: Border(top: BorderSide(width: 1)),
              ),
              child:
            ListView.builder(
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
                  item['name'],
                  maxLines: 2,
                  style: const TextStyle(fontSize: 12),
                ),
                subtitle: Text(
                  item['price'],
                  style: const TextStyle(fontSize: 10),
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Qty',
                          style: TextStyle(fontSize: 10),
                        ),
                        Text(
                          item['quantity'].toString(),
                          style: const TextStyle(fontSize: 15),
                        )
                      ],
                    ),
                    const SizedBox(width: 8,),
                    IconButton(
                      icon: const Icon(
                        Icons.delete,
                        color: Colors.red,
                      ),
                    
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            );
          },
        )
              )
      : Container(
        color:Colors.white12,
        child:Center(
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
      )
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
            backgroundColor: AppPallete.primary,
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
