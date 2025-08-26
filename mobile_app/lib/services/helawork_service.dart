import 'package:helawork_client/helawork_client.dart';

class HelaWorkService {
  static late Client client;

  /// Initialize the Serverpod client
  static void init() {
    client = Client(
      'http://10.0.2.2:8080/', // Android emulator (change for prod: Heroku/Docker URL)
    );
  }



  static Future<User?> register({
    required String fullName,
    required String email,
    required String password,
    required String role,
  }) async {
    try {
      return await client.authEndpoint.register(
        fullName,
        email,
        password,
        role,
      );
    } catch (e) {
      print('Register error: $e');
      return null;
    }
  }

  static Future<User?> login({
    required String email,
    required String password,
  }) async {
    try {
      return await client.authEndpoint.login(email, password);
    } catch (e) {
      print('Login error: $e');
      return null;
    }
  }

  static Future<bool> forgotPassword(String email) async {
    try {
      return await client.authEndpoint.forgotPassword(email);
    } catch (e) {
      print('Forgot password error: $e');
      return false;
    }
  }

  static Future<bool> resetPassword(String token, String newPassword) async {
    try {
      return await client.authEndpoint.resetPassword(token, newPassword);
    } catch (e) {
      print('Reset password error: $e');
      return false;
    }
  }

  // ------------------------
  // TASK ENDPOINTS
  // ------------------------

  

  // ------------------------
  // PAYMENT ENDPOINTS
  // ------------------------

}

extension on Client {
  get authEndpoint => null;
}
