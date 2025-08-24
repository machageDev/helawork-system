import 'package:serverpod/serverpod.dart';
import '../generated/protocol.dart';

class TimeLogEndpoint extends Endpoint {
  // Start logging manually
 Future<TimeLog> startLog(Session session, int workerId, int taskId) async {
  var log = TimeLog(
    workerId: workerId,
    taskId: taskId,
    startedAt: DateTime.now(),
    createdAt: DateTime.now(),
  );

  await TimeLog.db.insertRow(session, log);
  return log;
}


  // Stop log
  Future<TimeLog?> stopLog(Session session, int logId) async {
    var log = await TimeLog.db.findById(session, logId);
    if (log == null) throw Exception("Log not found");

    log.endedAt = DateTime.now();
    log.durationMinutes = log.endedAt!.difference(log.startedAt).inMinutes;

    await TimeLog.db.updateRow(session, log);
    return log;
  }

  // Worker’s logs
  Future<List<TimeLog>> getLogsForWorker(Session session, int workerId) async {
    return await TimeLog.db.find(session,
      where: (l) => l.workerId.equals(workerId),
    );
  }
}
