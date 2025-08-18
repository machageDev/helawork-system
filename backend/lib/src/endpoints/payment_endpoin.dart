import 'package:serverpod/serverpod.dart';
import '../generated/protocol.dart';

class PaymentEndpoint extends Endpoint {
  // Create a payment record (based on approved logs)
  Future<Payment> createPayment(
      Session session, int userId, double ratePerHour) async {
    var logs = await TimeLog.db.find(
      session,
      where: (l) => l.userId.equals(userId) & l.approved.equals(true),
    );

    double totalHours = 0;
    for (var log in logs) {
      if (log.endTime != null) {
        totalHours += log.endTime!.difference(log.startTime).inMinutes / 60.0;
      }
    }

    var totalAmount = totalHours * ratePerHour;

    var payment = Payment(
      userId: userId,
      totalHours: totalHours,
      ratePerHour: ratePerHour,
      totalAmount: totalAmount,
      paymentMethod: "M-PESA",
      status: "pending",
      createdAt: DateTime.now(),
    );

    await Payment.db.insertRow(session, payment);
    return payment;
  }

  // Mark a payment as completed
  Future<bool> completePayment(Session session, int paymentId) async {
    var payment = await Payment.db.findById(session, paymentId);
    if (payment == null) return false;

    payment.status = "completed";
    await Payment.db.updateRow(session, payment);
    return true;
  }

  // Get all payments for a user
  Future<List<Payment>> getUserPayments(Session session, int userId) async {
    return await Payment.db.find(
      session,
      where: (p) => p.userId.equals(userId),
    );
  }
}
