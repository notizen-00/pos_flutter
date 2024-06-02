part of 'cashier_bloc.dart';

abstract class CashierEvent extends Equatable {
  const CashierEvent();

  @override
  List<Object> get props => [];
}

class AddProductToCashier extends CashierEvent {
  final Product product;

  const AddProductToCashier(this.product);
}
class IncrementQuantity extends CashierEvent {
  final Product product;
  const IncrementQuantity(this.product);
}
class ResetCashier extends CashierEvent {}

class DecrementQuantity extends CashierEvent {
  final Product product;
  const DecrementQuantity(this.product);
}
class RemoveProductFromCashier extends CashierEvent {
  final Product product;

  const RemoveProductFromCashier(this.product);
}
