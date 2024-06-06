import 'package:blog_app/core/usecase/usecase.dart';
import 'package:blog_app/features/product/domain/entities/product.dart';
import 'package:blog_app/features/product/domain/usecases/get_all_products.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'product_event.dart';
part 'product_state.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final GetAllProducts _getAllProducts;
  late ProductsDisplaySuccess _allProducts; // Menyimpan produk awal
  List<String> _kategori = [];
  ProductsFiltered? _filteredProducts; // Menyimpan produk yang sudah difilter
  


  ProductBloc({
    required GetAllProducts getAllProducts,
  })  : 
    _getAllProducts = getAllProducts,
    super(ProductInitial()) {
      on<ProductFetchAllProducts>(_onFetchAllProducts);
      on<ProductSelected>(_onProductSelect);
      on<ProductFilter>(_onProductFilter);
  }

  void _onProductSelect(
    ProductSelected event,
    Emitter<ProductState> emit,
  ) async {
    try {
      emit(ProductSelection(selectedProductIds: {event.product.id.toString()}));
    } catch (e) {
      emit(ProductFailure(e.toString(), error: 'add_to_cart_failed'));
    }
  }

  void _onProductFilter(
    ProductFilter event,
    Emitter<ProductState> emit,
  ) async {
    final currentState = state;

    if (currentState is ProductsDisplaySuccess) {
      if (event.categoryName == 'Favorit') {
        final filteredProducts = _allProducts.products.where((product) => product.favorit == 1).toList();
        _filteredProducts = ProductsFiltered(products: filteredProducts,kategori:_kategori);
        emit(_filteredProducts!); // Emit state produk yang sudah difilter
      } else if (event.categoryName == 'Semua') {
        emit(_allProducts); // Emit kembali produk awal
      }else{

        final filteredProducts = _allProducts.products.where((product) => product.kategori.namaKategori == event.categoryName).toList();
        _filteredProducts = ProductsFiltered(products: filteredProducts,kategori:_kategori);
        emit(_filteredProducts!); // Emit state produk yang sudah difilter
      }
    }

    if(currentState is ProductsFiltered){
      if (event.categoryName == 'Semua') {
      emit(_allProducts);
    } else if (event.categoryName == 'Favorit') {
      final filteredProducts = _allProducts.products.where((product) => product.favorit == 1).toList();
      _filteredProducts = ProductsFiltered(products: filteredProducts, kategori: _kategori);
      emit(_filteredProducts!); // Emit state produk yang sudah difilter
    } else {
      final filteredProducts = _allProducts.products.where((product) => product.kategori.namaKategori == event.categoryName).toList();
      _filteredProducts = ProductsFiltered(products: filteredProducts, kategori: _kategori);
      emit(_filteredProducts!); // Emit state produk yang sudah difilter
    }

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
          _kategori = _extractUniqueCategories(r);
          _allProducts = ProductsDisplaySuccess(products: r,kategori:_kategori); // Simpan produk awal
          
          emit(_allProducts);
        }
      },
    );
  }

 List<String> _extractUniqueCategories(List<Product> products) {
  Set<String> uniqueCategories = {}; // Membuat set untuk kategori unik

  // Menambahkan 'Semua' dan 'Favorit' ke dalam set
  uniqueCategories.add('Semua');
  uniqueCategories.add('Favorit');

  // Menambahkan kategori produk ke dalam set
  for (Product product in products) {
    uniqueCategories.add(product.kategori.namaKategori);
  }

  // Mengonversi set menjadi list dan mengembalikannya
  return uniqueCategories.toList();
}

}