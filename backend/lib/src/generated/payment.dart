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

abstract class PaymentRate
    implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
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

  static final t = PaymentRateTable();

  static const db = PaymentRateRepository._();

  @override
  int? id;

  int workerId;

  int employerId;

  double ratePerHour;

  DateTime effectiveFrom;

  DateTime? effectiveTo;

  DateTime createdAt;

  @override
  _i1.Table<int?> get table => t;

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
  Map<String, dynamic> toJsonForProtocol() {
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

  static PaymentRateInclude include() {
    return PaymentRateInclude._();
  }

  static PaymentRateIncludeList includeList({
    _i1.WhereExpressionBuilder<PaymentRateTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PaymentRateTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PaymentRateTable>? orderByList,
    PaymentRateInclude? include,
  }) {
    return PaymentRateIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(PaymentRate.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(PaymentRate.t),
      include: include,
    );
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

class PaymentRateTable extends _i1.Table<int?> {
  PaymentRateTable({super.tableRelation}) : super(tableName: 'payment_rate') {
    workerId = _i1.ColumnInt(
      'workerId',
      this,
    );
    employerId = _i1.ColumnInt(
      'employerId',
      this,
    );
    ratePerHour = _i1.ColumnDouble(
      'ratePerHour',
      this,
    );
    effectiveFrom = _i1.ColumnDateTime(
      'effectiveFrom',
      this,
    );
    effectiveTo = _i1.ColumnDateTime(
      'effectiveTo',
      this,
    );
    createdAt = _i1.ColumnDateTime(
      'createdAt',
      this,
    );
  }

  late final _i1.ColumnInt workerId;

  late final _i1.ColumnInt employerId;

  late final _i1.ColumnDouble ratePerHour;

  late final _i1.ColumnDateTime effectiveFrom;

  late final _i1.ColumnDateTime effectiveTo;

  late final _i1.ColumnDateTime createdAt;

  @override
  List<_i1.Column> get columns => [
        id,
        workerId,
        employerId,
        ratePerHour,
        effectiveFrom,
        effectiveTo,
        createdAt,
      ];
}

class PaymentRateInclude extends _i1.IncludeObject {
  PaymentRateInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table<int?> get table => PaymentRate.t;
}

class PaymentRateIncludeList extends _i1.IncludeList {
  PaymentRateIncludeList._({
    _i1.WhereExpressionBuilder<PaymentRateTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(PaymentRate.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => PaymentRate.t;
}

class PaymentRateRepository {
  const PaymentRateRepository._();

  /// Returns a list of [PaymentRate]s matching the given query parameters.
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
  Future<List<PaymentRate>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PaymentRateTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<PaymentRateTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PaymentRateTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<PaymentRate>(
      where: where?.call(PaymentRate.t),
      orderBy: orderBy?.call(PaymentRate.t),
      orderByList: orderByList?.call(PaymentRate.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Returns the first matching [PaymentRate] matching the given query parameters.
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
  Future<PaymentRate?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PaymentRateTable>? where,
    int? offset,
    _i1.OrderByBuilder<PaymentRateTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<PaymentRateTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<PaymentRate>(
      where: where?.call(PaymentRate.t),
      orderBy: orderBy?.call(PaymentRate.t),
      orderByList: orderByList?.call(PaymentRate.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Finds a single [PaymentRate] by its [id] or null if no such row exists.
  Future<PaymentRate?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<PaymentRate>(
      id,
      transaction: transaction,
    );
  }

  /// Inserts all [PaymentRate]s in the list and returns the inserted rows.
  ///
  /// The returned [PaymentRate]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  Future<List<PaymentRate>> insert(
    _i1.Session session,
    List<PaymentRate> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<PaymentRate>(
      rows,
      transaction: transaction,
    );
  }

  /// Inserts a single [PaymentRate] and returns the inserted row.
  ///
  /// The returned [PaymentRate] will have its `id` field set.
  Future<PaymentRate> insertRow(
    _i1.Session session,
    PaymentRate row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<PaymentRate>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [PaymentRate]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<PaymentRate>> update(
    _i1.Session session,
    List<PaymentRate> rows, {
    _i1.ColumnSelections<PaymentRateTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<PaymentRate>(
      rows,
      columns: columns?.call(PaymentRate.t),
      transaction: transaction,
    );
  }

  /// Updates a single [PaymentRate]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<PaymentRate> updateRow(
    _i1.Session session,
    PaymentRate row, {
    _i1.ColumnSelections<PaymentRateTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<PaymentRate>(
      row,
      columns: columns?.call(PaymentRate.t),
      transaction: transaction,
    );
  }

  /// Deletes all [PaymentRate]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<PaymentRate>> delete(
    _i1.Session session,
    List<PaymentRate> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<PaymentRate>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [PaymentRate].
  Future<PaymentRate> deleteRow(
    _i1.Session session,
    PaymentRate row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<PaymentRate>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<PaymentRate>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<PaymentRateTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<PaymentRate>(
      where: where(PaymentRate.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<PaymentRateTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<PaymentRate>(
      where: where?.call(PaymentRate.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
