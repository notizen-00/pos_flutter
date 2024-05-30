import 'package:blog_app/core/usecase/usecase.dart';
import 'package:blog_app/features/product/domain/entities/product.dart';
import 'package:blog_app/features/product/domain/usecases/get_all_products.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'product_event.dart';
part 'product_state.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {

  final GetAllProducts _getAllProducts;
  ProductBloc({

    required GetAllProducts getAllProducts,
  })  : 
    _getAllProducts = getAllProducts,

    super(ProductInitial()) {
    on<ProductEvent>((event, emit) => emit(ProductLoading()));
    on<ProductFetchAllProducts>(_onFetchAllProducts);
    on<ProductSelected>(_onProductSelect);
  }

  void _onProductSelect(
    ProductSelected event,
    Emitter<ProductState> emit,
  ) async {
    try {
      // Assuming `cartRepository` is accessible
      print(event.product);
      emit(ProductAddedToCartSuccess(event.product));
    } catch (e) {
      emit(ProductFailure(e.toString(), error: 'add_to_cart_failed'));
    }
  }




void _onFetchAllProducts(
  ProductFetchAllProducts event,
  Emitter<ProductState> emit,
) async {
  final res = await _getAllProducts(NoParams());

  res.fold(
    (l) => emit(ProductFailure(l.message, error: 'errorr')),
    (r) {
      if (r.isEmpty) {
        emit(const ProductFailure('No products available', error: 'empty'));
      } else {
        emit(ProductsDisplaySuccess(products: r));
      }
    },
  );
}


}

