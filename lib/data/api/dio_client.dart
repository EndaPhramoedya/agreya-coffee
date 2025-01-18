import 'package:agreya_coffee/data/api/api.dart';
import 'package:chucker_flutter/chucker_flutter.dart';
import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioClient {
  late final Dio _dio;

  DioClient() {
    _dio = Dio()
      ..interceptors.addAll(
        <Interceptor>[
          DioInterceptor(),
          ChuckerDioInterceptor(),
          PrettyDioLogger(
            requestBody: true,
            filter: (RequestOptions options, FilterArgs args) {
              // don't print responses with uint8 list data
              return !args.isResponse || !args.hasUint8ListData;
            },
          ),
        ],
      );
  }

  Dio get dio => _dio;
}
