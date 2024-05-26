import 'package:blog_app/core/common/widgets/loader.dart';
import 'package:blog_app/core/theme/app_pallete.dart';
import 'package:blog_app/core/utils/show_snackbar.dart';
import 'package:blog_app/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:blog_app/features/auth/presentation/pages/login_page.dart';
import 'package:blog_app/features/product/presentation/bloc/product_bloc.dart';
import 'package:blog_app/features/product/presentation/widgets/product_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductPage extends StatefulWidget {
  static route() => MaterialPageRoute(
        builder: (context) => const ProductPage(),
      );
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  void initState() {
    super.initState();
    context.read<ProductBloc>().add(ProductFetchAllProducts());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Post App'),
      actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () async {
              print('Logged out');
              context.read<AuthBloc>().add(AuthLogout());

              Navigator.of(context).pushAndRemoveUntil(
                LoginPage.route(),
                (route) => false,
              );
            },
          ),
        ],
      ),
      body: BlocConsumer<ProductBloc, ProductState>(
        listener: (context, state) {
          if (state is ProductFailure) {
            print(state.error);
            showSnackBar(context, state.error);
          }
        },
        builder: (context, state) {
          if (state is ProductLoading) {
            return const Loader();
          }
          if (state is ProductsDisplaySuccess) {
            return ListView.builder(
              itemCount: state.product.length,
              itemBuilder: (context, index) {
                print(state.product);
                final product = state.product[index];
                return ProductCard(
                  product: product,
                  color: index % 2 == 0
                      ? AppPallete.gradient1
                      : AppPallete.gradient2,
                );
              },
            );
          }
          return const SizedBox();
        },
      ),
    );
  }
}