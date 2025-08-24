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
    required this.startedAt,
    this.endedAt,
    this.durationMinutes,
    this.createdAt,
  });

  factory TimeLog({
    int? id,
    required int workerId,
    required int taskId,
    required DateTime startedAt,
    DateTime? endedAt,
    int? durationMinutes,
    DateTime? createdAt,
  }) = _TimeLogImpl;

  factory TimeLog.fromJson(Map<String, dynamic> jsonSerialization) {
    return TimeLog(
      id: jsonSerialization['id'] as int?,
      workerId: jsonSerialization['workerId'] as int,
      taskId: jsonSerialization['taskId'] as int,
      startedAt:
          _i1.DateTimeJsonExtension.fromJson(jsonSerialization['startedAt']),
      endedAt: jsonSerialization['endedAt'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(jsonSerialization['endedAt']),
      durationMinutes: jsonSerialization['durationMinutes'] as int?,
      createdAt: jsonSerialization['createdAt'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int workerId;

  int taskId;

  DateTime startedAt;

  DateTime? endedAt;

  int? durationMinutes;

  DateTime? createdAt;

  /// Returns a shallow copy of this [TimeLog]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  TimeLog copyWith({
    int? id,
    int? workerId,
    int? taskId,
    DateTime? startedAt,
    DateTime? endedAt,
    int? durationMinutes,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'workerId': workerId,
      'taskId': taskId,
      'startedAt': startedAt.toJson(),
      if (endedAt != null) 'endedAt': endedAt?.toJson(),
      if (durationMinutes != null) 'durationMinutes': durationMinutes,
      if (createdAt != null) 'createdAt': createdAt?.toJson(),
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
    required DateTime startedAt,
    DateTime? endedAt,
    int? durationMinutes,
    DateTime? createdAt,
  }) : super._(
          id: id,
          workerId: workerId,
          taskId: taskId,
          startedAt: startedAt,
          endedAt: endedAt,
          durationMinutes: durationMinutes,
          createdAt: createdAt,
        );

  /// Returns a shallow copy of this [TimeLog]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  TimeLog copyWith({
    Object? id = _Undefined,
    int? workerId,
    int? taskId,
    DateTime? startedAt,
    Object? endedAt = _Undefined,
    Object? durationMinutes = _Undefined,
    Object? createdAt = _Undefined,
  }) {
    return TimeLog(
      id: id is int? ? id : this.id,
      workerId: workerId ?? this.workerId,
      taskId: taskId ?? this.taskId,
      startedAt: startedAt ?? this.startedAt,
      endedAt: endedAt is DateTime? ? endedAt : this.endedAt,
      durationMinutes:
          durationMinutes is int? ? durationMinutes : this.durationMinutes,
      createdAt: createdAt is DateTime? ? createdAt : this.createdAt,
    );
  }
}
