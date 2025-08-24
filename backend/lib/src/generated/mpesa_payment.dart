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

abstract class MpesaTransaction
    implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
  MpesaTransaction._({
    this.id,
    required this.userId,
    required this.employerId,
    required this.amount,
    required this.phoneNumber,
    this.transactionId,
    required this.status,
    this.requestPayload,
    this.responsePayload,
    required this.createdAt,
    required this.updatedAt,
  });

  factory MpesaTransaction({
    int? id,
    required int userId,
    required int employerId,
    required double amount,
    required String phoneNumber,
    String? transactionId,
    required String status,
    String? requestPayload,
    String? responsePayload,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _MpesaTransactionImpl;

  factory MpesaTransaction.fromJson(Map<String, dynamic> jsonSerialization) {
    return MpesaTransaction(
      id: jsonSerialization['id'] as int?,
      userId: jsonSerialization['userId'] as int,
      employerId: jsonSerialization['employerId'] as int,
      amount: (jsonSerialization['amount'] as num).toDouble(),
      phoneNumber: jsonSerialization['phoneNumber'] as String,
      transactionId: jsonSerialization['transactionId'] as String?,
      status: jsonSerialization['status'] as String,
      requestPayload: jsonSerialization['requestPayload'] as String?,
      responsePayload: jsonSerialization['responsePayload'] as String?,
      createdAt:
          _i1.DateTimeJsonExtension.fromJson(jsonSerialization['createdAt']),
      updatedAt:
          _i1.DateTimeJsonExtension.fromJson(jsonSerialization['updatedAt']),
    );
  }

  static final t = MpesaTransactionTable();

  static const db = MpesaTransactionRepository._();

  @override
  int? id;

  int userId;

  int employerId;

  double amount;

  String phoneNumber;

  String? transactionId;

  String status;

  String? requestPayload;

  String? responsePayload;

  DateTime createdAt;

  DateTime updatedAt;

  @override
  _i1.Table<int?> get table => t;

  /// Returns a shallow copy of this [MpesaTransaction]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  MpesaTransaction copyWith({
    int? id,
    int? userId,
    int? employerId,
    double? amount,
    String? phoneNumber,
    String? transactionId,
    String? status,
    String? requestPayload,
    String? responsePayload,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'userId': userId,
      'employerId': employerId,
      'amount': amount,
      'phoneNumber': phoneNumber,
      if (transactionId != null) 'transactionId': transactionId,
      'status': status,
      if (requestPayload != null) 'requestPayload': requestPayload,
      if (responsePayload != null) 'responsePayload': responsePayload,
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'userId': userId,
      'employerId': employerId,
      'amount': amount,
      'phoneNumber': phoneNumber,
      if (transactionId != null) 'transactionId': transactionId,
      'status': status,
      if (requestPayload != null) 'requestPayload': requestPayload,
      if (responsePayload != null) 'responsePayload': responsePayload,
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
    };
  }

  static MpesaTransactionInclude include() {
    return MpesaTransactionInclude._();
  }

  static MpesaTransactionIncludeList includeList({
    _i1.WhereExpressionBuilder<MpesaTransactionTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<MpesaTransactionTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<MpesaTransactionTable>? orderByList,
    MpesaTransactionInclude? include,
  }) {
    return MpesaTransactionIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(MpesaTransaction.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(MpesaTransaction.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _MpesaTransactionImpl extends MpesaTransaction {
  _MpesaTransactionImpl({
    int? id,
    required int userId,
    required int employerId,
    required double amount,
    required String phoneNumber,
    String? transactionId,
    required String status,
    String? requestPayload,
    String? responsePayload,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) : super._(
          id: id,
          userId: userId,
          employerId: employerId,
          amount: amount,
          phoneNumber: phoneNumber,
          transactionId: transactionId,
          status: status,
          requestPayload: requestPayload,
          responsePayload: responsePayload,
          createdAt: createdAt,
          updatedAt: updatedAt,
        );

  /// Returns a shallow copy of this [MpesaTransaction]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  MpesaTransaction copyWith({
    Object? id = _Undefined,
    int? userId,
    int? employerId,
    double? amount,
    String? phoneNumber,
    Object? transactionId = _Undefined,
    String? status,
    Object? requestPayload = _Undefined,
    Object? responsePayload = _Undefined,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return MpesaTransaction(
      id: id is int? ? id : this.id,
      userId: userId ?? this.userId,
      employerId: employerId ?? this.employerId,
      amount: amount ?? this.amount,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      transactionId:
          transactionId is String? ? transactionId : this.transactionId,
      status: status ?? this.status,
      requestPayload:
          requestPayload is String? ? requestPayload : this.requestPayload,
      responsePayload:
          responsePayload is String? ? responsePayload : this.responsePayload,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}

class MpesaTransactionTable extends _i1.Table<int?> {
  MpesaTransactionTable({super.tableRelation})
      : super(tableName: 'mpesa_transaction') {
    userId = _i1.ColumnInt(
      'userId',
      this,
    );
    employerId = _i1.ColumnInt(
      'employerId',
      this,
    );
    amount = _i1.ColumnDouble(
      'amount',
      this,
    );
    phoneNumber = _i1.ColumnString(
      'phoneNumber',
      this,
    );
    transactionId = _i1.ColumnString(
      'transactionId',
      this,
    );
    status = _i1.ColumnString(
      'status',
      this,
    );
    requestPayload = _i1.ColumnString(
      'requestPayload',
      this,
    );
    responsePayload = _i1.ColumnString(
      'responsePayload',
      this,
    );
    createdAt = _i1.ColumnDateTime(
      'createdAt',
      this,
    );
    updatedAt = _i1.ColumnDateTime(
      'updatedAt',
      this,
    );
  }

  late final _i1.ColumnInt userId;

  late final _i1.ColumnInt employerId;

  late final _i1.ColumnDouble amount;

  late final _i1.ColumnString phoneNumber;

  late final _i1.ColumnString transactionId;

  late final _i1.ColumnString status;

  late final _i1.ColumnString requestPayload;

  late final _i1.ColumnString responsePayload;

  late final _i1.ColumnDateTime createdAt;

  late final _i1.ColumnDateTime updatedAt;

  @override
  List<_i1.Column> get columns => [
        id,
        userId,
        employerId,
        amount,
        phoneNumber,
        transactionId,
        status,
        requestPayload,
        responsePayload,
        createdAt,
        updatedAt,
      ];
}

class MpesaTransactionInclude extends _i1.IncludeObject {
  MpesaTransactionInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table<int?> get table => MpesaTransaction.t;
}

class MpesaTransactionIncludeList extends _i1.IncludeList {
  MpesaTransactionIncludeList._({
    _i1.WhereExpressionBuilder<MpesaTransactionTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(MpesaTransaction.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => MpesaTransaction.t;
}

class MpesaTransactionRepository {
  const MpesaTransactionRepository._();

  /// Returns a list of [MpesaTransaction]s matching the given query parameters.
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
  Future<List<MpesaTransaction>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<MpesaTransactionTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<MpesaTransactionTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<MpesaTransactionTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<MpesaTransaction>(
      where: where?.call(MpesaTransaction.t),
      orderBy: orderBy?.call(MpesaTransaction.t),
      orderByList: orderByList?.call(MpesaTransaction.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Returns the first matching [MpesaTransaction] matching the given query parameters.
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
  Future<MpesaTransaction?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<MpesaTransactionTable>? where,
    int? offset,
    _i1.OrderByBuilder<MpesaTransactionTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<MpesaTransactionTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<MpesaTransaction>(
      where: where?.call(MpesaTransaction.t),
      orderBy: orderBy?.call(MpesaTransaction.t),
      orderByList: orderByList?.call(MpesaTransaction.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Finds a single [MpesaTransaction] by its [id] or null if no such row exists.
  Future<MpesaTransaction?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<MpesaTransaction>(
      id,
      transaction: transaction,
    );
  }

  /// Inserts all [MpesaTransaction]s in the list and returns the inserted rows.
  ///
  /// The returned [MpesaTransaction]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  Future<List<MpesaTransaction>> insert(
    _i1.Session session,
    List<MpesaTransaction> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<MpesaTransaction>(
      rows,
      transaction: transaction,
    );
  }

  /// Inserts a single [MpesaTransaction] and returns the inserted row.
  ///
  /// The returned [MpesaTransaction] will have its `id` field set.
  Future<MpesaTransaction> insertRow(
    _i1.Session session,
    MpesaTransaction row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<MpesaTransaction>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [MpesaTransaction]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<MpesaTransaction>> update(
    _i1.Session session,
    List<MpesaTransaction> rows, {
    _i1.ColumnSelections<MpesaTransactionTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<MpesaTransaction>(
      rows,
      columns: columns?.call(MpesaTransaction.t),
      transaction: transaction,
    );
  }

  /// Updates a single [MpesaTransaction]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<MpesaTransaction> updateRow(
    _i1.Session session,
    MpesaTransaction row, {
    _i1.ColumnSelections<MpesaTransactionTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<MpesaTransaction>(
      row,
      columns: columns?.call(MpesaTransaction.t),
      transaction: transaction,
    );
  }

  /// Deletes all [MpesaTransaction]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<MpesaTransaction>> delete(
    _i1.Session session,
    List<MpesaTransaction> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<MpesaTransaction>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [MpesaTransaction].
  Future<MpesaTransaction> deleteRow(
    _i1.Session session,
    MpesaTransaction row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<MpesaTransaction>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<MpesaTransaction>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<MpesaTransactionTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<MpesaTransaction>(
      where: where(MpesaTransaction.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<MpesaTransactionTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<MpesaTransaction>(
      where: where?.call(MpesaTransaction.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
