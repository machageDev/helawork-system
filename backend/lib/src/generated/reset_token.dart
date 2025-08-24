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

abstract class ResetToken
    implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
  ResetToken._({
    this.id,
    required this.userId,
    required this.token,
    required this.expiresAt,
  });

  factory ResetToken({
    int? id,
    required int userId,
    required String token,
    required DateTime expiresAt,
  }) = _ResetTokenImpl;

  factory ResetToken.fromJson(Map<String, dynamic> jsonSerialization) {
    return ResetToken(
      id: jsonSerialization['id'] as int?,
      userId: jsonSerialization['userId'] as int,
      token: jsonSerialization['token'] as String,
      expiresAt:
          _i1.DateTimeJsonExtension.fromJson(jsonSerialization['expiresAt']),
    );
  }

  static final t = ResetTokenTable();

  static const db = ResetTokenRepository._();

  @override
  int? id;

  int userId;

  String token;

  DateTime expiresAt;

  @override
  _i1.Table<int?> get table => t;

  /// Returns a shallow copy of this [ResetToken]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  ResetToken copyWith({
    int? id,
    int? userId,
    String? token,
    DateTime? expiresAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'userId': userId,
      'token': token,
      'expiresAt': expiresAt.toJson(),
    };
  }

  @override
  Map<String, dynamic> toJsonForProtocol() {
    return {
      if (id != null) 'id': id,
      'userId': userId,
      'token': token,
      'expiresAt': expiresAt.toJson(),
    };
  }

  static ResetTokenInclude include() {
    return ResetTokenInclude._();
  }

  static ResetTokenIncludeList includeList({
    _i1.WhereExpressionBuilder<ResetTokenTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ResetTokenTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ResetTokenTable>? orderByList,
    ResetTokenInclude? include,
  }) {
    return ResetTokenIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(ResetToken.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(ResetToken.t),
      include: include,
    );
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _ResetTokenImpl extends ResetToken {
  _ResetTokenImpl({
    int? id,
    required int userId,
    required String token,
    required DateTime expiresAt,
  }) : super._(
          id: id,
          userId: userId,
          token: token,
          expiresAt: expiresAt,
        );

  /// Returns a shallow copy of this [ResetToken]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  ResetToken copyWith({
    Object? id = _Undefined,
    int? userId,
    String? token,
    DateTime? expiresAt,
  }) {
    return ResetToken(
      id: id is int? ? id : this.id,
      userId: userId ?? this.userId,
      token: token ?? this.token,
      expiresAt: expiresAt ?? this.expiresAt,
    );
  }
}

class ResetTokenTable extends _i1.Table<int?> {
  ResetTokenTable({super.tableRelation}) : super(tableName: 'reset_token') {
    userId = _i1.ColumnInt(
      'userId',
      this,
    );
    token = _i1.ColumnString(
      'token',
      this,
    );
    expiresAt = _i1.ColumnDateTime(
      'expiresAt',
      this,
    );
  }

  late final _i1.ColumnInt userId;

  late final _i1.ColumnString token;

  late final _i1.ColumnDateTime expiresAt;

  @override
  List<_i1.Column> get columns => [
        id,
        userId,
        token,
        expiresAt,
      ];
}

class ResetTokenInclude extends _i1.IncludeObject {
  ResetTokenInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table<int?> get table => ResetToken.t;
}

class ResetTokenIncludeList extends _i1.IncludeList {
  ResetTokenIncludeList._({
    _i1.WhereExpressionBuilder<ResetTokenTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(ResetToken.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => ResetToken.t;
}

class ResetTokenRepository {
  const ResetTokenRepository._();

  /// Returns a list of [ResetToken]s matching the given query parameters.
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
  Future<List<ResetToken>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ResetTokenTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<ResetTokenTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ResetTokenTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<ResetToken>(
      where: where?.call(ResetToken.t),
      orderBy: orderBy?.call(ResetToken.t),
      orderByList: orderByList?.call(ResetToken.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Returns the first matching [ResetToken] matching the given query parameters.
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
  Future<ResetToken?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ResetTokenTable>? where,
    int? offset,
    _i1.OrderByBuilder<ResetTokenTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<ResetTokenTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<ResetToken>(
      where: where?.call(ResetToken.t),
      orderBy: orderBy?.call(ResetToken.t),
      orderByList: orderByList?.call(ResetToken.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Finds a single [ResetToken] by its [id] or null if no such row exists.
  Future<ResetToken?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<ResetToken>(
      id,
      transaction: transaction,
    );
  }

  /// Inserts all [ResetToken]s in the list and returns the inserted rows.
  ///
  /// The returned [ResetToken]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  Future<List<ResetToken>> insert(
    _i1.Session session,
    List<ResetToken> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<ResetToken>(
      rows,
      transaction: transaction,
    );
  }

  /// Inserts a single [ResetToken] and returns the inserted row.
  ///
  /// The returned [ResetToken] will have its `id` field set.
  Future<ResetToken> insertRow(
    _i1.Session session,
    ResetToken row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<ResetToken>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [ResetToken]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<ResetToken>> update(
    _i1.Session session,
    List<ResetToken> rows, {
    _i1.ColumnSelections<ResetTokenTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<ResetToken>(
      rows,
      columns: columns?.call(ResetToken.t),
      transaction: transaction,
    );
  }

  /// Updates a single [ResetToken]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<ResetToken> updateRow(
    _i1.Session session,
    ResetToken row, {
    _i1.ColumnSelections<ResetTokenTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<ResetToken>(
      row,
      columns: columns?.call(ResetToken.t),
      transaction: transaction,
    );
  }

  /// Deletes all [ResetToken]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<ResetToken>> delete(
    _i1.Session session,
    List<ResetToken> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<ResetToken>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [ResetToken].
  Future<ResetToken> deleteRow(
    _i1.Session session,
    ResetToken row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<ResetToken>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<ResetToken>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<ResetTokenTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<ResetToken>(
      where: where(ResetToken.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<ResetTokenTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<ResetToken>(
      where: where?.call(ResetToken.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
