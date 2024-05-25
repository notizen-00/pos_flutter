import 'package:flutter/material.dart';

class Loader extends StatelessWidget {
  const Loader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircularProgressIndicator(
            semanticsLabel: 'Loading...',
          ),
          SizedBox(height: 16.0), // Menambahkan jarak antara teks dan indikator
          Text('Mohon Tunggu ...'), // Mengubah teks untuk menampilkan pesan yang lebih tepat
        ],
      ),
    );
  }
}
