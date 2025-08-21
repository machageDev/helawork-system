import 'package:flutter/material.dart';
import '../../controllers/task_controller.dart';
import '../../models/task.dart';

class TasksScreen extends StatefulWidget {
  final TaskController taskController;

  const TasksScreen({super.key, required this.taskController});

  @override
  State<TasksScreen> createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: widget.taskController.tasks.length,
      itemBuilder: (context, index) {
        final task = widget.taskController.tasks[index];
        return Card(
          child: ListTile(
            leading: Checkbox(
              value: task.completed,
              onChanged: (_) {
                setState(() => widget.taskController.toggle(task.id));
              },
            ),
            title: Text(task.title),
            subtitle: Text(task.project),
            trailing: IconButton(
              icon: const Icon(Icons.delete, color: Colors.red),
              onPressed: () {
                setState(() => widget.taskController.remove(task.id));
              },
            ),
          ),
        );
      },
    );
  }
}
