import 'package:flutter/material.dart';


class Shell extends StatefulWidget {
  final AuthController auth;
  const Shell({super.key, required this.auth});

  @override
  State<Shell> createState() => _ShellState();
}

class _ShellState extends State<Shell> {
  int _index = 0;

  // Shared controllers for all tabs
  final taskController = TaskController();
  final attendanceController = AttendanceController();

  late final List<Widget> _tabs;

  @override
  void initState() {
    super.initState();
    _tabs = [
      DashboardScreen(
        taskController: taskController,
        attendanceController: attendanceController,
      ),
      TasksScreen(taskController: taskController),
      AttendanceScreen(attendanceController: attendanceController),
      ProfileScreen(auth: widget.auth),
    ];
  }

  @override
  Widget build(BuildContext context) {
    final name = widget.auth.currentUser?.name ?? 'Worker';

    return Scaffold(
      appBar: AppBar(
        title: Text('Hi, $name'),
        centerTitle: true,
      ),
      body: _tabs[_index],
      bottomNavigationBar: NavigationBar(
        selectedIndex: _index,
        onDestinationSelected: (i) {
          setState(() => _index = i);
        },
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.dashboard_outlined),
            selectedIcon: Icon(Icons.dashboard),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.checklist_outlined),
            selectedIcon: Icon(Icons.checklist),
            label: 'Tasks',
          ),
          NavigationDestination(
            icon: Icon(Icons.access_time),
            selectedIcon: Icon(Icons.punch_clock),
            label: 'Attendance',
          ),
          NavigationDestination(
            icon: Icon(Icons.person_outline),
            selectedIcon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
