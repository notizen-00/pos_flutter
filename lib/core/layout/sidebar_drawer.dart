import 'package:blog_app/core/theme/app_pallete.dart';
import 'package:blog_app/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:blog_app/features/auth/presentation/pages/login_page.dart';
import 'package:blog_app/features/transaksi/presentation/bloc/transaksi_bloc.dart';
import 'package:blog_app/features/transaksi/presentation/pages/transaksi_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SidebarDrawer extends StatelessWidget {

  final VoidCallback closeDrawer;

 const SidebarDrawer({required Key key, required this.closeDrawer}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
            decoration: BoxDecoration(
              color: AppPallete.gradient2,
              ),
            child: Text(
              'Tjap Daoen POS',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            
            ),
          ),
          ListTile(
            visualDensity: VisualDensity.adaptivePlatformDensity,
            leading: const Icon(Icons.home,color: Colors.green,),
            title: const Text('Home'),
            onTap: () {
              closeDrawer();
              
            },
          ),
          ListTile(
            visualDensity: VisualDensity.adaptivePlatformDensity,
            leading: const Icon(Icons.work_history,color: Colors.green,),
            title: const Text('Riwayat Transaksi'),
            onTap: (
            ) {
              context.read<TransaksiBloc>().add(TransaksiFetchAllTransaksi());
              Navigator.of(context).push(TransaksiPage.route());
              
            },
          ),
          ListTile(
            visualDensity: VisualDensity.adaptivePlatformDensity,
            leading: const Icon(Icons.settings),
            title: const Text('Pengaturan'),
            onTap: () {
              // Handle the tap here
            },
          ),
          ListTile(
            visualDensity: VisualDensity.adaptivePlatformDensity,
            leading: const Icon(Icons.logout,color: Colors.red,),
            title: const Text('Logout',style: TextStyle(color: Colors.red),),
            onTap: () {
            context.read<AuthBloc>().add(AuthLogout());
                Navigator.of(context).pushAndRemoveUntil(
                  LoginPage.route(),
                  (route) => false,
                );
            },
          ),
        ],
      ),
    );
  }
}
