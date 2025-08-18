import 'package:serverpod/serverpod.dart';
import 'package:crypto/crypto.dart';   
import 'dart:convert';                 

import '../generated/protocol.dart';   

class AuthEndpoint extends Endpoint {
  // REGISTER USER
  Future<User?> register(
    Session session,
    String fullName,
    String email,
    String password,
    String role,
  ) async {
    
    var existing = await User.findSingleRow(
      session,
      where: (u) => u.email.equals(email),
    );
    if (existing != null) {
      return null; 
    }

    
    var hashedPassword = sha256.convert(utf8.encode(password)).toString();

    // Create new user
    var user = User(
      fullName: fullName,
      email: email,
      password: hashedPassword,
      role: role,
      createdAt: DateTime.now(), passwordHash: '',
    );

    // Insert into database
    await User.insert(session, user);

    return user;
  }

  // LOGIN USER
  Future<User?> login(
    Session session,
    String email,
    String password,
  ) async {
    
    var user = await User.findSingleRow(
      session,
      where: (u) => u.email.equals(email),
    );

    if (user == null) {
      return null; 
    }

    
    var hashedPassword = sha256.convert(utf8.encode(password)).toString();
    if (user.password != hashedPassword) {
      return null; 
    }

    
    session.authenticatedUserId = user.id;
    return user;
  }
}
