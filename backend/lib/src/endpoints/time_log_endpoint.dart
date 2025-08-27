import 'package:serverpod/serverpod.dart';
import '../generated/protocol.dart';

class TimeLogEndpoint extends Endpoint {
  // Create a new time log (manual entry or after stop timer)
  Future<TimeLog> createLog(
    Session session, {
    required int workerId,
    required int taskId,
    required double hoursWorked,
  }) async {
    var log = TimeLog(
      workerId: workerId,
      taskId: taskId,
      hoursWorked: hoursWorked,
      date: DateTime.now(),
      isApproved: false, // default pending approval
    );

    return await TimeLog.db.insertRow(session, log);
  }

  // Approve a log (employer action)
  Future<TimeLog> approveLog(
    Session session, {
    required int logId,
  }) async {
    var log = await TimeLog.db.findById(session, logId);
    if (log == null) throw Exception("Log not found");

    log.isApproved = true;

    return await TimeLog.db.updateRow(session, log);
  }

  // Get all logs for a worker
  Future<List<TimeLog>> getLogsForWorker(
    Session session, {
    required int workerId,
  }) async {
    return await TimeLog.db.find(
      session,
      where: (l) => l.workerId.equals(workerId),
    );
  }

  // Get total approved hours (used for payments)
  Future<double> getApprovedHours(
    Session session, {
    required int workerId,
  }) async {
    var logs = await TimeLog.db.find(
      session,
      where: (l) =>
          l.workerId.equals(workerId) & l.isApproved.equals(true),
    );

    return logs.fold(0.0, (sum, log) => sum + log.hoursWorked);
  }
}
