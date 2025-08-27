import 'package:flutter/material.dart';
import 'package:helawork_flutter/nav/dashboard_screen.dart';
import 'package:helawork_flutter/screens/forgot_password.dart';
import 'client.dart';
import 'screens/login_screen.dart';
import 'screens/register_screen.dart';
import 'package:helawork_flutter/screens/reset_password.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HelaWork',
      debugShowCheckedModeBanner: false,
      initialRoute: '/dashboard',
      routes: {
        '/login': (context) => LoginScreen(client: client),
        '/register': (context) => RegisterScreen(client: client),
        '/forgot_password':(context) => ForgotPasswordScreen(),
        '/reset_password':(context)=> ResetPasswordScreen(),
        '/dashboard':(context) => DashboardScreen(),
        

      },
    );
  }
}
