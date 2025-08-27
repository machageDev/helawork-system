import 'package:serverpod/serverpod.dart';
import '../generated/protocol.dart';

class PaymentEndpoint extends Endpoint {
  // Mock: Withdraw payment to M-PESA (Daraja API integration can go here later)
  Future<String> withdrawPayment(
    Session session, {
    required int workerId,
    required String phoneNumber,
  }) async {
    // Calculate approved earnings
    var logs = await TimeLog.db.find(
      session,
      where: (l) => l.workerId.equals(workerId) & l.isApproved.equals(true),
    );

    var totalHours = logs.fold<double>(
      0.0,
      (sum, log) => sum + (log.hoursWorked),
    );

    var rate = await PaymentRate.db.findFirstRow(
      session,
      where: (r) => r.workerId.equals(workerId),
    );

    var amount = totalHours * (rate?.ratePerHour ?? 0);

    if (amount <= 0) {
      return "No approved earnings available for withdrawal.";
    }

    // TODO: Integrate with Safaricom Daraja API here.
    // For now, simulate success:
    return "KES ${amount.toStringAsFixed(2)} sent to $phoneNumber via M-PESA";
  }

  // Optional: Fetch worker's active hourly rate
  Future<PaymentRate?> getActiveRate(
    Session session, {
    required int workerId,
  }) async {
    return await PaymentRate.db.findFirstRow(
      session,
      where: (r) => r.workerId.equals(workerId),
    );
  }
}
