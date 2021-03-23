import 'package:android_flutter/http/http_constants.dart';
import 'package:dio/dio.dart';

class HttpManager {
  static Dio dio = Dio(BaseOptions(
      connectTimeout: 30 * 1000, receiveTimeout: 30 * 1000, sendTimeout: 30 * 1000, baseUrl: HttpConstants.baseUrl));

  static Future<T> post<T>(
    String path, {
    data,
    Map<String, dynamic> queryParameters,
    Options options,
    CancelToken cancelToken,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) {
    return dio
        .post<T>(path,
            queryParameters: queryParameters,
            options: options,
            data: data,
            cancelToken: cancelToken,
            onSendProgress: onSendProgress,
            onReceiveProgress: onReceiveProgress)
        .then((value) => value.data);
  }

  static Future<T> get<T>(
    String path, {
    data,
    Map<String, dynamic> queryParameters,
    Options options,
    CancelToken cancelToken,
    ProgressCallback onReceiveProgress,
  }) {
    return dio
        .get<T>(path,
            queryParameters: queryParameters,
            options: options,
            cancelToken: cancelToken,
            onReceiveProgress: onReceiveProgress)
        .then((value) => value.data);
  }
}
