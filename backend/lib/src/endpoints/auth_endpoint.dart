import 'package:serverpod/serverpod.dart';
import 'package:crypto/crypto.dart';
import 'dart:convert';
import '../generated/protocol.dart';
import 'dart:math';

class AuthEndpoint extends Endpoint {
  // 🔹 Register new user
  Future<User?> register(Session session, String fullName, String email, String password, String role) async {
    var existing = await User.db.findFirstRow(
      session,
      where: (u) => u.email.equals(email),
    );

    if (existing != null) {
      throw Exception("Email already exists");
    }

    var passwordHash = sha256.convert(utf8.encode(password)).toString();

    var user = User(
      fullName: fullName,
      email: email,
      passwordHash: passwordHash,
      role: role,
      createdAt: DateTime.now(),
    );

    await User.db.insertRow(session, user);
    return user;
  }

  // 🔹 Login
  Future<User?> login(Session session, String email, String password) async {
    var user = await User.db.findFirstRow(
      session,
      where: (u) => u.email.equals(email),
    );

    if (user == null) throw Exception("User not found");

    var passwordHash = sha256.convert(utf8.encode(password)).toString();
    if (user.passwordHash != passwordHash) {
      throw Exception("Invalid password");
    }

    return user;
  }

  // 🔹 Forgot password → generate reset token
  Future<String> forgotPassword(Session session, String email) async {
    var user = await User.db.findFirstRow(
      session,
      where: (u) => u.email.equals(email),
    );

    if (user == null) throw Exception("User not found");

    // Generate random reset token
    var token = base64Url.encode(List<int>.generate(32, (_) => Random.secure().nextInt(256)));

    // Store in ResetToken table (we’ll create it in YAML)
    var reset = ResetToken(
      userId: user.id!,
      token: token,
      expiresAt: DateTime.now().add(Duration(minutes: 30)),
    );

    await ResetToken.db.insertRow(session, reset);

    // TODO: send token via email or SMS
    return token;
  }

  // 🔹 Reset password with token
  Future<bool> resetPassword(Session session, String token, String newPassword) async {
    var reset = await ResetToken.db.findFirstRow(
      session,
      where: (r) => r.token.equals(token),
    );

    if (reset == null || reset.expiresAt.isBefore(DateTime.now())) {
      throw Exception("Invalid or expired reset token");
    }

    var user = await User.db.findById(session, reset.userId);
    if (user == null) throw Exception("User not found");

    user.passwordHash = sha256.convert(utf8.encode(newPassword)).toString();
    await User.db.updateRow(session, user);

    // Delete token after use
    await ResetToken.db.deleteRow(session, reset);

    return true;
  }
}
