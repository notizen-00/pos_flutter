// lib/features/transaction/domain/entities/transaction.dart
import 'package:blog_app/features/payment/domain/entitites/payment.dart';
import 'package:equatable/equatable.dart';
import 'package:blog_app/features/cashier/domain/entities/cashier.dart';

class Transaction extends Equatable {
  final Payment payment;
  final int totalHarga;
  final List<CashierItem> items;

  
  const Transaction({
    required this.payment,
    required this.items,
    required this.totalHarga,
  });

  @override
  List<Object> get props => [payment, items,totalHarga];
}
