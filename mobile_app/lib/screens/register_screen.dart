import 'package:flutter/material.dart';
import 'package:helawork_client/src/protocol/client.dart';
import 'package:helawork_flutter/services/helawork_service.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key, required Client client});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _fullNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _roleController = TextEditingController(); // or use a dropdown

  String _errorMessage = "";

  Future<void> _register() async {
    final user = await HelaWorkService.register(
      fullName: _fullNameController.text.trim(),
      email: _emailController.text.trim(),
      password: _passwordController.text.trim(),
      role: _roleController.text.trim(), // e.g. "worker" / "employer"
    );

    if (user != null) {
      Navigator.pushReplacementNamed(context, '/dashboard');
    } else {
      setState(() {
        _errorMessage = "Registration failed. Try again.";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Register")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: _fullNameController,
              decoration: const InputDecoration(labelText: "Full Name"),
            ),
            TextField(
              controller: _emailController,
              decoration: const InputDecoration(labelText: "Email"),
            ),
            TextField(
              controller: _passwordController,
              decoration: const InputDecoration(labelText: "Password"),
              obscureText: true,
            ),
            TextField(
              controller: _roleController,
              decoration: const InputDecoration(labelText: "Role (worker/employer)"),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _register,
              child: const Text("Register"),
            ),
            if (_errorMessage.isNotEmpty)
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text(
                  _errorMessage,
                  style: const TextStyle(color: Colors.red),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
