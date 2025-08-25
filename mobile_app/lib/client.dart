import 'package:helawork_client/helawork_client.dart';
import 'package:serverpod_flutter/serverpod_flutter.dart';
import 'package:serverpod_auth_shared_flutter/serverpod_auth_shared_flutter.dart';

late Client client;

Future<void> initClient() async {
  client = Client(
    'http://10.0.2.2:8080/',  // change to your backend address
    authenticationKeyManager: FlutterAuthenticationKeyManager(),
  )..connectivityMonitor = FlutterConnectivityMonitor();
}
