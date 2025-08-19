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
import 'dart:async' as _i2;
import 'package:helawork_client/src/protocol/user.dart' as _i3;
import 'package:helawork_client/src/protocol/payment.dart' as _i4;
import 'package:helawork_client/src/protocol/task.dart' as _i5;
import 'package:helawork_client/src/protocol/time_log.dart' as _i6;
import 'package:helawork_client/src/protocol/greeting.dart' as _i7;
import 'protocol.dart' as _i8;

/// {@category Endpoint}
class EndpointAuth extends _i1.EndpointRef {
  EndpointAuth(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'auth';

  _i2.Future<_i3.User?> register(
    String fullName,
    String email,
    String password,
    String role,
  ) =>
      caller.callServerEndpoint<_i3.User?>(
        'auth',
        'register',
        {
          'fullName': fullName,
          'email': email,
          'password': password,
          'role': role,
        },
      );

  _i2.Future<_i3.User?> login(
    String email,
    String password,
  ) =>
      caller.callServerEndpoint<_i3.User?>(
        'auth',
        'login',
        {
          'email': email,
          'password': password,
        },
      );
}

/// {@category Endpoint}
class EndpointPayment extends _i1.EndpointRef {
  EndpointPayment(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'payment';

  _i2.Future<_i4.Payment> createPayment(
    int userId,
    double ratePerHour,
  ) =>
      caller.callServerEndpoint<_i4.Payment>(
        'payment',
        'createPayment',
        {
          'userId': userId,
          'ratePerHour': ratePerHour,
        },
      );

  _i2.Future<bool> completePayment(int paymentId) =>
      caller.callServerEndpoint<bool>(
        'payment',
        'completePayment',
        {'paymentId': paymentId},
      );

  _i2.Future<List<_i4.Payment>> getUserPayments(int userId) =>
      caller.callServerEndpoint<List<_i4.Payment>>(
        'payment',
        'getUserPayments',
        {'userId': userId},
      );
}

/// {@category Endpoint}
class EndpointTask extends _i1.EndpointRef {
  EndpointTask(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'task';

  _i2.Future<_i5.Task> createTask(_i5.Task task) =>
      caller.callServerEndpoint<_i5.Task>(
        'task',
        'createTask',
        {'task': task},
      );

  _i2.Future<List<_i5.Task>> getUserTasks(int userId) =>
      caller.callServerEndpoint<List<_i5.Task>>(
        'task',
        'getUserTasks',
        {'userId': userId},
      );

  _i2.Future<bool> updateTaskStatus(
    int taskId,
    String status,
  ) =>
      caller.callServerEndpoint<bool>(
        'task',
        'updateTaskStatus',
        {
          'taskId': taskId,
          'status': status,
        },
      );
}

/// {@category Endpoint}
class EndpointTimeLog extends _i1.EndpointRef {
  EndpointTimeLog(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'timeLog';

  _i2.Future<_i6.TimeLog> startLog(
    int userId,
    int taskId,
  ) =>
      caller.callServerEndpoint<_i6.TimeLog>(
        'timeLog',
        'startLog',
        {
          'userId': userId,
          'taskId': taskId,
        },
      );

  _i2.Future<bool> stopLog(int logId) => caller.callServerEndpoint<bool>(
        'timeLog',
        'stopLog',
        {'logId': logId},
      );

  _i2.Future<List<_i6.TimeLog>> getUserLogs(int userId) =>
      caller.callServerEndpoint<List<_i6.TimeLog>>(
        'timeLog',
        'getUserLogs',
        {'userId': userId},
      );

  _i2.Future<bool> approveLog(int logId) => caller.callServerEndpoint<bool>(
        'timeLog',
        'approveLog',
        {'logId': logId},
      );
}

/// This is an example endpoint that returns a greeting message through
/// its [hello] method.
/// {@category Endpoint}
class EndpointGreeting extends _i1.EndpointRef {
  EndpointGreeting(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'greeting';

  /// Returns a personalized greeting message: "Hello {name}".
  _i2.Future<_i7.Greeting> hello(String name) =>
      caller.callServerEndpoint<_i7.Greeting>(
        'greeting',
        'hello',
        {'name': name},
      );
}

class Client extends _i1.ServerpodClientShared {
  Client(
    String host, {
    dynamic securityContext,
    _i1.AuthenticationKeyManager? authenticationKeyManager,
    Duration? streamingConnectionTimeout,
    Duration? connectionTimeout,
    Function(
      _i1.MethodCallContext,
      Object,
      StackTrace,
    )? onFailedCall,
    Function(_i1.MethodCallContext)? onSucceededCall,
    bool? disconnectStreamsOnLostInternetConnection,
  }) : super(
          host,
          _i8.Protocol(),
          securityContext: securityContext,
          authenticationKeyManager: authenticationKeyManager,
          streamingConnectionTimeout: streamingConnectionTimeout,
          connectionTimeout: connectionTimeout,
          onFailedCall: onFailedCall,
          onSucceededCall: onSucceededCall,
          disconnectStreamsOnLostInternetConnection:
              disconnectStreamsOnLostInternetConnection,
        ) {
    auth = EndpointAuth(this);
    payment = EndpointPayment(this);
    task = EndpointTask(this);
    timeLog = EndpointTimeLog(this);
    greeting = EndpointGreeting(this);
  }

  late final EndpointAuth auth;

  late final EndpointPayment payment;

  late final EndpointTask task;

  late final EndpointTimeLog timeLog;

  late final EndpointGreeting greeting;

  @override
  Map<String, _i1.EndpointRef> get endpointRefLookup => {
        'auth': auth,
        'payment': payment,
        'task': task,
        'timeLog': timeLog,
        'greeting': greeting,
      };

  @override
  Map<String, _i1.ModuleEndpointCaller> get moduleLookup => {};
}
