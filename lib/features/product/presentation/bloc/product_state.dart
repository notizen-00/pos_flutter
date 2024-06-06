part of 'product_bloc.dart';

abstract class ProductState {
  const ProductState();
}

class ProductInitial extends ProductState {}

class ProductLoading extends ProductState {}

class ProductsDisplaySuccess extends ProductState {
  final List<Product> products;
  final List<String> kategori;
  const ProductsDisplaySuccess({
    required this.products,
    required this.kategori
  });

}

class ProductsKategori extends ProductState{
  final List<String> kategori;

  const ProductsKategori({
    required this.kategori,
  });
}
class ProductsFiltered extends ProductState{
  final List<Product> products;
   final List<String> kategori;
  const ProductsFiltered({
    required this.products,
    required this.kategori
  });
}

class ProductAddedToCartSuccess extends ProductState {
  final Product product;

  ProductAddedToCartSuccess(this.product);
}

class ProductSelection extends ProductState {
  final Set<String> selectedProductIds;

  const ProductSelection({required this.selectedProductIds});
}

class ProductFailure extends ProductState {
  final String error;

  const ProductFailure(String message, {required this.error});

}
