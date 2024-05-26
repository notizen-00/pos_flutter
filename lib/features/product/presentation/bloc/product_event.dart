part of 'product_bloc.dart';

@immutable
sealed class ProductEvent {}


final class DetailProduct extends ProductEvent {
  final int id;

  DetailProduct({
    required this.id
  });
}

final class ProductFetchAllProducts extends ProductEvent {}
