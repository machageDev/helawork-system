import 'package:helawork_client/helawork_client.dart';
import 'package:serverpod_flutter/serverpod_flutter.dart';
import 'package:serverpod_auth_shared_flutter/serverpod_auth_shared_flutter.dart';

/// Global Serverpod client for HelaWork
final client = Client(
  'http://10.0.2.2:8080/', // Android emulator localhost (use http://localhost:8080 for web/desktop)
  authenticationKeyManager: FlutterAuthenticationKeyManager(),
)
  ..connectivityMonitor = FlutterConnectivityMonitor();
