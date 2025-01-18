import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';

class DioInterceptor extends Interceptor {
  @override
  Future<void> onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    try {
      options.headers[HttpHeaders.acceptHeader] = ContentType.json;

      // add timeout
      options.receiveTimeout = const Duration(seconds: 300);
      options.connectTimeout = const Duration(seconds: 10);
      options.sendTimeout = const Duration(seconds: 100);

      return handler.next(options);
    } catch (e) {
      log(e.toString(), name: 'DioInterceptor');

      // reject request on error
      return handler.reject(
        DioException(
          requestOptions: options,
          type: DioExceptionType.cancel,
        ),
      );
    }
  }

  @override
  Future<void> onError(DioException error, ErrorInterceptorHandler handler) async {
    log('dio interceptor error: ${error.response}');

    final String errorMessage = switch (error.type) {
      DioExceptionType.connectionTimeout => 'Connection timeout.',
      DioExceptionType.sendTimeout => 'Send timeout.',
      DioExceptionType.receiveTimeout => 'Receive timeout.',
      DioExceptionType.badResponse => error.response?.statusMessage ?? error.error.toString(),
      DioExceptionType.cancel => 'Request cancelled.',
      DioExceptionType.unknown => 'Failed to sync. Something wrong!',
      DioExceptionType.badCertificate => 'Bad certificate.',
      DioExceptionType.connectionError => 'Connection error.'
    };

    log('error message: $errorMessage');

    return handler.next(error);
  }
}