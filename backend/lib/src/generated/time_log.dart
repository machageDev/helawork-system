/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;

abstract class TimeLog
    implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
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

  static final t = TimeLogTable();

  static const db = TimeLogRepository._();

  @override
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

  @override
  _i1.Table<int?> get table => t;

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
  Map<String, dynamic> toJsonForProtocol() {
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

  static TimeLogInclude include() {
    return TimeLogInclude._();
  }

  static TimeLogIncludeList includeList({
    _i1.WhereExpressionBuilder<TimeLogTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<TimeLogTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<TimeLogTable>? orderByList,
    TimeLogInclude? include,
  }) {
    return TimeLogIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(TimeLog.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(TimeLog.t),
      include: include,
    );
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

class TimeLogTable extends _i1.Table<int?> {
  TimeLogTable({super.tableRelation}) : super(tableName: 'time_log') {
    taskId = _i1.ColumnInt(
      'taskId',
      this,
    );
    workerId = _i1.ColumnInt(
      'workerId',
      this,
    );
    startedAt = _i1.ColumnDateTime(
      'startedAt',
      this,
    );
    endedAt = _i1.ColumnDateTime(
      'endedAt',
      this,
    );
    durationMinutes = _i1.ColumnInt(
      'durationMinutes',
      this,
    );
    note = _i1.ColumnString(
      'note',
      this,
    );
    approved = _i1.ColumnBool(
      'approved',
      this,
    );
    approvedById = _i1.ColumnInt(
      'approvedById',
      this,
    );
    approvedAt = _i1.ColumnDateTime(
      'approvedAt',
      this,
    );
    createdAt = _i1.ColumnDateTime(
      'createdAt',
      this,
    );
  }

  late final _i1.ColumnInt taskId;

  late final _i1.ColumnInt workerId;

  late final _i1.ColumnDateTime startedAt;

  late final _i1.ColumnDateTime endedAt;

  late final _i1.ColumnInt durationMinutes;

  late final _i1.ColumnString note;

  late final _i1.ColumnBool approved;

  late final _i1.ColumnInt approvedById;

  late final _i1.ColumnDateTime approvedAt;

  late final _i1.ColumnDateTime createdAt;

  @override
  List<_i1.Column> get columns => [
        id,
        taskId,
        workerId,
        startedAt,
        endedAt,
        durationMinutes,
        note,
        approved,
        approvedById,
        approvedAt,
        createdAt,
      ];
}

class TimeLogInclude extends _i1.IncludeObject {
  TimeLogInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table<int?> get table => TimeLog.t;
}

class TimeLogIncludeList extends _i1.IncludeList {
  TimeLogIncludeList._({
    _i1.WhereExpressionBuilder<TimeLogTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(TimeLog.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => TimeLog.t;
}

class TimeLogRepository {
  const TimeLogRepository._();

  /// Returns a list of [TimeLog]s matching the given query parameters.
  ///
  /// Use [where] to specify which items to include in the return value.
  /// If none is specified, all items will be returned.
  ///
  /// To specify the order of the items use [orderBy] or [orderByList]
  /// when sorting by multiple columns.
  ///
  /// The maximum number of items can be set by [limit]. If no limit is set,
  /// all items matching the query will be returned.
  ///
  /// [offset] defines how many items to skip, after which [limit] (or all)
  /// items are read from the database.
  ///
  /// ```dart
  /// var persons = await Persons.db.find(
  ///   session,
  ///   where: (t) => t.lastName.equals('Jones'),
  ///   orderBy: (t) => t.firstName,
  ///   limit: 100,
  /// );
  /// ```
  Future<List<TimeLog>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<TimeLogTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<TimeLogTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<TimeLogTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<TimeLog>(
      where: where?.call(TimeLog.t),
      orderBy: orderBy?.call(TimeLog.t),
      orderByList: orderByList?.call(TimeLog.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Returns the first matching [TimeLog] matching the given query parameters.
  ///
  /// Use [where] to specify which items to include in the return value.
  /// If none is specified, all items will be returned.
  ///
  /// To specify the order use [orderBy] or [orderByList]
  /// when sorting by multiple columns.
  ///
  /// [offset] defines how many items to skip, after which the next one will be picked.
  ///
  /// ```dart
  /// var youngestPerson = await Persons.db.findFirstRow(
  ///   session,
  ///   where: (t) => t.lastName.equals('Jones'),
  ///   orderBy: (t) => t.age,
  /// );
  /// ```
  Future<TimeLog?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<TimeLogTable>? where,
    int? offset,
    _i1.OrderByBuilder<TimeLogTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<TimeLogTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<TimeLog>(
      where: where?.call(TimeLog.t),
      orderBy: orderBy?.call(TimeLog.t),
      orderByList: orderByList?.call(TimeLog.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Finds a single [TimeLog] by its [id] or null if no such row exists.
  Future<TimeLog?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<TimeLog>(
      id,
      transaction: transaction,
    );
  }

  /// Inserts all [TimeLog]s in the list and returns the inserted rows.
  ///
  /// The returned [TimeLog]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  Future<List<TimeLog>> insert(
    _i1.Session session,
    List<TimeLog> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<TimeLog>(
      rows,
      transaction: transaction,
    );
  }

  /// Inserts a single [TimeLog] and returns the inserted row.
  ///
  /// The returned [TimeLog] will have its `id` field set.
  Future<TimeLog> insertRow(
    _i1.Session session,
    TimeLog row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<TimeLog>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [TimeLog]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<TimeLog>> update(
    _i1.Session session,
    List<TimeLog> rows, {
    _i1.ColumnSelections<TimeLogTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<TimeLog>(
      rows,
      columns: columns?.call(TimeLog.t),
      transaction: transaction,
    );
  }

  /// Updates a single [TimeLog]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<TimeLog> updateRow(
    _i1.Session session,
    TimeLog row, {
    _i1.ColumnSelections<TimeLogTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<TimeLog>(
      row,
      columns: columns?.call(TimeLog.t),
      transaction: transaction,
    );
  }

  /// Deletes all [TimeLog]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<TimeLog>> delete(
    _i1.Session session,
    List<TimeLog> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<TimeLog>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [TimeLog].
  Future<TimeLog> deleteRow(
    _i1.Session session,
    TimeLog row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<TimeLog>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<TimeLog>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<TimeLogTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<TimeLog>(
      where: where(TimeLog.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<TimeLogTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<TimeLog>(
      where: where?.call(TimeLog.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
