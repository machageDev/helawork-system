import 'package:flutter/material.dart';
import 'client.dart';
import 'screens/login_screen.dart';
import 'screens/register_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initClient();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HelaWork',
      initialRoute: '/login',
      routes: {
        '/login': (context) => LoginScreen(client: client),
        '/register': (context) => RegisterScreen(client: client),
      },
    );
  }
}
