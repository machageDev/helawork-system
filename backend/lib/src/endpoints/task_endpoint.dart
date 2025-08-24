import 'package:serverpod/serverpod.dart';
import '../generated/protocol.dart';

class TaskEndpoint extends Endpoint {
  
  Future<Task> createTask(
    Session session,
    int employerId,
    String title,
    String description,
    DateTime deadline,
  ) async {
    var task = Task(
      employerId: employerId,
      workerId: null,
      title: title,
      description: description,
      deadline: deadline,
      status: 'pending',
      createdAt: DateTime.now(),
    );

    await Task.db.insertRow(session, task);
    return task;
  }

  //  Assign task to worker
  Future<Task?> assignTask(Session session, int taskId, int workerId) async {
    var task = await Task.db.findById(session, taskId);
    if (task == null) throw Exception('Task not found');

    task.workerId = workerId;
    task.status = 'in_progress';

    await Task.db.updateRow(session, task);
    return task;
  }

  //  Update task status
  Future<Task?> updateTaskStatus(Session session, int taskId, String status) async {
    var task = await Task.db.findById(session, taskId);
    if (task == null) throw Exception('Task not found');

    task.status = status;
    await Task.db.updateRow(session, task);

    return task;
  }

  //  Get all tasks for an employer
  Future<List<Task>> getTasksForEmployer(Session session, int employerId) async {
    return await Task.db.find(
      session,
      where: (t) => t.employerId.equals(employerId),
    );
  }

  //  Get all tasks for a worker
  Future<List<Task>> getTasksForWorker(Session session, int workerId) async {
    return await Task.db.find(
      session,
      where: (t) => t.workerId.equals(workerId),
    );
  }
}
