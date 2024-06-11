import 'package:blog_app/core/config/config.dart';
import 'package:blog_app/core/utils/format_rupiah.dart';
import 'package:blog_app/features/cashier/presentation/bloc/cashier_bloc.dart';
import 'package:blog_app/features/product/domain/entities/product.dart';
// import 'package:blog_app/features/product/presentation/bloc/product_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  final Color color;
  const ProductCard({
    super.key,
    required this.product,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    final String imageApiUrl =
        product.foto != '' ? Config.assetUrl + product.foto : '';
    return GestureDetector(
      onTap: () {
        // Navigator.push(context, BlogViewerPage.route(blog));
        context.read<CashierBloc>().add(AddProductToCashier(product));
        // context.read<ProductBloc>().add(ProductSelected(product));
        // ScaffoldMessenger.of(context).showSnackBar(
        //   SnackBar(
        //     content: Text('${product.nama} ditambahkan ke list cashier' ),
        //   ),
        // );  
      },
      child: Container(
          height: 10,
          margin: const EdgeInsets.all(4).copyWith(
            bottom: 1,
          ),
          padding: const EdgeInsets.all(1),
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: product.foto != ''
                    ? Image.network(imageApiUrl,
                        width: double.infinity,
                        height: double.infinity,
                        fit: BoxFit.cover)
                    : const Image(
                        image: AssetImage('assets/images/placeholder.png')),
              ),
              Positioned.fill(
                  top: 90,
                  child: Container(
                    padding: const EdgeInsets.all(0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.black.withOpacity(0.6)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        BlocBuilder<CashierBloc, CashierState>(
                          builder: (context, state) {
                            if (state is CashierUpdated) {
                              final isSelected = state.cashier.items.any(
                                  (selectedProduct) =>
                                      selectedProduct.product.id == product.id);
                              if (isSelected) {
                                final item = state.cashier.items.firstWhere(
                                    (item) => item.product.id == product.id);
                                return Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    IconButton(
                                      icon: const Icon(Icons.remove),
                                      onPressed: () {
                                        context.read<CashierBloc>().add(DecrementQuantity(product));
                                      },
                                        
                                    ),
                                    DecoratedBox(
                                      decoration: BoxDecoration(
                                        color: Colors.amber[700],
                                        shape: BoxShape.circle,
                                      ),
                                      child: Padding(
                                        padding:const EdgeInsets.all(10),
                                        child: Text(
                                          item.quantity.toString(),
                                          style: const TextStyle(
                                            fontSize: 16,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                    IconButton(
                                      icon: const Icon(Icons.add),
                                      onPressed: () {
                                        context.read<CashierBloc>().add(IncrementQuantity(product));
                                      },
                                    ),
                                  ],
                                );
                              } else {
                                return Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      product.nama,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: const TextStyle(
                                        fontSize: 10,
                                        letterSpacing: 0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      formatRupiah(product.harga),
                                      style: const TextStyle(
                                        fontSize: 8,
                                        color: Colors.white70,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                );
                              }
                            } else {
                              return Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    product.nama,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                      fontSize: 10,
                                      letterSpacing: 0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    formatRupiah(product.harga),
                                    style: const TextStyle(
                                      fontSize: 10,
                                      color: Colors.white70,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              );
                            }
                          },
                        ),
                      ],
                    ),
                  )),
              product.favorit == 1
                  ? Positioned(
                      top: 0,
                      right: 0,
                      child: IconButton(
                        icon: const Icon(Icons.star, color: Colors.amber),
                        onPressed: () {},
                      ))
                  : Positioned(
                      top: 0,
                      right: 0,
                      child: IconButton(
                        icon: const Icon(Icons.star, color: Colors.white),
                        onPressed: () {},
                      ))
            ],
          )),
    );
  }
}