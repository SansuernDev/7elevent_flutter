import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/services.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sevent_elevent/core/dio_manager.dart';


part 'network_manager.g.dart';

@Riverpod(keepAlive: true)
NetworkManager networkManager(NetworkManagerRef ref) {
  return NetworkManager(ref.watch(dioClientProvider));
}

class NetworkManager {
  final Dio _dio;
  NetworkManager(this._dio);

  Future<T> get<T>(
      String path, {
        Map<String, dynamic>? queryParameters,
        Function? fromJson,
        required String appBaseUrl,
        String? pathParameter,
        Object? data,
        bool onlyData = false,
        bool useMockJsonData = false,
      }) async {
    try {
      final response = await _dio.get(
        '$appBaseUrl$path',
        queryParameters: queryParameters,
        data: data,
      );
      final responseData = onlyData ? response.data["data"] : response.data;
      return responseData;
    } catch (e) {
      print(e);
      throw _handleError(e, appBaseUrl, path, data);
    }
  }

  Future<T> post<T>(String path,
      {Map<String, dynamic>? queryParameters,
        required String appBaseUrl,
        Object? data,
        bool onlyData = false,
        bool useMockJsonData = false,
        ProgressCallback? onSendProgress,
        ProgressCallback? onReceiveProgress}) async {
    try {


      final response = await _dio.post(
        '$appBaseUrl$path',
        queryParameters: queryParameters,
        data: data,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );
      // log.e('onresponse');
      //
      // log.d('URL: ${appBaseUrl} \n  PATH: ${path} \n DATA: ${data}  \n\n RESPONSE ${response}');
      final responseData = onlyData ? response.data["data"] : response.data;
      return responseData;
    } catch (e) {
      throw _handleError(e, appBaseUrl, path, data);
    }
  }

  Future<T> patch<T>(
      String path, {
        Map<String, dynamic>? queryParameters,
        required String appBaseUrl,
        Object? data,
        bool onlyData = false,
        ProgressCallback? onSendProgress,
        ProgressCallback? onReceiveProgress,
      }) async {
    try {
      final response = await _dio.patch(
        '$appBaseUrl$path',
        queryParameters: queryParameters,
        data: data,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );

      final responseData = onlyData ? response.data["data"] : response.data;
      return responseData;
    } catch (e) {
      throw _handleError(e, appBaseUrl, path, data);
    }
  }

  Future<T> put<T>(
      String path, {
        Map<String, dynamic>? queryParameters,
        required String appBaseUrl,
        Object? data,
        bool onlyData = false,
      }) async {
    try {
      final response = await _dio.put(
        '$appBaseUrl$path',
        queryParameters: queryParameters,
        data: data,
      );
      final responseData = onlyData ? response.data["data"] : response.data;
      return responseData;
    } catch (e) {
      throw _handleError(e, appBaseUrl, path, data);
    }
  }

  Future<T> delete<T>(
      String path, {
        Map<String, dynamic>? queryParameters,
        required String appBaseUrl,
        Object? data,
        bool onlyData = false,
      }) async {
    try {
      final response = await _dio.delete(
        '$appBaseUrl$path',
        queryParameters: queryParameters,
        data: data,
      );

      final responseData = onlyData ? response.data["data"] : response.data;
      return responseData;
    } catch (e) {
      throw _handleError(e, appBaseUrl, path, data);
    }
  }

  NetworkException _handleError(dynamic error, String appBaseUrl, String path, dynamic data) {
    if (error is DioException) {
      if (error.response != null) {
        final statusCode = error.response?.statusCode;
        final responseData = error.response?.data;
        return NetworkException(
          statusCode: statusCode,
          data: responseData,
        );
      } else {
        return NetworkException(
          data: "No response from server.",
        );
      }
    }
    return NetworkException(data: 'Unhandle Response');
  }
}

class NetworkException implements Exception {
  final dynamic data;
  final int? statusCode;

  NetworkException({
    this.data,
    this.statusCode,
  });

  @override
  String toString() {
    return 'NetworkException: $data';
  }

  bool isFailure() {
    return statusCode == null;
  }
}
