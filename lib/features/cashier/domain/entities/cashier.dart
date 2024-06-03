import 'package:blog_app/features/payment/domain/entitites/payment.dart';
import 'package:blog_app/features/product/domain/entities/product.dart';
import 'package:equatable/equatable.dart';

class Cashier extends Equatable {
  final List<CashierItem> items;

  const Cashier({required this.items});

    int get totalHarga {
  
    return items.fold(0, (total, item) {

      return total + (item.product.harga * item.quantity);
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

  @override
  List<Object> get props => [items];
}


class CashierItem extends Equatable {
  final Product product;
  final int quantity;
  final int subtotal;


  const CashierItem({
    required this.product,
    this.quantity = 0,
    this.subtotal = 0
  });

  CashierItem copyWith({
    Product? product,
    int? quantity,
    int? subtotal
  }) {
    return CashierItem(
      product: product ?? this.product,
      quantity: quantity ?? this.quantity,
      subtotal: subtotal ?? this.subtotal,
    );
  }

  @override
  List<Object> get props => [product.id, quantity,subtotal];
}