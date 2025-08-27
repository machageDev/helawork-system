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
import 'package:helawork_client/src/protocol/mpesa_payment.dart' as _i4;
import 'package:helawork_client/src/protocol/payment.dart' as _i5;
import 'protocol.dart' as _i6;

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

  _i2.Future<String> forgotPassword(String email) =>
      caller.callServerEndpoint<String>(
        'auth',
        'forgotPassword',
        {'email': email},
      );

  _i2.Future<bool> resetPassword(
    String token,
    String newPassword,
  ) =>
      caller.callServerEndpoint<bool>(
        'auth',
        'resetPassword',
        {
          'token': token,
          'newPassword': newPassword,
        },
      );
}

/// {@category Endpoint}
class EndpointOtp extends _i1.EndpointRef {
  EndpointOtp(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'otp';

  _i2.Future<bool> generateOtp(String email) => caller.callServerEndpoint<bool>(
        'otp',
        'generateOtp',
        {'email': email},
      );

  _i2.Future<bool> verifyOtp(
    String email,
    String otp,
  ) =>
      caller.callServerEndpoint<bool>(
        'otp',
        'verifyOtp',
        {
          'email': email,
          'otp': otp,
        },
      );
}

/// {@category Endpoint}
class EndpointMpesaTransaction extends _i1.EndpointRef {
  EndpointMpesaTransaction(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'mpesaTransaction';

  _i2.Future<_i4.MpesaTransaction> createTransaction({
    required int userId,
    required int employerId,
    required double amount,
    required String phoneNumber,
  }) =>
      caller.callServerEndpoint<_i4.MpesaTransaction>(
        'mpesaTransaction',
        'createTransaction',
        {
          'userId': userId,
          'employerId': employerId,
          'amount': amount,
          'phoneNumber': phoneNumber,
        },
      );

  _i2.Future<_i4.MpesaTransaction> updateTransaction({
    required int transactionId,
    required String status,
    String? mpesaCode,
    String? requestPayload,
    String? responsePayload,
  }) =>
      caller.callServerEndpoint<_i4.MpesaTransaction>(
        'mpesaTransaction',
        'updateTransaction',
        {
          'transactionId': transactionId,
          'status': status,
          'mpesaCode': mpesaCode,
          'requestPayload': requestPayload,
          'responsePayload': responsePayload,
        },
      );

  _i2.Future<List<_i4.MpesaTransaction>> getTransactionsForWorker(
          {required int userId}) =>
      caller.callServerEndpoint<List<_i4.MpesaTransaction>>(
        'mpesaTransaction',
        'getTransactionsForWorker',
        {'userId': userId},
      );

  _i2.Future<List<_i4.MpesaTransaction>> getTransactionsForEmployer(
          {required int employerId}) =>
      caller.callServerEndpoint<List<_i4.MpesaTransaction>>(
        'mpesaTransaction',
        'getTransactionsForEmployer',
        {'employerId': employerId},
      );

  _i2.Future<_i4.MpesaTransaction?> getTransactionById(int id) =>
      caller.callServerEndpoint<_i4.MpesaTransaction?>(
        'mpesaTransaction',
        'getTransactionById',
        {'id': id},
      );
}

/// {@category Endpoint}
class EndpointPayment extends _i1.EndpointRef {
  EndpointPayment(_i1.EndpointCaller caller) : super(caller);

  @override
  String get name => 'payment';

  _i2.Future<_i5.PaymentRate> createRate({
    required int employerId,
    required int workerId,
    required double ratePerHour,
  }) =>
      caller.callServerEndpoint<_i5.PaymentRate>(
        'payment',
        'createRate',
        {
          'employerId': employerId,
          'workerId': workerId,
          'ratePerHour': ratePerHour,
        },
      );

  _i2.Future<_i5.PaymentRate> updateRate({
    required int rateId,
    required double newRatePerHour,
  }) =>
      caller.callServerEndpoint<_i5.PaymentRate>(
        'payment',
        'updateRate',
        {
          'rateId': rateId,
          'newRatePerHour': newRatePerHour,
        },
      );

  _i2.Future<_i5.PaymentRate?> getActiveRate({required int workerId}) =>
      caller.callServerEndpoint<_i5.PaymentRate?>(
        'payment',
        'getActiveRate',
        {'workerId': workerId},
      );

  _i2.Future<List<_i5.PaymentRate>> getRatesForWorker(
          {required int workerId}) =>
      caller.callServerEndpoint<List<_i5.PaymentRate>>(
        'payment',
        'getRatesForWorker',
        {'workerId': workerId},
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
          _i6.Protocol(),
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
    otp = EndpointOtp(this);
    mpesaTransaction = EndpointMpesaTransaction(this);
    payment = EndpointPayment(this);
  }

  late final EndpointAuth auth;

  late final EndpointOtp otp;

  late final EndpointMpesaTransaction mpesaTransaction;

  late final EndpointPayment payment;

  @override
  Map<String, _i1.EndpointRef> get endpointRefLookup => {
        'auth': auth,
        'otp': otp,
        'mpesaTransaction': mpesaTransaction,
        'payment': payment,
      };

  @override
  Map<String, _i1.ModuleEndpointCaller> get moduleLookup => {};
}
