import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sevent_elevent/core/routes.dart';
import 'package:sevent_elevent/core/share_prefs.dart';
import 'package:sevent_elevent/core/state/user_state.dart';
part 'dio_manager.g.dart';

@Riverpod(keepAlive: true)
class DioClient extends _$DioClient {
  @override
  Dio build() {
    Dio dio = Dio();
    dio.options.connectTimeout = const Duration(seconds: 30);
    dio.options.sendTimeout = const Duration(seconds: 30);
    dio.options.receiveTimeout = const Duration(seconds: 30);
    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          if (SharedPrefs().isAuthentication()) {
            String accessToken = SharedPrefs().getToken ?? "";
            options.headers['Authorization'] = 'Bearer $accessToken';
          } else {
            options.headers = null;
          }
          // Add the access token to the request header
          return handler.next(options);
        },
        onError: (DioException e, handler) async {
          print("dioError ${e.response?.statusCode}");
          if (e.response?.statusCode == 401) {
            SharedPrefs().removeToken();
            Future.microtask(() {
              ref.invalidate(dioClientProvider);
              ref.invalidate(userStateProvider);
            });
            rootContext()?.goNamed('login');
          }else {
            return handler.next(e);
          }
        },
      ),
    );


    if (SharedPrefs().isAuthentication()) {
      String accessToken = SharedPrefs().getToken ?? "";
      dio.options.headers['Authorization'] = 'Bearer $accessToken';
    } else {
      dio.options.headers = null;
    }
    return dio;
  }
}
