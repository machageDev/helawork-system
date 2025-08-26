

import 'package:helawork_client/helawork_client.dart';

class AuthService {
  static final client = Client("http://localhost:8080/")..connectivityMonitor = null;

  static Future<User?> login(String email, String password) async {
    try {
      final user = await client.auth.login(email, password);
      return user;
    } catch (e) {
      return null;
    }
  }
}
