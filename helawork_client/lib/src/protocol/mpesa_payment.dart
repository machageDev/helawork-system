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

abstract class MpesaTransaction implements _i1.SerializableModel {
  MpesaTransaction._({
    this.id,
    required this.userId,
    required this.employerId,
    required this.amount,
    required this.phoneNumber,
    this.transactionId,
    required this.status,
    this.requestPayload,
    this.responsePayload,
    required this.createdAt,
    required this.updatedAt,
  });

  factory MpesaTransaction({
    int? id,
    required int userId,
    required int employerId,
    required double amount,
    required String phoneNumber,
    String? transactionId,
    required String status,
    String? requestPayload,
    String? responsePayload,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _MpesaTransactionImpl;

  factory MpesaTransaction.fromJson(Map<String, dynamic> jsonSerialization) {
    return MpesaTransaction(
      id: jsonSerialization['id'] as int?,
      userId: jsonSerialization['userId'] as int,
      employerId: jsonSerialization['employerId'] as int,
      amount: (jsonSerialization['amount'] as num).toDouble(),
      phoneNumber: jsonSerialization['phoneNumber'] as String,
      transactionId: jsonSerialization['transactionId'] as String?,
      status: jsonSerialization['status'] as String,
      requestPayload: jsonSerialization['requestPayload'] as String?,
      responsePayload: jsonSerialization['responsePayload'] as String?,
      createdAt:
          _i1.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
      updatedAt:
          _i1.DateTimeJsonExtension.fromJson(jsonSerialization['updatedAt']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int userId;

  int employerId;

  double amount;

  String phoneNumber;

  String? transactionId;

  String status;

  String? requestPayload;

  String? responsePayload;

  DateTime createdAt;

  DateTime updatedAt;

  /// Returns a shallow copy of this [MpesaTransaction]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  MpesaTransaction copyWith({
    int? id,
    int? userId,
    int? employerId,
    double? amount,
    String? phoneNumber,
    String? transactionId,
    String? status,
    String? requestPayload,
    String? responsePayload,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'userId': userId,
      'employerId': employerId,
      'amount': amount,
      'phoneNumber': phoneNumber,
      if (transactionId != null) 'transactionId': transactionId,
      'status': status,
      if (requestPayload != null) 'requestPayload': requestPayload,
      if (responsePayload != null) 'responsePayload': responsePayload,
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _MpesaTransactionImpl extends MpesaTransaction {
  _MpesaTransactionImpl({
    int? id,
    required int userId,
    required int employerId,
    required double amount,
    required String phoneNumber,
    String? transactionId,
    required String status,
    String? requestPayload,
    String? responsePayload,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) : super._(
          id: id,
          userId: userId,
          employerId: employerId,
          amount: amount,
          phoneNumber: phoneNumber,
          transactionId: transactionId,
          status: status,
          requestPayload: requestPayload,
          responsePayload: responsePayload,
          createdAt: createdAt,
          updatedAt: updatedAt,
        );

  /// Returns a shallow copy of this [MpesaTransaction]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  MpesaTransaction copyWith({
    Object? id = _Undefined,
    int? userId,
    int? employerId,
    double? amount,
    String? phoneNumber,
    Object? transactionId = _Undefined,
    String? status,
    Object? requestPayload = _Undefined,
    Object? responsePayload = _Undefined,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return MpesaTransaction(
      id: id is int? ? id : this.id,
      userId: userId ?? this.userId,
      employerId: employerId ?? this.employerId,
      amount: amount ?? this.amount,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      transactionId:
          transactionId is String? ? transactionId : this.transactionId,
      status: status ?? this.status,
      requestPayload:
          requestPayload is String? ? requestPayload : this.requestPayload,
      responsePayload:
          responsePayload is String? ? responsePayload : this.responsePayload,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}
