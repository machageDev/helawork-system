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

abstract class Task implements _i1.SerializableModel {
  Task._({
    this.id,
    required this.employerId,
    this.workerId,
    required this.title,
    this.description,
    required this.status,
    required this.deadline,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Task({
    int? id,
    required int employerId,
    int? workerId,
    required String title,
    String? description,
    required String status,
    required DateTime deadline,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _TaskImpl;

  factory Task.fromJson(Map<String, dynamic> jsonSerialization) {
    return Task(
      id: jsonSerialization['id'] as int?,
      employerId: jsonSerialization['employerId'] as int,
      workerId: jsonSerialization['workerId'] as int?,
      title: jsonSerialization['title'] as String,
      description: jsonSerialization['description'] as String?,
      status: jsonSerialization['status'] as String,
      deadline:
          _i1.DateTimeJsonExtension.fromJson(jsonSerialization['deadline']),
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

  int employerId;

  int? workerId;

  String title;

  String? description;

  String status;

  DateTime deadline;

  DateTime createdAt;

  DateTime updatedAt;

  /// Returns a shallow copy of this [Task]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Task copyWith({
    int? id,
    int? employerId,
    int? workerId,
    String? title,
    String? description,
    String? status,
    DateTime? deadline,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'employerId': employerId,
      if (workerId != null) 'workerId': workerId,
      'title': title,
      if (description != null) 'description': description,
      'status': status,
      'deadline': deadline.toJson(),
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

class _TaskImpl extends Task {
  _TaskImpl({
    int? id,
    required int employerId,
    int? workerId,
    required String title,
    String? description,
    required String status,
    required DateTime deadline,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) : super._(
          id: id,
          employerId: employerId,
          workerId: workerId,
          title: title,
          description: description,
          status: status,
          deadline: deadline,
          createdAt: createdAt,
          updatedAt: updatedAt,
        );

  /// Returns a shallow copy of this [Task]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Task copyWith({
    Object? id = _Undefined,
    int? employerId,
    Object? workerId = _Undefined,
    String? title,
    Object? description = _Undefined,
    String? status,
    DateTime? deadline,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return Task(
      id: id is int? ? id : this.id,
      employerId: employerId ?? this.employerId,
      workerId: workerId is int? ? workerId : this.workerId,
      title: title ?? this.title,
      description: description is String? ? description : this.description,
      status: status ?? this.status,
      deadline: deadline ?? this.deadline,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}
