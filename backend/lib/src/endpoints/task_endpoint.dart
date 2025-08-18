import 'package:serverpod/serverpod.dart';
import '../generated/protocol.dart';

class TaskEndpoint extends Endpoint {
  
  Future<Task> createTask(Session session, Task task) async {
    return await Task.db.insertRow(session, task);
  }

  
  Future<List<Task>> getUserTasks(Session session, int userId) async {
    return await Task.db.find(
      session,
      where: (t) => t.assignedTo.equals(userId),
    );
  }

  
  Future<bool> updateTaskStatus(Session session, int taskId, String status) async {
    var task = await Task.db.findById(session, taskId); 
    if (task == null) return false;

    task.status = status;
    await Task.db.updateRow(session, task);
    return true;
  }
}
