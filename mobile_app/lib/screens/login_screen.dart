import 'package:flutter/material.dart';
import 'package:helawork_client/src/protocol/client.dart';
import '../services/auth_service.dart'; 

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key, required Client client});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _isLoading = false;
  String? _errorMessage;

  Future<void> _login() async {
    setState(() {
      _isLoading = true;
      _errorMessage = null;
    });

    final email = _emailController.text.trim();
    final password = _passwordController.text.trim();

    try {
      final user = await AuthService.login(email, password);

      if (user != null) {
        // Navigate to Dashboard
        Navigator.pushReplacementNamed(context, '/dashboard');
      } else {
        setState(() {
          _errorMessage = "Invalid email or password";
        });
      }
    } catch (e) {
      setState(() {
        _errorMessage = "Something went wrong. Please try again.";
      });
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0F1115),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 40),
              const Text(
                "HelaWork",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 6),
                height: 2,
                width: 40,
                color: Colors.blue,
              ),
              const SizedBox(height: 10),
              const Text(
                "Welcome Back",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              const SizedBox(height: 40),

              // Email Field
              Align(
                alignment: Alignment.centerLeft,
                child: const Text(
                  "Email",
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),
              ),
              const SizedBox(height: 6),
              TextField(
                controller: _emailController,
                decoration: InputDecoration(
                  hintText: "Enter your email",
                  filled: true,
                  fillColor: const Color(0xFF1C1F24),
                  hintStyle: const TextStyle(color: Colors.grey),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide.none,
                  ),
                ),
                style: const TextStyle(color: Colors.white),
              ),
              const SizedBox(height: 20),

              // Password Field
              Align(
                alignment: Alignment.centerLeft,
                child: const Text(
                  "Password",
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),
              ),
              const SizedBox(height: 6),
              TextField(
                controller: _passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Enter your password",
                  filled: true,
                  fillColor: const Color(0xFF1C1F24),
                  hintStyle: const TextStyle(color: Colors.grey),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide.none,
                  ),
                ),
                style: const TextStyle(color: Colors.white),
              ),
              const SizedBox(height: 25),

              // Login Button
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: _isLoading ? null : _login,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: _isLoading
                      ? const CircularProgressIndicator(
                          color: Colors.white,
                        )
                      : const Text(
                          "Login",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                ),
              ),
              const SizedBox(height: 20),

              // Forgot Password
              TextButton(
                onPressed: () {},
                child: const Text(
                  "Forgot Password?",
                  style: TextStyle(color: Colors.orange),
                ),
              ),

              // Error Message
              if (_errorMessage != null) ...[
                const SizedBox(height: 10),
                Text(
                  _errorMessage!,
                  style: const TextStyle(color: Colors.red),
                ),
              ],

              const SizedBox(height: 10),

              // Register Redirect
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don't have an account?",
                    style: TextStyle(color: Colors.grey),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/register");
                    },
                    child: const Text(
                      "Register",
                      style: TextStyle(color: Colors.orange),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
