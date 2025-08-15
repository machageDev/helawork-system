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

abstract class Payment implements _i1.SerializableModel {
  Payment._({
    this.id,
    this.userId,
    required this.totalHours,
    required this.ratePerHour,
    required this.totalAmount,
    required this.paymentMethod,
    required this.status,
    required this.createdAt,
  });

  factory Payment({
    int? id,
    int? userId,
    required double totalHours,
    required double ratePerHour,
    required double totalAmount,
    required String paymentMethod,
    required String status,
    required DateTime createdAt,
  }) = _PaymentImpl;

  factory Payment.fromJson(Map<String, dynamic> jsonSerialization) {
    return Payment(
      id: jsonSerialization['id'] as int?,
      userId: jsonSerialization['userId'] as int?,
      totalHours: (jsonSerialization['totalHours'] as num).toDouble(),
      ratePerHour: (jsonSerialization['ratePerHour'] as num).toDouble(),
      totalAmount: (jsonSerialization['totalAmount'] as num).toDouble(),
      paymentMethod: jsonSerialization['paymentMethod'] as String,
      status: jsonSerialization['status'] as String,
      createdAt:
          _i1.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int? userId;

  double totalHours;

  double ratePerHour;

  double totalAmount;

  String paymentMethod;

  String status;

  DateTime createdAt;

  /// Returns a shallow copy of this [Payment]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Payment copyWith({
    int? id,
    int? userId,
    double? totalHours,
    double? ratePerHour,
    double? totalAmount,
    String? paymentMethod,
    String? status,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      if (userId != null) 'userId': userId,
      'totalHours': totalHours,
      'ratePerHour': ratePerHour,
      'totalAmount': totalAmount,
      'paymentMethod': paymentMethod,
      'status': status,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _PaymentImpl extends Payment {
  _PaymentImpl({
    int? id,
    int? userId,
    required double totalHours,
    required double ratePerHour,
    required double totalAmount,
    required String paymentMethod,
    required String status,
    required DateTime createdAt,
  }) : super._(
          id: id,
          userId: userId,
          totalHours: totalHours,
          ratePerHour: ratePerHour,
          totalAmount: totalAmount,
          paymentMethod: paymentMethod,
          status: status,
          createdAt: createdAt,
        );

  /// Returns a shallow copy of this [Payment]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Payment copyWith({
    Object? id = _Undefined,
    Object? userId = _Undefined,
    double? totalHours,
    double? ratePerHour,
    double? totalAmount,
    String? paymentMethod,
    String? status,
    DateTime? createdAt,
  }) {
    return Payment(
      id: id is int? ? id : this.id,
      userId: userId is int? ? userId : this.userId,
      totalHours: totalHours ?? this.totalHours,
      ratePerHour: ratePerHour ?? this.ratePerHour,
      totalAmount: totalAmount ?? this.totalAmount,
      paymentMethod: paymentMethod ?? this.paymentMethod,
      status: status ?? this.status,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
