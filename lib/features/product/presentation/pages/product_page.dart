import 'package:blog_app/core/common/widgets/loader.dart';
import 'package:blog_app/core/layout/sidebar_drawer.dart';
import 'package:blog_app/core/theme/app_pallete.dart';
import 'package:blog_app/core/utils/show_snackbar.dart';
import 'package:blog_app/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:blog_app/features/auth/presentation/pages/login_page.dart';
import 'package:blog_app/features/product/presentation/bloc/product_bloc.dart';
import 'package:blog_app/features/product/presentation/widgets/product_card.dart';
import 'package:flutter/cupertino.dart';
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

  @override
  void initState() {
    super.initState();
    context.read<ProductBloc>().add(ProductFetchAllProducts());
  }

    void _openDrawer() {
    _scaffoldKey.currentState!.openDrawer();
  }

  void _closeDrawer() {
    Navigator.of(context).pop();
  }

    int _selectedIndex = 0;


  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {

    final isWideScreen = MediaQuery.of(context).size.width > 450;

    if(isWideScreen) {

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
              onPressed: () async {},
            ),
          ],
        ),
        drawer: SidebarDrawer(
          key: GlobalKey(),
          closeDrawer: _closeDrawer,
        ),
        drawerEnableOpenDragGesture: true,
        body: Row(
          children: <Widget>[
            NavigationRail(
              groupAlignment: 1.0,
              selectedIndex: _selectedIndex,
              onDestinationSelected: _onItemTapped,
              labelType: NavigationRailLabelType.selected,
              destinations: const [
                NavigationRailDestination(
                  icon: Icon(Icons.home),
                  label: Text('Home'),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.person),
                  label: Text('Profile'),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.settings),
                  label: Text('Settings'),
                ),
              ],
            ),
            const VerticalDivider(thickness: 1, width: 1),
            Expanded(
              child: BlocConsumer<ProductBloc, ProductState>(
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
                      itemCount: state.product.length,
                      itemBuilder: (context, index) {
                        final product = state.product[index];
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
          ],
        ),
      );

    }else{
      return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
                icon: const Icon(Icons.menu_sharp),
                onPressed:_openDrawer ,
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
    
            },
          ),
        ],
      ),
      drawer: SidebarDrawer(
          key:GlobalKey(),
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
    
              itemCount: state.product.length,
              itemBuilder: (context, index) {
                final product = state.product[index];
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
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
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

