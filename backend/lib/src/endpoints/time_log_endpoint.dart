import 'package:serverpod/serverpod.dart';
import '../generated/protocol.dart';

class TimeLogEndpoint extends Endpoint {
  // Start a time log
  Future<TimeLog> startLog(Session session, int userId, int taskId) async {
    var log = TimeLog(
      userId: userId,
      taskId: taskId,
      startTime: DateTime.now(),
      approved: false,
    );
    await TimeLog.db.insertRow(session, log);
    return log;
  }

  // Stop a time log
  Future<bool> stopLog(Session session, int logId) async {
    var log = await TimeLog.db.findById(session, logId);
    if (log == null || log.endTime != null) return false;

    log.endTime = DateTime.now();
    await TimeLog.db.updateRow(session, log);
    return true;
  }

  // Get all logs for a user
  Future<List<TimeLog>> getUserLogs(Session session, int userId) async {
    return await TimeLog.db.find(
      session,
      where: (l) => l.userId.equals(userId),
    );
  }

  // Approve a log (employer action)
  Future<bool> approveLog(Session session, int logId) async {
    var log = await TimeLog.db.findById(session, logId);
    if (log == null) return false;

    log.approved = true;
    await TimeLog.db.updateRow(session, log);
    return true;
  }
}
