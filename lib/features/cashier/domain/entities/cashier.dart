import 'package:blog_app/features/product/domain/entities/product.dart';
import 'package:equatable/equatable.dart';

class Cashier extends Equatable {
  final List<CashierItem> items;

  const Cashier({required this.items});

    int get totalHarga {
    // Menggunakan reduce untuk menjumlahkan harga produk dalam keranjang
    return items.fold(0, (total, item) {
      // Menjumlahkan harga produk dengan kuantitasnya
      return total + (int.parse(item.product.harga) * item.quantity);
    });
  }
  
  @override
  List<Object> get props => [items];
}


class CashierItem extends Equatable {
  final Product product;
  final int quantity;

  const CashierItem({
    required this.product,
    this.quantity = 0, // Mengatur default quantity menjadi 0
  });

  CashierItem copyWith({
    Product? product,
    int? quantity,
  }) {
    return CashierItem(
      product: product ?? this.product,
      quantity: quantity ?? this.quantity,
    );
  }

  @override
  List<Object> get props => [product, quantity];
}