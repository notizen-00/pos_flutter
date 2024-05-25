// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:blog_app/features/product/domain/entities/product.dart';
void main() {
    String nama_produk = 'aqua';


    Product u1 = Product(nama_produk:nama_produk,harga_produk: 10,status_produk: 0,deskripsi_produk: '',foto_produk: '');
    Product u2 = Product(nama_produk:'aqua',harga_produk: 10,status_produk: 0,deskripsi_produk: '',foto_produk: '');

    print(u1 == u2);
}
