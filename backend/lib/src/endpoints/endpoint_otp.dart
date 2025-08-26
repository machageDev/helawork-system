import 'dart:math';
import 'package:serverpod/serverpod.dart';

class OtpEndpoint extends Endpoint {
  final _otpStore = <String, Map<String, dynamic>>{}; // simple in-memory store

  // Generate and send OTP
  Future<bool> generateOtp(Session session, String email) async {
    // Generate 6-digit OTP
    final otp = (Random().nextInt(900000) + 100000).toString();

    // Save OTP with expiry (5 minutes)
    _otpStore[email] = {
      'otp': otp,
      'expiresAt': DateTime.now().add(Duration(minutes: 5)),
    };

    // TODO: Replace with real email/SMS sending service
    print("Sending OTP $otp to $email");

    return true;
  }

  // Verify OTP
  Future<bool> verifyOtp(Session session, String email, String otp) async {
    if (!_otpStore.containsKey(email)) return false;

    final record = _otpStore[email]!;
    if (record['otp'] == otp && DateTime.now().isBefore(record['expiresAt'])) {
      _otpStore.remove(email); // clear once used
      return true;
    }

    return false;
  }
}
