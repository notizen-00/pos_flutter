// lib/features/payment/domain/entities/payment.dart
import 'package:equatable/equatable.dart';
import 'package:blog_app/features/cashier/domain/entities/cashier.dart';

class Payment extends Equatable {

  final int totalBayar;
  final int total;
  final int kembalian;
  final Cashier cashier;

  const Payment({
    required this.total,
    required this.kembalian,
    required this.totalBayar,
    required this.cashier,
  });

  @override
  List<Object> get props => [totalBayar, cashier,total,kembalian];
}
