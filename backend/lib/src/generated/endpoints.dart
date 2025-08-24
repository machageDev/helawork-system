/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import '../endpoints/auth_endpoint.dart' as _i2;
import '../endpoints/mpesa_transaction.dart' as _i3;
import '../endpoints/payment_endpoin.dart' as _i4;
import '../endpoints/task_endpoint.dart' as _i5;
import '../endpoints/time_log_endpoint.dart' as _i6;

class Endpoints extends _i1.EndpointDispatch {
  @override
  void initializeEndpoints(_i1.Server server) {
    var endpoints = <String, _i1.Endpoint>{
      'auth': _i2.AuthEndpoint()
        ..initialize(
          server,
          'auth',
          null,
        ),
      'mpesaTransaction': _i3.MpesaTransactionEndpoint()
        ..initialize(
          server,
          'mpesaTransaction',
          null,
        ),
      'payment': _i4.PaymentEndpoint()
        ..initialize(
          server,
          'payment',
          null,
        ),
      'task': _i5.TaskEndpoint()
        ..initialize(
          server,
          'task',
          null,
        ),
      'timeLog': _i6.TimeLogEndpoint()
        ..initialize(
          server,
          'timeLog',
          null,
        ),
    };
    connectors['auth'] = _i1.EndpointConnector(
      name: 'auth',
      endpoint: endpoints['auth']!,
      methodConnectors: {
        'register': _i1.MethodConnector(
          name: 'register',
          params: {
            'fullName': _i1.ParameterDescription(
              name: 'fullName',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'email': _i1.ParameterDescription(
              name: 'email',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'password': _i1.ParameterDescription(
              name: 'password',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'role': _i1.ParameterDescription(
              name: 'role',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['auth'] as _i2.AuthEndpoint).register(
            session,
            params['fullName'],
            params['email'],
            params['password'],
            params['role'],
          ),
        ),
        'login': _i1.MethodConnector(
          name: 'login',
          params: {
            'email': _i1.ParameterDescription(
              name: 'email',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'password': _i1.ParameterDescription(
              name: 'password',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['auth'] as _i2.AuthEndpoint).login(
            session,
            params['email'],
            params['password'],
          ),
        ),
        'forgotPassword': _i1.MethodConnector(
          name: 'forgotPassword',
          params: {
            'email': _i1.ParameterDescription(
              name: 'email',
              type: _i1.getType<String>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['auth'] as _i2.AuthEndpoint).forgotPassword(
            session,
            params['email'],
          ),
        ),
        'resetPassword': _i1.MethodConnector(
          name: 'resetPassword',
          params: {
            'token': _i1.ParameterDescription(
              name: 'token',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'newPassword': _i1.ParameterDescription(
              name: 'newPassword',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['auth'] as _i2.AuthEndpoint).resetPassword(
            session,
            params['token'],
            params['newPassword'],
          ),
        ),
      },
    );
    connectors['mpesaTransaction'] = _i1.EndpointConnector(
      name: 'mpesaTransaction',
      endpoint: endpoints['mpesaTransaction']!,
      methodConnectors: {
        'createTransaction': _i1.MethodConnector(
          name: 'createTransaction',
          params: {
            'userId': _i1.ParameterDescription(
              name: 'userId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
            'employerId': _i1.ParameterDescription(
              name: 'employerId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
            'amount': _i1.ParameterDescription(
              name: 'amount',
              type: _i1.getType<double>(),
              nullable: false,
            ),
            'phoneNumber': _i1.ParameterDescription(
              name: 'phoneNumber',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['mpesaTransaction'] as _i3.MpesaTransactionEndpoint)
                  .createTransaction(
            session,
            userId: params['userId'],
            employerId: params['employerId'],
            amount: params['amount'],
            phoneNumber: params['phoneNumber'],
          ),
        ),
        'updateTransaction': _i1.MethodConnector(
          name: 'updateTransaction',
          params: {
            'transactionId': _i1.ParameterDescription(
              name: 'transactionId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
            'status': _i1.ParameterDescription(
              name: 'status',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'mpesaCode': _i1.ParameterDescription(
              name: 'mpesaCode',
              type: _i1.getType<String?>(),
              nullable: true,
            ),
            'requestPayload': _i1.ParameterDescription(
              name: 'requestPayload',
              type: _i1.getType<String?>(),
              nullable: true,
            ),
            'responsePayload': _i1.ParameterDescription(
              name: 'responsePayload',
              type: _i1.getType<String?>(),
              nullable: true,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['mpesaTransaction'] as _i3.MpesaTransactionEndpoint)
                  .updateTransaction(
            session,
            transactionId: params['transactionId'],
            status: params['status'],
            mpesaCode: params['mpesaCode'],
            requestPayload: params['requestPayload'],
            responsePayload: params['responsePayload'],
          ),
        ),
        'getTransactionsForWorker': _i1.MethodConnector(
          name: 'getTransactionsForWorker',
          params: {
            'userId': _i1.ParameterDescription(
              name: 'userId',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['mpesaTransaction'] as _i3.MpesaTransactionEndpoint)
                  .getTransactionsForWorker(
            session,
            userId: params['userId'],
          ),
        ),
        'getTransactionsForEmployer': _i1.MethodConnector(
          name: 'getTransactionsForEmployer',
          params: {
            'employerId': _i1.ParameterDescription(
              name: 'employerId',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['mpesaTransaction'] as _i3.MpesaTransactionEndpoint)
                  .getTransactionsForEmployer(
            session,
            employerId: params['employerId'],
          ),
        ),
        'getTransactionById': _i1.MethodConnector(
          name: 'getTransactionById',
          params: {
            'id': _i1.ParameterDescription(
              name: 'id',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['mpesaTransaction'] as _i3.MpesaTransactionEndpoint)
                  .getTransactionById(
            session,
            params['id'],
          ),
        ),
      },
    );
    connectors['payment'] = _i1.EndpointConnector(
      name: 'payment',
      endpoint: endpoints['payment']!,
      methodConnectors: {
        'createRate': _i1.MethodConnector(
          name: 'createRate',
          params: {
            'employerId': _i1.ParameterDescription(
              name: 'employerId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
            'workerId': _i1.ParameterDescription(
              name: 'workerId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
            'ratePerHour': _i1.ParameterDescription(
              name: 'ratePerHour',
              type: _i1.getType<double>(),
              nullable: false,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['payment'] as _i4.PaymentEndpoint).createRate(
            session,
            employerId: params['employerId'],
            workerId: params['workerId'],
            ratePerHour: params['ratePerHour'],
          ),
        ),
        'updateRate': _i1.MethodConnector(
          name: 'updateRate',
          params: {
            'rateId': _i1.ParameterDescription(
              name: 'rateId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
            'newRatePerHour': _i1.ParameterDescription(
              name: 'newRatePerHour',
              type: _i1.getType<double>(),
              nullable: false,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['payment'] as _i4.PaymentEndpoint).updateRate(
            session,
            rateId: params['rateId'],
            newRatePerHour: params['newRatePerHour'],
          ),
        ),
        'getActiveRate': _i1.MethodConnector(
          name: 'getActiveRate',
          params: {
            'workerId': _i1.ParameterDescription(
              name: 'workerId',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['payment'] as _i4.PaymentEndpoint).getActiveRate(
            session,
            workerId: params['workerId'],
          ),
        ),
        'getRatesForWorker': _i1.MethodConnector(
          name: 'getRatesForWorker',
          params: {
            'workerId': _i1.ParameterDescription(
              name: 'workerId',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['payment'] as _i4.PaymentEndpoint).getRatesForWorker(
            session,
            workerId: params['workerId'],
          ),
        ),
      },
    );
    connectors['task'] = _i1.EndpointConnector(
      name: 'task',
      endpoint: endpoints['task']!,
      methodConnectors: {
        'createTask': _i1.MethodConnector(
          name: 'createTask',
          params: {
            'employerId': _i1.ParameterDescription(
              name: 'employerId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
            'title': _i1.ParameterDescription(
              name: 'title',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'description': _i1.ParameterDescription(
              name: 'description',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'deadline': _i1.ParameterDescription(
              name: 'deadline',
              type: _i1.getType<DateTime>(),
              nullable: false,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['task'] as _i5.TaskEndpoint).createTask(
            session,
            params['employerId'],
            params['title'],
            params['description'],
            params['deadline'],
          ),
        ),
        'assignTask': _i1.MethodConnector(
          name: 'assignTask',
          params: {
            'taskId': _i1.ParameterDescription(
              name: 'taskId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
            'workerId': _i1.ParameterDescription(
              name: 'workerId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['task'] as _i5.TaskEndpoint).assignTask(
            session,
            params['taskId'],
            params['workerId'],
          ),
        ),
        'updateTaskStatus': _i1.MethodConnector(
          name: 'updateTaskStatus',
          params: {
            'taskId': _i1.ParameterDescription(
              name: 'taskId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
            'status': _i1.ParameterDescription(
              name: 'status',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['task'] as _i5.TaskEndpoint).updateTaskStatus(
            session,
            params['taskId'],
            params['status'],
          ),
        ),
        'getTasksForEmployer': _i1.MethodConnector(
          name: 'getTasksForEmployer',
          params: {
            'employerId': _i1.ParameterDescription(
              name: 'employerId',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['task'] as _i5.TaskEndpoint).getTasksForEmployer(
            session,
            params['employerId'],
          ),
        ),
        'getTasksForWorker': _i1.MethodConnector(
          name: 'getTasksForWorker',
          params: {
            'workerId': _i1.ParameterDescription(
              name: 'workerId',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['task'] as _i5.TaskEndpoint).getTasksForWorker(
            session,
            params['workerId'],
          ),
        ),
      },
    );
    connectors['timeLog'] = _i1.EndpointConnector(
      name: 'timeLog',
      endpoint: endpoints['timeLog']!,
      methodConnectors: {
        'startLog': _i1.MethodConnector(
          name: 'startLog',
          params: {
            'workerId': _i1.ParameterDescription(
              name: 'workerId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
            'taskId': _i1.ParameterDescription(
              name: 'taskId',
              type: _i1.getType<int>(),
              nullable: false,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['timeLog'] as _i6.TimeLogEndpoint).startLog(
            session,
            params['workerId'],
            params['taskId'],
          ),
        ),
        'stopLog': _i1.MethodConnector(
          name: 'stopLog',
          params: {
            'logId': _i1.ParameterDescription(
              name: 'logId',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['timeLog'] as _i6.TimeLogEndpoint).stopLog(
            session,
            params['logId'],
          ),
        ),
        'getLogsForWorker': _i1.MethodConnector(
          name: 'getLogsForWorker',
          params: {
            'workerId': _i1.ParameterDescription(
              name: 'workerId',
              type: _i1.getType<int>(),
              nullable: false,
            )
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['timeLog'] as _i6.TimeLogEndpoint).getLogsForWorker(
            session,
            params['workerId'],
          ),
        ),
      },
    );
  }
}
