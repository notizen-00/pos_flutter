import 'package:blog_app/core/common/widgets/loader.dart';
import 'package:blog_app/core/layout/sidebar_drawer.dart';
import 'package:blog_app/core/theme/app_pallete.dart';
import 'package:blog_app/core/utils/show_snackbar.dart';
import 'package:blog_app/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:blog_app/features/auth/presentation/pages/login_page.dart';
import 'package:blog_app/features/cashier/presentation/pages/cashier_page.dart';
import 'package:blog_app/features/meja/presentation/pages/meja_page.dart';
import 'package:blog_app/features/product/presentation/bloc/product_bloc.dart';
import 'package:blog_app/features/product/presentation/widgets/product_card.dart';
import 'package:blog_app/features/transaksi/presentation/bloc/transaksi_bloc.dart';
import 'package:blog_app/features/transaksi/presentation/pages/transaksi_saved_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final List categories = [
    'Semua',
    'Favorit',
    'Tidak Tersedia',
  ];

  @override
  void initState() {
    super.initState();
    context.read<ProductBloc>().add(ProductFetchAllProducts());
    context.read<AuthBloc>().add(AuthIsUserLoggedIn());
  }

  void _openDrawer() {
    _scaffoldKey.currentState!.openDrawer();
  }

  void _closeDrawer() {
    Navigator.of(context).pop();
  }

  int _selectedIndex = 0;
  String selectedCategory = 'Semua';

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;

      if (_selectedIndex == 0) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const MejaPage()),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final isWideScreen = MediaQuery.of(context).size.width > 450;

    if (isWideScreen) {
      return Scaffold(
        resizeToAvoidBottomInset: false,
        key: _scaffoldKey,
        appBar: AppBar(
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(Icons.menu_sharp),
                onPressed: _openDrawer,
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              );
            },
          ),
          title: const Text('Tjap Daoen App'),
          shadowColor: Colors.white,
          backgroundColor: Colors.green[700],
          elevation: 1,
          actions: [
            IconButton(
                icon: const Icon(Icons.receipt_long, color: Colors.white),
                onPressed: () {
                   context
                          .read<TransaksiBloc>()
                          .add(TransaksiFetchAllLocalTransaksi());
                          // print('terklik');
                  Navigator.push(
                      context,
                      MaterialPageRoute(

                          builder: (context) => const MejaPage()));
                }),
            BlocBuilder<TransaksiBloc, TransaksiState>(
              builder: (context, state) {
                int transaksiCount = 0;
                if (state is TransaksiLocalDisplaySuccess) {
                  transaksiCount = state.transaksi.length;
                }

                return Badge.count(
                  count: transaksiCount,
                  isLabelVisible: true,
                  // padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                  largeSize: 19,
                  smallSize: 22,
                  textColor: Colors.white,
                  backgroundColor: Colors.black,
                  alignment: Alignment.topLeft,
                  offset: const Offset(5, 4),
                  child: IconButton(
                    icon: const Icon(Icons.shopping_cart_sharp),
                    color: Colors.white,
                    onPressed: () async {
                      context
                          .read<TransaksiBloc>()
                          .add(TransaksiFetchAllLocalTransaksi());
                      Navigator.of(context).push(TransaksiSavedPage.route());
                    },
                  ),
                );
              },
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 1, vertical: 10),
              child: Text(''),
            )
          ],
        ),
        drawer: SidebarDrawer(
          key: GlobalKey(),
          closeDrawer: _closeDrawer,
        ),
        drawerEnableOpenDragGesture: true,
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: DecoratedBox(
                decoration: const BoxDecoration(color: Colors.white12),
                child: BlocBuilder<ProductBloc, ProductState>(
                  builder: (context, state) {
                    if (state is ProductsDisplaySuccess) {
                      return ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: state.kategori
                            .length, // Ganti categories dengan daftar kategori Anda
                        itemBuilder: (context, index) {
                          final category = state.kategori[
                              index]; // Ambil kategori pada indeks tertentu

                          // Return widget untuk setiap kategori
                          return GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedCategory = category;
                              });

                              context
                                  .read<ProductBloc>()
                                  .add(ProductFilter(category.toString()));
                            },
                            child: Container(
                                margin: const EdgeInsets.only(
                                    top: 10,
                                    left: 10,
                                    right: 10,
                                    bottom:
                                        10), // Margin antara setiap kategori
                                padding: const EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  // color: category == selectedCategory ? Colors.green[700] : null,
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const SizedBox(
                                      height: 33,
                                    ),
                                    Text(
                                      category,
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          fontSize: 14,
                                          textBaseline:
                                              TextBaseline.ideographic,
                                          color: category == selectedCategory
                                              ? Colors.green[300]
                                              : Colors.white),
                                    ),
                                  ],
                                )
                                // Tampilkan nama kategori
                                ),
                          );
                        },
                      );
                    }

                    if (state is ProductsFiltered) {
                      return ListView.builder(
                        scrollDirection:
                            Axis.vertical, // Arah scroll horizontal
                        itemCount: state.kategori
                            .length, // Ganti categories dengan daftar kategori Anda
                        itemBuilder: (context, index) {
                          final category = state.kategori[
                              index]; // Ambil kategori pada indeks tertentu

                          // Return widget untuk setiap kategori
                          return GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedCategory = category;
                              });

                              context
                                  .read<ProductBloc>()
                                  .add(ProductFilter(category.toString()));
                            },
                            child: Container(
                                margin: const EdgeInsets.only(
                                    top: 10,
                                    left: 10,
                                    right: 10,
                                    bottom:
                                        10), // Margin antara setiap kategori
                                padding: const EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  // color: category == selectedCategory ? Colors.green[700] : null,
                                  border: Border.all(color: Colors.black),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const SizedBox(
                                      height: 33,
                                    ),
                                    Text(
                                      category,
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          fontSize: 14,
                                          textBaseline:
                                              TextBaseline.ideographic,
                                          color: category == selectedCategory
                                              ? Colors.green[300]
                                              : Colors.white),
                                    ),
                                  ],
                                )
                                // Tampilkan nama kategori
                                ),
                          );
                        },
                      );
                    } else {
                      return const Center(
                        child: Text('Mohon Tunggu ....',
                            style:
                                TextStyle(color: Colors.white, fontSize: 12)),
                      );
                    }
                  },
                ),
              ),
            ),
            const VerticalDivider(thickness: 1, width: 0),
            Expanded(
              flex: 4,
              child: Column(children: [
                const Expanded(
                    flex: 1,
                    child: ColoredBox(
                      color: Colors.white12,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              flex: 4,
                              child: Padding(
                                padding: EdgeInsets.all(12),
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: 'Search...',
                                    hintStyle: TextStyle(color: Colors.white,fontSize: 12),
                                    prefixIcon: Icon(Icons.search),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10.0)),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ]),
                    )),
                Expanded(
                  flex: 9,
                  child: BlocConsumer<ProductBloc, ProductState>(
                    listener: (context, state) {
                      if (state is ProductFailure) {
                        showSnackBar(context, state.error);
                      }

                      if (state is ProductsFiltered) {
                        // showSnackBar(context, "Produk telah difilter");
                      }

                      if (state is ProductAddedToCartSuccess) {
                        showSnackBar(
                            context, "${state.product.nama} added to cart");
                      }
                    },
                    builder: (context, state) {
                      if (state is ProductLoading) {
                        return const Loader();
                      }

                      if (state is ProductsFiltered) {
                        return GridView.builder(
                          shrinkWrap: true,
                          padding: const EdgeInsets.all(20),
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 4),
                          itemCount: state.products.length,
                          itemBuilder: (context, index) {
                            final product = state.products[index];

                            return ProductCard(
                              product: product,
                              color: AppPallete.gradient2,
                            );
                          },
                        );
                      }
                      if (state is ProductsDisplaySuccess) {
                        return GridView.builder(
                          shrinkWrap: true,
                          padding: const EdgeInsets.all(20),
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 4),
                          itemCount: state.products.length,
                          itemBuilder: (context, index) {
                            final product = state.products[index];

                            return ProductCard(
                              product: product,
                              color: AppPallete.gradient2,
                            );
                          },
                        );
                      }
                      return const SizedBox();
                    },
                  ),
                ),
              ]),
            ),
            const VerticalDivider(thickness: 2, width: 4),
            const Expanded(
              flex: 2,
              child: CashierPage(),
            ),
          ],
        ),
      );
    } else {
      return Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(Icons.menu_sharp),
                onPressed: _openDrawer,
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              );
            },
          ),
          title: const Text('Pos App'),
          actions: [
            IconButton(
              icon: const Icon(Icons.logout),
              onPressed: () async {
                context.read<AuthBloc>().add(AuthLogout());

                Navigator.of(context).pushAndRemoveUntil(
                  LoginPage.route(),
                  (route) => false,
                );
              },
            ),
            IconButton(
              icon: const Icon(Icons.shopping_cart_sharp),
              color: Colors.white,
              onPressed: () async {
                Navigator.of(context).push(
                  TransaksiSavedPage.route(),
                );
              },
            ),
          ],
        ),
        drawer: SidebarDrawer(
          key: GlobalKey(),
          closeDrawer: _closeDrawer,
        ),
        drawerEnableOpenDragGesture: true,
        body: BlocConsumer<ProductBloc, ProductState>(
          listener: (context, state) {
            if (state is ProductFailure) {
              showSnackBar(context, state.error);
            }
          },
          builder: (context, state) {
            if (state is ProductLoading) {
              return const Loader();
            }

            if (state is ProductsDisplaySuccess) {
              return ListView.builder(
                itemCount: state.products.length,
                itemBuilder: (context, index) {
                  final product = state.products[index];
                  return ProductCard(
                    product: product,
                    color: Colors.amber,
                  );
                },
              );
            }
            return const SizedBox();
          },
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.table_bar),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.amber[400],
          onTap: _onItemTapped,
        ),
      );
    }
  }
}
