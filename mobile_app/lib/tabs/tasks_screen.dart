import 'package:flutter/material.dart';
import 'package:helawork_flutter/controller/task_controller.dart';

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

        final isCompleted = task.status.toLowerCase() == 'completed';

        return Card(
          child: ListTile(
            leading: Checkbox(
              value: isCompleted,
              onChanged: (_) {
                setState(() {
                  widget.taskController.toggle(task.id ?? 0);
                });
              },
            ),
            title: Text(task.title),
            subtitle: Text(task.description.isNotEmpty 
                ? task.description 
                : "No description"),
            trailing: IconButton(
              icon: const Icon(Icons.delete, color: Colors.red),
              onPressed: () {
                setState(() => widget.taskController.remove(task.id ?? 0));
              },
            ),
          ),
        );
      },
    );
  }
}
