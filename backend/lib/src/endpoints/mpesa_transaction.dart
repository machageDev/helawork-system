import 'package:serverpod/serverpod.dart';
import '../generated/protocol.dart';

class MpesaTransactionEndpoint extends Endpoint {
  // Create a new M-PESA transaction (before sending request to Daraja API)
  Future<MpesaTransaction> createTransaction(
    Session session, {
    required int userId,
    required int employerId,
    required double amount,
    required String phoneNumber,
  }) async {
    var tx = MpesaTransaction(
      userId: userId,
      employerId: employerId,
      amount: amount,
      phoneNumber: phoneNumber,
      status: 'pending',
      requestPayload: null,
      responsePayload: null,
      transactionId: null,
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    );

    return await MpesaTransaction.db.insertRow(session, tx);
  }

  // Update transaction after response from M-PESA API
  Future<MpesaTransaction> updateTransaction(
    Session session, {
    required int transactionId,
    required String status,
    String? mpesaCode,
    String? requestPayload,
    String? responsePayload,
  }) async {
    var tx = await MpesaTransaction.db.findById(session, transactionId);
    if (tx == null) {
      throw Exception("Transaction not found");
    }

    tx.status = status;
    tx.transactionId = mpesaCode;
    tx.requestPayload = requestPayload;
    tx.responsePayload = responsePayload;
    tx.updatedAt = DateTime.now();

    return await MpesaTransaction.db.updateRow(session, tx);
  }

  // Get all transactions for a worker
  Future<List<MpesaTransaction>> getTransactionsForWorker(
    Session session, {
    required int userId,
  }) async {
    return await MpesaTransaction.db.find(
      session,
      where: (t) => t.userId.equals(userId),
      orderBy: (t) => t.createdAt,
      orderDescending: true,
    );
  }

  // Get all transactions for an employer
  Future<List<MpesaTransaction>> getTransactionsForEmployer(
    Session session, {
    required int employerId,
  }) async {
    return await MpesaTransaction.db.find(
      session,
      where: (t) => t.employerId.equals(employerId),
      orderBy: (t) => t.createdAt,
      orderDescending: true,
    );
  }

  // Get single transaction
  Future<MpesaTransaction?> getTransactionById(
    Session session,
    int id,
  ) async {
    return await MpesaTransaction.db.findById(session, id);
  }
}
