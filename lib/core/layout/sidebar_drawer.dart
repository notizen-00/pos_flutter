import 'package:blog_app/core/theme/app_pallete.dart';
import 'package:blog_app/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:blog_app/features/auth/presentation/pages/login_page.dart';
import 'package:blog_app/features/transaksi/presentation/bloc/transaksi_bloc.dart';
import 'package:blog_app/features/transaksi/presentation/pages/transaksi_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SidebarDrawer extends StatelessWidget {
  final VoidCallback closeDrawer;

  const SidebarDrawer({required Key key, required this.closeDrawer})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final authState = context.read<AuthBloc>().state;
    final namaKasir = authState is AuthSuccess ? authState.user.name : 'kasir';
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: const BoxDecoration(
              color: AppPallete.gradient2,
            ),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const Text(
                'Tjap Daoen POS',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:10),
                child: Text('Kasir : $namaKasir',
                    style: const TextStyle(color: Colors.white54)),
              )
            ]),
          ),
          ListTile(
            visualDensity: VisualDensity.adaptivePlatformDensity,
            leading: const Icon(
              Icons.home,
              color: Colors.green,
            ),
            title: const Text('Home'),
            onTap: () {
              closeDrawer();
            },
          ),
          ListTile(
            visualDensity: VisualDensity.adaptivePlatformDensity,
            leading: const Icon(
              Icons.work_history,
              color: Colors.green,
            ),
            title: const Text('Riwayat Transaksi'),
            onTap: () {
              context.read<TransaksiBloc>().add(TransaksiFetchAllTransaksi());
              Navigator.of(context).push(TransaksiPage.route());
            },
          ),
          ListTile(
            visualDensity: VisualDensity.adaptivePlatformDensity,
            leading: const Icon(
              Icons.bookmark_added_rounded,
              color: Colors.green,
            ),
            title: const Text('Rekap Kas'),
            onTap: () {
              context.read<TransaksiBloc>().add(TransaksiFetchAllTransaksi());
              Navigator.of(context).push(TransaksiPage.route());
            },
          ),
          ListTile(
            visualDensity: VisualDensity.adaptivePlatformDensity,
            leading: const Icon(Icons.settings,color:Colors.green),
            title: const Text('Pengaturan'),
            onTap: () {
              // Handle the tap here
            },
          ),
          ListTile(
            visualDensity: VisualDensity.adaptivePlatformDensity,
            leading: const Icon(
              Icons.logout,
              color: Colors.red,
            ),
            title: const Text(
              'Logout',
              style: TextStyle(color: Colors.red),
            ),
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
