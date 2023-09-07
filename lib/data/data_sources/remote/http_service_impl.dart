// Package imports:
import 'package:dio/dio.dart';
import 'package:get/get_connect/http/src/status/http_status.dart';
import 'package:logger/src/logger.dart';

// Project imports:
import 'package:flutter_boilerplate_getx/core/services/network/dio_provider.dart';
import 'package:flutter_boilerplate_getx/core/services/network/error_handlers.dart';
import 'package:flutter_boilerplate_getx/core/services/network/exceptions/base_exception.dart';
import 'package:flutter_boilerplate_getx/data/data_sources/remote/http_service.dart';
import 'package:flutter_boilerplate_getx/flavors/build_config.dart';

class HttpServiceImpl implements HttpService {
  @override
  Future<Response<T>> callApiWithErrorParser<T>(Future<Response<T>> api) async {
    try {
      Response<T> response = await api;

      if (response.statusCode != HttpStatus.ok ||
          (response.data as Map<String, dynamic>)['statusCode'] !=
              HttpStatus.ok) {
        // TODO
      }

      return response;
    } on DioException catch (dioError) {
      Exception exception = handleDioError(dioError);
      logger.e(
          "Throwing error from repository: >>>>>>> $exception : ${(exception as BaseException).message}");
      throw exception;
    } catch (error) {
      logger.e("Generic error: >>>>>>> $error");

      if (error is BaseException) {
        rethrow;
      }

      throw handleError("$error");
    }
  }

  @override
  Dio get authenticatedHttpClient => DioProvider.dioWithHeaderToken;

  @override
  Logger get logger => BuildConfig.instance.config.logger;

  @override
  Dio get httpClient => DioProvider.httpDio;
}
