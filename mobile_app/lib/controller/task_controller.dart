import '../models/task.dart';

class TaskController {
  final List<Task> tasks = [
    Task(id: '1', title: 'Daily Standup', project: 'HelaWork', due: DateTime.now()),
    Task(id: '2', title: 'Backend API Fix', project: 'Serverpod'),
  ];

  void add(Task t) => tasks.add(t);

  void toggle(String id) {
    final i = tasks.indexWhere((t) => t.id == id);
    if (i != -1) {
      tasks[i] = tasks[i].copyWith(completed: !tasks[i].completed);
    }
  }

  void remove(String id) => tasks.removeWhere((t) => t.id == id);

  int get openTasksCount => tasks.where((t) => !t.completed).length;
}
