import 'package:blog_app/features/payment/domain/entitites/payment.dart';
import 'package:blog_app/features/product/domain/entities/product.dart';
import 'package:blog_app/features/transaksi/domain/entitites/transaksi.dart';
import 'package:equatable/equatable.dart';

class Cashier extends Equatable {
  final List<CashierItem> items;

  const Cashier({required this.items});

    int get totalHarga {
  
    return items.fold(0, (total, item) {

      return total + (int.parse(item.product.harga) * item.quantity);
    });
  }

  Payment initiatePayment() {
    return Payment(
      kembalian:0,
      total: totalHarga,
      totalBayar:0,
      cashier: this,
    );
  }

  Transaction createTransaction() {
    final payment = initiatePayment();
    return Transaction(payment: payment, items: items,totalHarga:totalHarga);
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