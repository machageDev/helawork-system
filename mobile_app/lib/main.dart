import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:helawork_flutter/screens/register_page.dart';
import 'package:helawork_flutter/tabs/dashboard_screen.dart';
import 'package:serverpod_flutter/serverpod_flutter.dart';
import 'controller/task_controller.dart';
import 'package:helawork_client/helawork_client.dart';

// Screens
import 'screens/login.dart';

late Client client;
late TaskController taskController; // ✅ define global taskController

Future<void> bootstrap() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize Serverpod client depending on build mode
  final serverUrl = kReleaseMode
      ? 'https://your-production-server.com/' // Production URL
      : 'http://localhost:8080/';             // Development URL

  client = Client(serverUrl)
    ..connectivityMonitor = FlutterConnectivityMonitor();

  // ✅ initialize TaskController
  taskController = TaskController(client);
}

void main() {
  runZonedGuarded(() async {
    FlutterError.onError = (FlutterErrorDetails details) {
      if (kDebugMode) {
        FlutterError.dumpErrorToConsole(details);
      } else {
        // TODO: Send errors to Crashlytics, Sentry, or any monitoring service
      }
    };

    await bootstrap();
    runApp(const HelaWorkApp());
  }, (error, stack) {
    if (kDebugMode) {
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

      theme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.light,
        colorSchemeSeed: const Color(0xFF1A73E8),
      ),

      darkTheme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
        colorSchemeSeed: const Color(0xFF1A73E8),
      ),

      initialRoute: '/login',
      routes: {
        '/login': (_) => const LoginPage(),
        '/register': (_) => const RegisterPage(),

        // ✅ no const, and only 1 taskController argument
        '/dashboard': (_) => DashboardScreen(taskController: taskController),
      },
    );
  }
}
