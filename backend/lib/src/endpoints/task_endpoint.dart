import 'package:serverpod/serverpod.dart';
import '../generated/protocol.dart';

class TaskEndpoint extends Endpoint {
  // Approve a worker's logged hours
  Future<TimeLog> approveTimeLog(
    Session session, {
    required int timeLogId,
  }) async {
    var log = await TimeLog.db.findById(session, timeLogId);

    if (log == null) {
      throw Exception("TimeLog not found");
    }

    log.isApproved = true;

    // Save update
    await TimeLog.db.updateRow(session, log);

    return log;
  }

  // Get all approved hours for a worker
  Future<double> getApprovedHours(
    Session session, {
    required int workerId,
  }) async {
    var logs = await TimeLog.db.find(
      session,
      where: (t) => t.workerId.equals(workerId) & t.isApproved.equals(true),
    );

    // Force fold to use double, handle null hoursWorked
    return logs.fold<double>(
      0.0,
      (sum, log) => sum + (log.hoursWorked),
    );
  }
}
