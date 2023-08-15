// Package imports:
import 'package:dio/dio.dart';
import 'package:logger/logger.dart';

abstract class HttpService {
  Dio get dioClient;

  Logger get logger;

  Future<Response<T>> callApiWithErrorParser<T>(Future<Response<T>> api);
}
