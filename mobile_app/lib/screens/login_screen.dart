import 'package:flutter/foundation.dart' show kDebugMode;
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:helawork_client/helawork_client.dart';

class LoginScreen extends StatefulWidget {
  final Client client;
  
  const LoginScreen({super.key, required this.client});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  
  bool _isLoading = false;
  bool _obscurePassword = true;
  bool _rememberMe = false;
  String? _errorMessage;

  @override
  void initState() {
    super.initState();
    _loadSavedCredentials();
    _logAnalyticsEvent('login_screen_viewed');
  }

  // Load saved email and remember me preference
  Future<void> _loadSavedCredentials() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      setState(() {
        _rememberMe = prefs.getBool('rememberMe') ?? false;
        if (_rememberMe) {
          _emailController.text = prefs.getString('savedEmail') ?? '';
        }
      });
    } catch (e) {
      if (kDebugMode) {
        print('Error loading saved credentials: $e');
      }
    }
  }

  // Save email and remember me preference
  Future<void> _saveCredentials() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      if (_rememberMe) {
        await prefs.setString('savedEmail', _emailController.text.trim());
        await prefs.setBool('rememberMe', true);
      } else {
        await prefs.remove('savedEmail');
        await prefs.setBool('rememberMe', false);
      }
    } catch (e) {
      if (kDebugMode) {
        print('Error saving credentials: $e');
      }
    }
  }

  // Analytics event logging
  void _logAnalyticsEvent(String eventName, [Map<String, dynamic>? parameters]) {
    // Implement your analytics service here
    if (kDebugMode) {
      print('Analytics Event: $eventName, Params: $parameters');
    }
    // Example: FirebaseAnalytics.instance.logEvent(name: eventName, parameters: parameters);
  }

  Future<void> _login() async {
    if (!_formKey.currentState!.validate()) {
      return;
    }

    _logAnalyticsEvent('login_attempted', {
      'email': _emailController.text.trim(),
    });

    setState(() {
      _isLoading = true;
      _errorMessage = null;
    });

    try {
      final user = await widget.client.auth.login(
        _emailController.text.trim(),
        _passwordController.text.trim(),
      );

      if (user != null) {
        await _saveCredentials();
        
        _logAnalyticsEvent('login_success', {
          'user_id': user.id,
          'email': user.email,
          'role': user.role,
        });

        if (mounted) {
          Navigator.pushReplacementNamed(context, '/dashboard');
        }
      } else {
        setState(() {
          _errorMessage = 'Invalid email or password';
        });
        _logAnalyticsEvent('login_failed', {
          'reason': 'invalid_credentials',
          'email': _emailController.text.trim(),
        });
      }
    } catch (e) {
      setState(() {
        _errorMessage = 'Login failed. Please check your credentials and try again.';
      });
      _logAnalyticsEvent('login_error', {
        'error': e.toString(),
        'email': _emailController.text.trim(),
      });
    } finally {
      if (mounted) {
        setState(() {
          _isLoading = false;
        });
      }
    }
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Company Logo - Replace with your actual logo asset
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Icon(
                    Icons.work_outline,
                    size: 40,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  "HelaWork",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  "Company Portal",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white70,
                  ),
                ),
                const SizedBox(height: 40),
                TextFormField(
                  controller: _emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: "Company Email",
                    labelStyle: const TextStyle(color: Colors.white70),
                    filled: true,
                    fillColor: Colors.black26,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    prefixIcon: const Icon(Icons.email, color: Colors.white70),
                  ),
                  style: const TextStyle(color: Colors.white),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your company email';
                    }
                    if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value)) {
                      return 'Please enter a valid email address';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20),
                TextFormField(
                  controller: _passwordController,
                  obscureText: _obscurePassword,
                  decoration: InputDecoration(
                    labelText: "Password",
                    labelStyle: const TextStyle(color: Colors.white70),
                    filled: true,
                    fillColor: Colors.black26,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    prefixIcon: const Icon(Icons.lock, color: Colors.white70),
                    suffixIcon: IconButton(
                      icon: Icon(
                        _obscurePassword ? Icons.visibility : Icons.visibility_off,
                        color: Colors.white70,
                      ),
                      onPressed: () {
                        setState(() {
                          _obscurePassword = !_obscurePassword;
                        });
                      },
                    ),
                  ),
                  style: const TextStyle(color: Colors.white),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your password';
                    }
                    if (value.length < 8) {
                      return 'Password must be at least 8 characters';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Checkbox(
                      value: _rememberMe,
                      onChanged: (value) {
                        setState(() {
                          _rememberMe = value ?? false;
                        });
                      },
                      fillColor: MaterialStateProperty.resolveWith<Color>(
                        (Set<MaterialState> states) {
                          if (states.contains(MaterialState.selected)) {
                            return Colors.orange;
                          }
                          return Colors.grey;
                        },
                      ),
                    ),
                    const Text(
                      "Remember me",
                      style: TextStyle(color: Colors.white70),
                    ),
                    const Spacer(),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/register_screen');
                      },
                      child: const Text(
                        "Register?",
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                if (_errorMessage != null)
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.red.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.red.withOpacity(0.3)),
                    ),
                    child: Row(
                      children: [
                        const Icon(Icons.error_outline, color: Colors.red, size: 20),
                        const SizedBox(width: 8),
                        Expanded(
                          child: Text(
                            _errorMessage!,
                            style: const TextStyle(color: Colors.red),
                          ),
                        ),
                      ],
                    ),
                  ),
                const SizedBox(height: 20),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: _isLoading ? null : _login,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      foregroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: _isLoading
                        ? const SizedBox(
                            width: 20,
                            height: 20,
                            child: CircularProgressIndicator(
                              color: Colors.black,
                              strokeWidth: 2,
                            ),
                          )
                        : const Text(
                            "Sign In",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                  ),
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Need help accessing your account? ",
                      style: TextStyle(color: Colors.white70),
                    ),             
                     
                      
                    
                  ],
                ),
                const SizedBox(height: 20),
                // Security notice for company app
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "For security reasons, please ensure you are on a secure network when accessing company resources.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white54,
                      fontSize: 12,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}