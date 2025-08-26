import 'package:flutter/material.dart';

class ResetPasswordScreen extends StatelessWidget {
  final TextEditingController tokenController = TextEditingController();
  final TextEditingController newPasswordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();

  ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0D1117),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "HelaWork",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 8),
              Container(
                height: 2,
                width: 60,
                color: Colors.blue,
              ),
              const SizedBox(height: 24),
              const Text(
                "Reset Password",
                style: TextStyle(fontSize: 20, color: Colors.white70),
              ),
              const SizedBox(height: 20),

              // Token
              TextField(
                controller: tokenController,
                style: const TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  labelText: "Reset Token",
                  labelStyle: const TextStyle(color: Colors.white70),
                  filled: true,
                  fillColor: const Color(0xFF161B22),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // New Password
              TextField(
                controller: newPasswordController,
                obscureText: true,
                style: const TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  labelText: "New Password",
                  labelStyle: const TextStyle(color: Colors.white70),
                  filled: true,
                  fillColor: const Color(0xFF161B22),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // Confirm Password
              TextField(
                controller: confirmPasswordController,
                obscureText: true,
                style: const TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  labelText: "Confirm Password",
                  labelStyle: const TextStyle(color: Colors.white70),
                  filled: true,
                  fillColor: const Color(0xFF161B22),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // Reset Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    // TODO: Call resetPassword endpoint
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: const Text("Reset Password"),
                ),
              ),
              const SizedBox(height: 20),

              // Back to Login
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, "/login_screen");
                },
                child: const Text(
                  "Back to Login",
                  style: TextStyle(color: Colors.orange, fontSize: 14),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
