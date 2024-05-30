part of 'product_bloc.dart';

abstract class ProductEvent  {
  const ProductEvent();
}

class ProductFetchAllProducts extends ProductEvent {}

class ProductSelected extends ProductEvent {
  final Product product;

  ProductSelected(this.product);
}
