part of 'product_bloc.dart';

abstract class ProductState {
  const ProductState();

}

class ProductInitial extends ProductState {}

class ProductLoading extends ProductState {}

class ProductsDisplaySuccess extends ProductState {
  final List<Product> products;
  const ProductsDisplaySuccess({
    required this.products,
  });

}

class ProductAddedToCartSuccess extends ProductState {
  final Product product;

  ProductAddedToCartSuccess(this.product);
}


class ProductFailure extends ProductState {
  final String error;

  const ProductFailure(String message, {required this.error});

}
