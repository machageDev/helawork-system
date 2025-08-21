import 'package:flutter/material.dart';
import '../../controllers/auth_controller.dart';
import '../login_screen.dart';

class ProfileScreen extends StatelessWidget {
  final AuthController auth;

  const ProfileScreen({super.key, required this.auth});

  @override
  Widget build(BuildContext context) {
    final user = auth.currentUser;

    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: const CircleAvatar(child: Icon(Icons.person)),
            title: Text(user?.name ?? 'User'),
            subtitle: Text(user?.email ?? ''),
          ),
          const SizedBox(height: 20),
          ElevatedButton.icon(
            icon: const Icon(Icons.logout),
            label: const Text('Logout'),
            style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
            onPressed: () {
              auth.logout();
              Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(builder: (_) => const LoginScreen()),
                (route) => false,
              );
            },
          )
        ],
      ),
    );
  }
}
