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

abstract class ResetToken implements _i1.SerializableModel {
  ResetToken._({
    this.id,
    required this.userId,
    required this.token,
    required this.expiresAt,
  });

  factory ResetToken({
    int? id,
    required int userId,
    required String token,
    required DateTime expiresAt,
  }) = _ResetTokenImpl;

  factory ResetToken.fromJson(Map<String, dynamic> jsonSerialization) {
    return ResetToken(
      id: jsonSerialization['id'] as int?,
      userId: jsonSerialization['userId'] as int,
      token: jsonSerialization['token'] as String,
      expiresAt:
          _i1.DateTimeJsonExtension.fromJson(jsonSerialization['expiresAt']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int userId;

  String token;

  DateTime expiresAt;

  /// Returns a shallow copy of this [ResetToken]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  ResetToken copyWith({
    int? id,
    int? userId,
    String? token,
    DateTime? expiresAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'userId': userId,
      'token': token,
      'expiresAt': expiresAt.toJson(),
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ResetTokenImpl extends ResetToken {
  _ResetTokenImpl({
    int? id,
    required int userId,
    required String token,
    required DateTime expiresAt,
  }) : super._(
          id: id,
          userId: userId,
          token: token,
          expiresAt: expiresAt,
        );

  /// Returns a shallow copy of this [ResetToken]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  ResetToken copyWith({
    Object? id = _Undefined,
    int? userId,
    String? token,
    DateTime? expiresAt,
  }) {
    return ResetToken(
      id: id is int? ? id : this.id,
      userId: userId ?? this.userId,
      token: token ?? this.token,
      expiresAt: expiresAt ?? this.expiresAt,
    );
  }
}
