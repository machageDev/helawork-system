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
import 'mpesa_payment.dart' as _i2;
import 'payment.dart' as _i3;
import 'reset_token.dart' as _i4;
import 'task.dart' as _i5;
import 'time_log.dart' as _i6;
import 'user.dart' as _i7;
export 'mpesa_payment.dart';
export 'payment.dart';
export 'reset_token.dart';
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
    if (t == _i2.MpesaTransaction) {
      return _i2.MpesaTransaction.fromJson(data) as T;
    }
    if (t == _i3.PaymentRate) {
      return _i3.PaymentRate.fromJson(data) as T;
    }
    if (t == _i4.ResetToken) {
      return _i4.ResetToken.fromJson(data) as T;
    }
    if (t == _i5.Task) {
      return _i5.Task.fromJson(data) as T;
    }
    if (t == _i6.TimeLog) {
      return _i6.TimeLog.fromJson(data) as T;
    }
    if (t == _i7.User) {
      return _i7.User.fromJson(data) as T;
    }
    if (t == _i1.getType<_i2.MpesaTransaction?>()) {
      return (data != null ? _i2.MpesaTransaction.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i3.PaymentRate?>()) {
      return (data != null ? _i3.PaymentRate.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i4.ResetToken?>()) {
      return (data != null ? _i4.ResetToken.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i5.Task?>()) {
      return (data != null ? _i5.Task.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i6.TimeLog?>()) {
      return (data != null ? _i6.TimeLog.fromJson(data) : null) as T;
    }
    if (t == _i1.getType<_i7.User?>()) {
      return (data != null ? _i7.User.fromJson(data) : null) as T;
    }
    return super.deserialize<T>(data, t);
  }

  @override
  String? getClassNameForObject(Object? data) {
    String? className = super.getClassNameForObject(data);
    if (className != null) return className;
    if (data is _i2.MpesaTransaction) {
      return 'MpesaTransaction';
    }
    if (data is _i3.PaymentRate) {
      return 'PaymentRate';
    }
    if (data is _i4.ResetToken) {
      return 'ResetToken';
    }
    if (data is _i5.Task) {
      return 'Task';
    }
    if (data is _i6.TimeLog) {
      return 'TimeLog';
    }
    if (data is _i7.User) {
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
    if (dataClassName == 'MpesaTransaction') {
      return deserialize<_i2.MpesaTransaction>(data['data']);
    }
    if (dataClassName == 'PaymentRate') {
      return deserialize<_i3.PaymentRate>(data['data']);
    }
    if (dataClassName == 'ResetToken') {
      return deserialize<_i4.ResetToken>(data['data']);
    }
    if (dataClassName == 'Task') {
      return deserialize<_i5.Task>(data['data']);
    }
    if (dataClassName == 'TimeLog') {
      return deserialize<_i6.TimeLog>(data['data']);
    }
    if (dataClassName == 'User') {
      return deserialize<_i7.User>(data['data']);
    }
    return super.deserializeByClassName(data);
  }
}
