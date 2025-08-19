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
    required this.title,
    required this.description,
    required this.deadline,
    required this.status,
    required this.createdAt,
    required this.assignedTo,
  });

  factory Task({
    int? id,
    required String title,
    required String description,
    required DateTime deadline,
    required String status,
    required DateTime createdAt,
    required int assignedTo,
  }) = _TaskImpl;

  factory Task.fromJson(Map<String, dynamic> jsonSerialization) {
    return Task(
      id: jsonSerialization['id'] as int?,
      title: jsonSerialization['title'] as String,
      description: jsonSerialization['description'] as String,
      deadline:
          _i1.DateTimeJsonExtension.fromJson(jsonSerialization['deadline']),
      status: jsonSerialization['status'] as String,
      createdAt:
          _i1.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
      assignedTo: jsonSerialization['assignedTo'] as int,
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String title;

  String description;

  DateTime deadline;

  String status;

  DateTime createdAt;

  int assignedTo;

  /// Returns a shallow copy of this [Task]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Task copyWith({
    int? id,
    String? title,
    String? description,
    DateTime? deadline,
    String? status,
    DateTime? createdAt,
    int? assignedTo,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'title': title,
      'description': description,
      'deadline': deadline.toJson(),
      'status': status,
      'createdAt': createdAt.toJson(),
      'assignedTo': assignedTo,
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
    required String title,
    required String description,
    required DateTime deadline,
    required String status,
    required DateTime createdAt,
    required int assignedTo,
  }) : super._(
          id: id,
          title: title,
          description: description,
          deadline: deadline,
          status: status,
          createdAt: createdAt,
          assignedTo: assignedTo,
        );

  /// Returns a shallow copy of this [Task]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Task copyWith({
    Object? id = _Undefined,
    String? title,
    String? description,
    DateTime? deadline,
    String? status,
    DateTime? createdAt,
    int? assignedTo,
  }) {
    return Task(
      id: id is int? ? id : this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      deadline: deadline ?? this.deadline,
      status: status ?? this.status,
      createdAt: createdAt ?? this.createdAt,
      assignedTo: assignedTo ?? this.assignedTo,
    );
  }
}
