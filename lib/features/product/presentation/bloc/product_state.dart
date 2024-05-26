part of 'product_bloc.dart';

@immutable
sealed class ProductState {}

final class ProductInitial extends ProductState {}

final class ProductLoading extends ProductState {}

final class ProductFailure extends ProductState {
  final String error;
  ProductFailure(this.error);
}

final class ProductDetailSuccess extends ProductState {}

final class ProductsDisplaySuccess extends ProductState {
  final List<Product> product;
  ProductsDisplaySuccess(this.product);
}