import 'package:flutter/material.dart';

class ProductTabs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // Jumlah tab yang ingin ditampilkan
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Products'),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Meja'),
              Tab(text: 'Amount'),
              Tab(text: 'Pelanggan'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            // Tambahkan widget untuk setiap tab di sini
            Center(child: Text('Tab 1')),
            Center(child: Text('Tab 2')),
            Center(child: Text('Tab 3')),
          ],
        ),
      ),
    );
  }
}
