import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:serverpod_flutter/serverpod_flutter.dart';

// Import your generated Serverpod client
import 'package:helawork_client/helawork_client.dart';

// Screens
import 'screens/login.dart';
// import 'register.dart';
// import 'forgot_password.dart';
// import 'home.dart';


late Client client;

Future<void> bootstrap() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Load environment variables depending on build mode
  await dotenv.load(fileName: kReleaseMode ? ".env.prod" : ".env.dev");

  // Initialize Serverpod client
  final serverUrl = dotenv.env['SERVER_URL'] ?? 'http://localhost:8080/';
  client = Client(serverUrl)
    ..connectivityMonitor = FlutterConnectivityMonitor();
}

void main() {
  runZonedGuarded(() async {
    // Ensure Flutter error handling is set
    FlutterError.onError = (FlutterErrorDetails details) {
      if (kDebugMode) {
        // Print in debug
        FlutterError.dumpErrorToConsole(details);
      } else {
        // TODO: Send errors to Crashlytics, Sentry, or any monitoring service
      }
    };

    await bootstrap();
    runApp(const HelaWorkApp());
  }, (error, stack) {
    if (kDebugMode) {
      // Print async uncaught errors in debug
      print('Uncaught error: $error\n$stack');
    } else {
      // TODO: Report uncaught async errors to monitoring service
    }
  });
}

class HelaWorkApp extends StatelessWidget {
  const HelaWorkApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HelaWork',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,

      // Light theme
      theme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.light,
        colorSchemeSeed: const Color(0xFF1A73E8), // Google Blue
      ),

      // Dark theme
      darkTheme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
        colorSchemeSeed: const Color(0xFF1A73E8),
      ),

      // Routing
      initialRoute: '/login',
      routes: {
        '/login': (_) => const LoginPage(),
        // '/register': (_) => const RegisterPage(),
        // '/forgot': (_) => const ForgotPasswordPage(),
        // '/home': (_) => const HomePage(),
      },
    );
  }
}
