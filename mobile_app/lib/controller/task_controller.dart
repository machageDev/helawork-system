import 'package:helawork_client/helawork_client.dart';

class TaskController {
  final List<Task> tasks = [
    Task(
      id: 1,
      title: 'Daily Standup',
      description: 'Attend daily sync with the team',
      deadline: DateTime.now().add(const Duration(hours: 2)),
      status: 'open',
      createdAt: DateTime.now(),
      assignedTo: 1, // Example user ID
    ),
    Task(
      id: 2,
      title: 'Backend API Fix',
      description: 'Fix authentication issue in Serverpod backend',
      deadline: DateTime.now().add(const Duration(days: 1)),
      status: 'in_progress',
      createdAt: DateTime.now(),
      assignedTo: 2,
    ),
  ];

  TaskController(Client client);

  /// Add a new task
  void add(Task t) => tasks.add(t);

  /// Toggle between "done" and "open"
  void toggle(int id) {
    final index = tasks.indexWhere((t) => t.id == id);
    if (index != -1) {
      final task = tasks[index];
      tasks[index] = Task(
        id: task.id,
        title: task.title,
        description: task.description,
        deadline: task.deadline,
        status: task.status == 'done' ? 'open' : 'done',
        createdAt: task.createdAt,
        assignedTo: task.assignedTo,
      );
    }
  }

  /// Remove a task by id
  void remove(int id) => tasks.removeWhere((t) => t.id == id);

  /// Count tasks that are not marked as done
  int get openTasksCount => tasks.where((t) => t.status != 'done').length;
}
