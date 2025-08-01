/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

abstract class User implements _i1.SerializableModel {
  User._({
    this.id,
    required this.fullName,
    required this.email,
    required this.phoneNumber,
    required this.passwordHash,
    required this.role,
    required this.createdAt,
    this.lastLogin,
  });

  factory User({
    int? id,
    required String fullName,
    required String email,
    required String phoneNumber,
    required String passwordHash,
    required String role,
    required DateTime createdAt,
    DateTime? lastLogin,
  }) = _UserImpl;

  factory User.fromJson(Map<String, dynamic> jsonSerialization) {
    return User(
      id: jsonSerialization['id'] as int?,
      fullName: jsonSerialization['fullName'] as String,
      email: jsonSerialization['email'] as String,
      phoneNumber: jsonSerialization['phoneNumber'] as String,
      passwordHash: jsonSerialization['passwordHash'] as String,
      role: jsonSerialization['role'] as String,
      createdAt:
          _i1.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
      lastLogin: jsonSerialization['lastLogin'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(jsonSerialization['lastLogin']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String fullName;

  String email;

  String phoneNumber;

  String passwordHash;

  String role;

  DateTime createdAt;

  DateTime? lastLogin;

  /// Returns a shallow copy of this [User]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  User copyWith({
    int? id,
    String? fullName,
    String? email,
    String? phoneNumber,
    String? passwordHash,
    String? role,
    DateTime? createdAt,
    DateTime? lastLogin,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'fullName': fullName,
      'email': email,
      'phoneNumber': phoneNumber,
      'passwordHash': passwordHash,
      'role': role,
      'createdAt': createdAt.toJson(),
      if (lastLogin != null) 'lastLogin': lastLogin?.toJson(),
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _UserImpl extends User {
  _UserImpl({
    int? id,
    required String fullName,
    required String email,
    required String phoneNumber,
    required String passwordHash,
    required String role,
    required DateTime createdAt,
    DateTime? lastLogin,
  }) : super._(
          id: id,
          fullName: fullName,
          email: email,
          phoneNumber: phoneNumber,
          passwordHash: passwordHash,
          role: role,
          createdAt: createdAt,
          lastLogin: lastLogin,
        );

  /// Returns a shallow copy of this [User]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  User copyWith({
    Object? id = _Undefined,
    String? fullName,
    String? email,
    String? phoneNumber,
    String? passwordHash,
    String? role,
    DateTime? createdAt,
    Object? lastLogin = _Undefined,
  }) {
    return User(
      id: id is int? ? id : this.id,
      fullName: fullName ?? this.fullName,
      email: email ?? this.email,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      passwordHash: passwordHash ?? this.passwordHash,
      role: role ?? this.role,
      createdAt: createdAt ?? this.createdAt,
      lastLogin: lastLogin is DateTime? ? lastLogin : this.lastLogin,
    );
  }
}
