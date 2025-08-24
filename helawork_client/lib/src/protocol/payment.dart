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

abstract class PaymentRate implements _i1.SerializableModel {
  PaymentRate._({
    this.id,
    required this.workerId,
    required this.employerId,
    required this.ratePerHour,
    required this.effectiveFrom,
    this.effectiveTo,
    required this.createdAt,
  });

  factory PaymentRate({
    int? id,
    required int workerId,
    required int employerId,
    required double ratePerHour,
    required DateTime effectiveFrom,
    DateTime? effectiveTo,
    required DateTime createdAt,
  }) = _PaymentRateImpl;

  factory PaymentRate.fromJson(Map<String, dynamic> jsonSerialization) {
    return PaymentRate(
      id: jsonSerialization['id'] as int?,
      workerId: jsonSerialization['workerId'] as int,
      employerId: jsonSerialization['employerId'] as int,
      ratePerHour: (jsonSerialization['ratePerHour'] as num).toDouble(),
      effectiveFrom: _i1.DateTimeJsonExtension.fromJson(
          jsonSerialization['effectiveFrom']),
      effectiveTo: jsonSerialization['effectiveTo'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(
              jsonSerialization['effectiveTo']),
      createdAt:
          _i1.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int workerId;

  int employerId;

  double ratePerHour;

  DateTime effectiveFrom;

  DateTime? effectiveTo;

  DateTime createdAt;

  /// Returns a shallow copy of this [PaymentRate]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  PaymentRate copyWith({
    int? id,
    int? workerId,
    int? employerId,
    double? ratePerHour,
    DateTime? effectiveFrom,
    DateTime? effectiveTo,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'workerId': workerId,
      'employerId': employerId,
      'ratePerHour': ratePerHour,
      'effectiveFrom': effectiveFrom.toJson(),
      if (effectiveTo != null) 'effectiveTo': effectiveTo?.toJson(),
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _PaymentRateImpl extends PaymentRate {
  _PaymentRateImpl({
    int? id,
    required int workerId,
    required int employerId,
    required double ratePerHour,
    required DateTime effectiveFrom,
    DateTime? effectiveTo,
    required DateTime createdAt,
  }) : super._(
          id: id,
          workerId: workerId,
          employerId: employerId,
          ratePerHour: ratePerHour,
          effectiveFrom: effectiveFrom,
          effectiveTo: effectiveTo,
          createdAt: createdAt,
        );

  /// Returns a shallow copy of this [PaymentRate]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  PaymentRate copyWith({
    Object? id = _Undefined,
    int? workerId,
    int? employerId,
    double? ratePerHour,
    DateTime? effectiveFrom,
    Object? effectiveTo = _Undefined,
    DateTime? createdAt,
  }) {
    return PaymentRate(
      id: id is int? ? id : this.id,
      workerId: workerId ?? this.workerId,
      employerId: employerId ?? this.employerId,
      ratePerHour: ratePerHour ?? this.ratePerHour,
      effectiveFrom: effectiveFrom ?? this.effectiveFrom,
      effectiveTo: effectiveTo is DateTime? ? effectiveTo : this.effectiveTo,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
