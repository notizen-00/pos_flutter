import 'package:blog_app/core/theme/app_pallete.dart';
import 'package:flutter/material.dart';

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
            leading: const Icon(Icons.home),
            title: const Text('Home'),
            onTap: () {
              closeDrawer();
              
            },
          ),
          ListTile(
            visualDensity: VisualDensity.adaptivePlatformDensity,
            leading: const Icon(Icons.person),
            title: const Text('Profile'),
            onTap: () {
      
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
            leading: const Icon(Icons.help),
            title: const Text('Help & Feedback'),
            onTap: () {
              // Handle the tap here
            
            },
          ),
        ],
      ),
    );
  }
}
