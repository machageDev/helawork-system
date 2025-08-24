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
    required this.taskId,
    required this.workerId,
    required this.startedAt,
    required this.endedAt,
    required this.durationMinutes,
    this.note,
    this.approved,
    this.approvedById,
    this.approvedAt,
    required this.createdAt,
  });

  factory TimeLog({
    int? id,
    required int taskId,
    required int workerId,
    required DateTime startedAt,
    required DateTime endedAt,
    required int durationMinutes,
    String? note,
    bool? approved,
    int? approvedById,
    DateTime? approvedAt,
    required DateTime createdAt,
  }) = _TimeLogImpl;

  factory TimeLog.fromJson(Map<String, dynamic> jsonSerialization) {
    return TimeLog(
      id: jsonSerialization['id'] as int?,
      taskId: jsonSerialization['taskId'] as int,
      workerId: jsonSerialization['workerId'] as int,
      startedAt:
          _i1.DateTimeJsonExtension.fromJson(jsonSerialization['startedAt']),
      endedAt: _i1.DateTimeJsonExtension.fromJson(jsonSerialization['endedAt']),
      durationMinutes: jsonSerialization['durationMinutes'] as int,
      note: jsonSerialization['note'] as String?,
      approved: jsonSerialization['approved'] as bool?,
      approvedById: jsonSerialization['approvedById'] as int?,
      approvedAt: jsonSerialization['approvedAt'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(jsonSerialization['approvedAt']),
      createdAt:
          _i1.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int taskId;

  int workerId;

  DateTime startedAt;

  DateTime endedAt;

  int durationMinutes;

  String? note;

  bool? approved;

  int? approvedById;

  DateTime? approvedAt;

  DateTime createdAt;

  /// Returns a shallow copy of this [TimeLog]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  TimeLog copyWith({
    int? id,
    int? taskId,
    int? workerId,
    DateTime? startedAt,
    DateTime? endedAt,
    int? durationMinutes,
    String? note,
    bool? approved,
    int? approvedById,
    DateTime? approvedAt,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'taskId': taskId,
      'workerId': workerId,
      'startedAt': startedAt.toJson(),
      'endedAt': endedAt.toJson(),
      'durationMinutes': durationMinutes,
      if (note != null) 'note': note,
      if (approved != null) 'approved': approved,
      if (approvedById != null) 'approvedById': approvedById,
      if (approvedAt != null) 'approvedAt': approvedAt?.toJson(),
      'createdAt': createdAt.toJson(),
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
    required int taskId,
    required int workerId,
    required DateTime startedAt,
    required DateTime endedAt,
    required int durationMinutes,
    String? note,
    bool? approved,
    int? approvedById,
    DateTime? approvedAt,
    required DateTime createdAt,
  }) : super._(
          id: id,
          taskId: taskId,
          workerId: workerId,
          startedAt: startedAt,
          endedAt: endedAt,
          durationMinutes: durationMinutes,
          note: note,
          approved: approved,
          approvedById: approvedById,
          approvedAt: approvedAt,
          createdAt: createdAt,
        );

  /// Returns a shallow copy of this [TimeLog]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  TimeLog copyWith({
    Object? id = _Undefined,
    int? taskId,
    int? workerId,
    DateTime? startedAt,
    DateTime? endedAt,
    int? durationMinutes,
    Object? note = _Undefined,
    Object? approved = _Undefined,
    Object? approvedById = _Undefined,
    Object? approvedAt = _Undefined,
    DateTime? createdAt,
  }) {
    return TimeLog(
      id: id is int? ? id : this.id,
      taskId: taskId ?? this.taskId,
      workerId: workerId ?? this.workerId,
      startedAt: startedAt ?? this.startedAt,
      endedAt: endedAt ?? this.endedAt,
      durationMinutes: durationMinutes ?? this.durationMinutes,
      note: note is String? ? note : this.note,
      approved: approved is bool? ? approved : this.approved,
      approvedById: approvedById is int? ? approvedById : this.approvedById,
      approvedAt: approvedAt is DateTime? ? approvedAt : this.approvedAt,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
