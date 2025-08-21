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
      assignedTo: 1, // e.g., user with id = 1
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

  void add(Task t) => tasks.add(t);

  void toggle(int id) {
    final i = tasks.indexWhere((t) => t.id == id);
    if (i != -1) {
      tasks[i] = tasks[i].copyWith(
        status: tasks[i].status == 'done' ? 'open' : 'done',
      );
    }
  }

  void remove(int id) => tasks.removeWhere((t) => t.id == id);

  int get openTasksCount => tasks.where((t) => t.status != 'done').length;
}
