import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key}); // <-- must be const + super.key

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Register")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: const InputDecoration(labelText: "Full Name"),
            ),
            const SizedBox(height: 12),
            TextField(
              decoration: const InputDecoration(labelText: "Email"),
            ),
            const SizedBox(height: 12),
            TextField(
              obscureText: true,
              decoration: const InputDecoration(labelText: "Password"),
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                // TODO: Hook with Serverpod register endpoint
              },
              child: const Text("Register"),
            ),
          ],
        ),
      ),
    );
  }
}
