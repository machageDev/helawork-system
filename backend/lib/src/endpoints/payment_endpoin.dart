import 'package:serverpod/serverpod.dart';
import '../generated/protocol.dart';

class PaymentEndpoint extends Endpoint {
  // Create a new payment rate
  Future<PaymentRate> createRate(
    Session session, {
    required int employerId,
    required int workerId,
    required double ratePerHour,
  }) async {
    var rate = PaymentRate(
      employerId: employerId,
      workerId: workerId,
      ratePerHour: ratePerHour,
      effectiveFrom: DateTime.now(),
      effectiveTo: null,
      createdAt: DateTime.now(),
    );

    return await PaymentRate.db.insertRow(session, rate);
  }

  // Update payment rate by closing old one and inserting new
  Future<PaymentRate> updateRate(
    Session session, {
    required int rateId,
    required double newRatePerHour,
  }) async {
    var oldRate = await PaymentRate.db.findById(session, rateId);
    if (oldRate == null) {
      throw Exception("Rate not found");
    }

    oldRate.effectiveTo = DateTime.now();
    await PaymentRate.db.updateRow(session, oldRate);

    var newRate = PaymentRate(
      employerId: oldRate.employerId,
      workerId: oldRate.workerId,
      ratePerHour: newRatePerHour,
      effectiveFrom: DateTime.now(),
      effectiveTo: null,
      createdAt: DateTime.now(),
    );

    return await PaymentRate.db.insertRow(session, newRate);
  }

  // Get active rate for a worker
  Future<PaymentRate?> getActiveRate(
    Session session, {
    required int workerId,
  }) async {
    return await PaymentRate.db.findFirstRow(
      session,
      where: (t) =>
          t.workerId.equals(workerId) & t.effectiveTo.equals(null),
    );
  }

  // Get all rates for a worker
  Future<List<PaymentRate>> getRatesForWorker(
    Session session, {
    required int workerId,
  }) async {
    return await PaymentRate.db.find(
      session,
      where: (t) => t.workerId.equals(workerId),
      orderBy: (t) => t.effectiveFrom,
      orderDescending: true,
    );
  }
}
