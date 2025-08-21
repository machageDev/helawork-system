import 'package:flutter/material.dart';


class DashboardScreen extends StatelessWidget {
  final TaskController taskController;
  final AttendanceController attendanceController;

  const DashboardScreen({
    super.key,
    required this.taskController,
    required this.attendanceController,
  });

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;

    final openTasks = taskController.openTasksCount;
    final totalWorked = attendanceController.totalWorked.inHours;
    final estimatedPay = totalWorked * 300;

    return SingleChildScrollView(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: _StatCard(
                  label: 'Open Tasks',
                  value: '$openTasks',
                  icon: Icons.checklist,
                  color: cs.primary,
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: _StatCard(
                  label: 'Hours Worked',
                  value: '$totalWorked h',
                  icon: Icons.timer,
                  color: cs.secondary,
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          _StatCard(
            label: 'Earnings',
            value: 'KES $estimatedPay',
            icon: Icons.payments,
            color: Colors.green,
          ),
        ],
      ),
    );
  }
}

class _StatCard extends StatelessWidget {
  final String label;
  final String value;
  final IconData icon;
  final Color color;

  const _StatCard({
    required this.label,
    required this.value,
    required this.icon,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          children: [
            CircleAvatar(
              backgroundColor: color.withOpacity(0.15),
              child: Icon(icon, color: color),
            ),
            const SizedBox(width: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(value, style: Theme.of(context).textTheme.titleLarge),
                Text(label, style: Theme.of(context).textTheme.bodySmall),
              ],
            )
          ],
        ),
      ),
    );
  }
}
