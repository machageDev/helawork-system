import 'package:serverpod/serverpod.dart';
import 'package:crypto/crypto.dart';
import 'dart:convert';

import '../generated/protocol.dart'; 

class AuthEndpoint extends Endpoint {
  // REGISTER
  Future<User?> register(Session session, String fullName, String email, String password, String role) async {
    
    var existing = await User.db.findFirstRow(
      session,
      where: (u) => u.email.equals(email),
    );
    if (existing != null) return null;


    var hashedPassword = sha256.convert(utf8.encode(password)).toString();

    // Create user
    var user = User(
      fullName: fullName,
      email: email,
      passwordHash: hashedPassword,
  
      createdAt: DateTime.now(),
    );

    
    var insertedUser = await User.db.insertRow(session, user);
    return insertedUser;
  }

  // LOGIN
  Future<User?> login(Session session, String email, String password) async {
    var user = await User.db.findFirstRow(
      session,
      where: (u) => u.email.equals(email),
    );
    if (user == null) return null;

    var hashedPassword = sha256.convert(utf8.encode(password)).toString();
    if (user.passwordHash != hashedPassword) return null;

  
    

    return user;
  }
}
