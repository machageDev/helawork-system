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
    this.userId,
    this.taskId,
    required this.startTime,
    this.endTime,
    required this.approved,
  });

  factory TimeLog({
    int? id,
    int? userId,
    int? taskId,
    required DateTime startTime,
    DateTime? endTime,
    required bool approved,
  }) = _TimeLogImpl;

  factory TimeLog.fromJson(Map<String, dynamic> jsonSerialization) {
    return TimeLog(
      id: jsonSerialization['id'] as int?,
      userId: jsonSerialization['userId'] as int?,
      taskId: jsonSerialization['taskId'] as int?,
      startTime:
          _i1.DateTimeJsonExtension.fromJson(jsonSerialization['startTime']),
      endTime: jsonSerialization['endTime'] == null
          ? null
          : _i1.DateTimeJsonExtension.fromJson(jsonSerialization['endTime']),
      approved: jsonSerialization['approved'] as bool,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  int? userId;

  int? taskId;

  DateTime startTime;

  DateTime? endTime;

  bool approved;

  /// Returns a shallow copy of this [TimeLog]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  TimeLog copyWith({
    int? id,
    int? userId,
    int? taskId,
    DateTime? startTime,
    DateTime? endTime,
    bool? approved,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      if (userId != null) 'userId': userId,
      if (taskId != null) 'taskId': taskId,
      'startTime': startTime.toJson(),
      if (endTime != null) 'endTime': endTime?.toJson(),
      'approved': approved,
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
    int? userId,
    int? taskId,
    required DateTime startTime,
    DateTime? endTime,
    required bool approved,
  }) : super._(
          id: id,
          userId: userId,
          taskId: taskId,
          startTime: startTime,
          endTime: endTime,
          approved: approved,
        );

  /// Returns a shallow copy of this [TimeLog]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  TimeLog copyWith({
    Object? id = _Undefined,
    Object? userId = _Undefined,
    Object? taskId = _Undefined,
    DateTime? startTime,
    Object? endTime = _Undefined,
    bool? approved,
  }) {
    return TimeLog(
      id: id is int? ? id : this.id,
      userId: userId is int? ? userId : this.userId,
      taskId: taskId is int? ? taskId : this.taskId,
      startTime: startTime ?? this.startTime,
      endTime: endTime is DateTime? ? endTime : this.endTime,
      approved: approved ?? this.approved,
    );
  }
}
