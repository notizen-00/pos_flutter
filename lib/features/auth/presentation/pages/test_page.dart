import 'package:blog_app/core/utils/token_manager.dart';
import 'package:blog_app/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:blog_app/init_dependencies.dart';
import 'package:flutter/material.dart';
import 'package:blog_app/features/auth/presentation/pages/login_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


  class TestPage extends StatelessWidget {
  const TestPage({super.key});

  @override
  Widget build(BuildContext context) {
    final tokenManager = serviceLocator<TokenManager>(); // Dapatkan instance dari service locator

    return Scaffold(
      appBar: AppBar(
        title: const Text('Pos App'),
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
      body: Center(
        child: FutureBuilder<String?>(
          future: tokenManager.getToken(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator();
            } else if (snapshot.hasError) {
              return const Text('Error loading token');
            } else if (!snapshot.hasData || snapshot.data == null) {
              return const Text('No token found');
            } else {
              return Text(
                'Token: ${snapshot.data}',
                style: const TextStyle(color: Colors.amber),
              );
            }
          },
        ),
      ),
    );
  }

  static Route<Object?> route() {
    return MaterialPageRoute(
      builder: (context) => const TestPage(),
    );
  }
}
