import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:quick_mart/core/errors/exceptions.dart';
import '../models/access_token_model.dart';
import '../models/payment_model.dart';

class PayPalRemoteService {
  final String clientId;
  final String secretKey;
  final Dio _dio;

  PayPalRemoteService({required this.clientId, required this.secretKey})
      : _dio = Dio(BaseOptions(
          baseUrl: "https://api-m.sandbox.paypal.com",
          connectTimeout: const Duration(seconds: 30),
          receiveTimeout: const Duration(seconds: 30),
        )) {
    _dio.interceptors.add(LogInterceptor(
      requestBody: true,
      responseBody: true,
      error: true,
    ));
  }

  Future<AccessToken> getAccessToken() async {
    try {
      final credentials = base64Encode(utf8.encode('$clientId:$secretKey'));

      final response = await _dio.post(
        '/v1/oauth2/token',
        data: 'grant_type=client_credentials',
        options: Options(headers: {
          'Accept': 'application/json',
          'Accept-Language': 'en_US',
          'Authorization': 'Basic $credentials',
          'Content-Type': 'application/x-www-form-urlencoded',
        }),
      );

      if (response.statusCode == 200) {
        return AccessToken.fromJson(response.data);
      }

      throw InvalidCredentialsException('Failed to get access token');
    } on DioException catch (e) {
      throw ServerException(e.response?.data.toString() ?? e.message);
    }
  }

  Future<Map<String, dynamic>> createPayment(PayPalPayment payment) async {
    try {
      final token = await getAccessToken();
      final response = await _dio.post(
        '/v1/payments/payment',
        data: payment.toTransaction(),
        options: Options(headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer ${token.token}',
        }),
      );

      if (response.statusCode == 201) {
        return response.data;
      }

      throw ServerException('Failed to create payment');
    } on DioException catch (e) {
      throw ServerException(e.response?.data.toString() ?? e.message);
    }
  }

  Future<Map<String, dynamic>> executePayment({
    required String paymentId,
    required String payerId,
  }) async {
    try {
      final token = await getAccessToken();
      final response = await _dio.post(
        '/v1/payments/payment/$paymentId/execute',
        data: {"payer_id": payerId},
        options: Options(headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer ${token.token}',
        }),
      );

      if (response.statusCode == 200) {
        return response.data;
      }

      throw ServerException('Failed to execute payment');
    } on DioException catch (e) {
      throw ServerException(e.response?.data.toString() ?? e.message);
    }
  }
}
