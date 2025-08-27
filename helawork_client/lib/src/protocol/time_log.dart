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

abstract class TimeLog implements _i1.SerializableModel {
  TimeLog._({
    this.id,
    required this.workerId,
    required this.taskId,
    required this.hoursWorked,
    required this.date,
    required this.isApproved,
  });

  factory TimeLog({
    int? id,
    required int workerId,
    required int taskId,
    required double hoursWorked,
    required DateTime date,
    required bool isApproved,
  }) = _TimeLogImpl;

  factory TimeLog.fromJson(Map<String, dynamic> jsonSerialization) {
    return TimeLog(
      id: jsonSerialization['id'] as int?,
      workerId: jsonSerialization['workerId'] as int,
      taskId: jsonSerialization['taskId'] as int,
      hoursWorked: (jsonSerialization['hoursWorked'] as num).toDouble(),
      date: _i1.DateTimeJsonExtension.fromJson(jsonSerialization['date']),
      isApproved: jsonSerialization['isApproved'] as bool,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int workerId;

  int taskId;

  double hoursWorked;

  DateTime date;

  bool isApproved;

  /// Returns a shallow copy of this [TimeLog]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  TimeLog copyWith({
    int? id,
    int? workerId,
    int? taskId,
    double? hoursWorked,
    DateTime? date,
    bool? isApproved,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'workerId': workerId,
      'taskId': taskId,
      'hoursWorked': hoursWorked,
      'date': date.toJson(),
      'isApproved': isApproved,
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _TimeLogImpl extends TimeLog {
  _TimeLogImpl({
    int? id,
    required int workerId,
    required int taskId,
    required double hoursWorked,
    required DateTime date,
    required bool isApproved,
  }) : super._(
          id: id,
          workerId: workerId,
          taskId: taskId,
          hoursWorked: hoursWorked,
          date: date,
          isApproved: isApproved,
        );

  /// Returns a shallow copy of this [TimeLog]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  TimeLog copyWith({
    Object? id = _Undefined,
    int? workerId,
    int? taskId,
    double? hoursWorked,
    DateTime? date,
    bool? isApproved,
  }) {
    return TimeLog(
      id: id is int? ? id : this.id,
      workerId: workerId ?? this.workerId,
      taskId: taskId ?? this.taskId,
      hoursWorked: hoursWorked ?? this.hoursWorked,
      date: date ?? this.date,
      isApproved: isApproved ?? this.isApproved,
    );
  }
}
