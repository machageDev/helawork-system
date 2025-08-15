/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'greeting.dart' as _i2;
import 'payment.dart' as _i3;
import 'task.dart' as _i4;
import 'time_log.dart' as _i5;
import 'user.dart' as _i6;
export 'greeting.dart';
export 'payment.dart';
export 'task.dart';
export 'time_log.dart';
export 'user.dart';
export 'client.dart';

class Protocol extends _i1.SerializationManager {
  Protocol._();

  factory Protocol() => _instance;

  static final Protocol _instance = Protocol._();

  @override
  T deserialize<T>(
    dynamic data, [
    Type? t,
  ]) {
    t ??= T;
    if (t == _i2.Greeting) {
      return _i2.Greeting.fromJson(data) as T;
    }
    if (t == _i3.Payment) {
      return _i3.Payment.fromJson(data) as T;
    }
    if (t == _i4.Task) {
      return _i4.Task.fromJson(data) as T;
    }
    if (t == _i5.TimeLog) {
      return _i5.TimeLog.fromJson(data) as T;
    }
    if (t == _i6.User) {
      return _i6.User.fromJson(data) as T;
    }
    if (t == _i1.getType<_i2.Greeting?>()) {
      return (data != null ? _i2.Greeting.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i3.Payment?>()) {
      return (data != null ? _i3.Payment.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i4.Task?>()) {
      return (data != null ? _i4.Task.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i5.TimeLog?>()) {
      return (data != null ? _i5.TimeLog.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i6.User?>()) {
      return (data != null ? _i6.User.fromJson(data) : null) as T;
    }
    if (t == Map<String, dynamic>) {
      return (data as Map).map((k, v) =>
          MapEntry(deserialize<String>(k), deserialize<dynamic>(v))) as T;
    }
    return super.deserialize<T>(data, t);
  }

  @override
  String? getClassNameForObject(Object? data) {
    String? className = super.getClassNameForObject(data);
    if (className != null) return className;
    if (data is _i2.Greeting) {
      return 'Greeting';
    }
    if (data is _i3.Payment) {
      return 'Payment';
    }
    if (data is _i4.Task) {
      return 'Task';
    }
    if (data is _i5.TimeLog) {
      return 'TimeLog';
    }
    if (data is _i6.User) {
      return 'User';
    }
    return null;
  }

  @override
  dynamic deserializeByClassName(Map<String, dynamic> data) {
    var dataClassName = data['className'];
    if (dataClassName is! String) {
      return super.deserializeByClassName(data);
    }
    if (dataClassName == 'Greeting') {
      return deserialize<_i2.Greeting>(data['data']);
    }
    if (dataClassName == 'Payment') {
      return deserialize<_i3.Payment>(data['data']);
    }
    if (dataClassName == 'Task') {
      return deserialize<_i4.Task>(data['data']);
    }
    if (dataClassName == 'TimeLog') {
      return deserialize<_i5.TimeLog>(data['data']);
    }
    if (dataClassName == 'User') {
      return deserialize<_i6.User>(data['data']);
    }
    return super.deserializeByClassName(data);
  }
}
