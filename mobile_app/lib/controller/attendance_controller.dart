import 'package:uuid/uuid.dart';
import '../models/attendance.dart';

class AttendanceController {
  final List<Attendance> logs = [];
  final _uuid = const Uuid();

  void startShift() {
    logs.add(Attendance(id: _uuid.v4(), start: DateTime.now()));
  }

  void stopShift() {
    final active = logs.lastWhere((a) => a.isActive, orElse: () => throw 'No active shift');
    final updated = Attendance(id: active.id, start: active.start, end: DateTime.now());
    logs[logs.indexWhere((a) => a.id == active.id)] = updated;
  }

  Duration get totalWorked => logs.fold(Duration.zero, (sum, l) => sum + l.duration);
}
