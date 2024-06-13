part of 'cashier_bloc.dart';
abstract class CashierState {
  const CashierState();
}

class CashierInitial extends CashierState {}

class CashierLoading extends CashierState {}

class CashierUpdated extends CashierState {
  final Cashier cashier;

  const CashierUpdated(this.cashier);
}


class CashierFailure extends CashierState {
  final String message;

  const CashierFailure(this.message);

}
