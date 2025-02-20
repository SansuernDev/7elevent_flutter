import 'dart:io';

import 'package:dio/dio.dart';
import 'package:http_parser/http_parser.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sevent_elevent/core/constant/constant.dart';
import 'package:sevent_elevent/core/network_manager.dart';
import 'package:sevent_elevent/feature/authentication/login_model.dart';

part 'login_datasource.g.dart';

@Riverpod(keepAlive: true)
LoginDataSource loginDataSource(LoginDataSourceRef ref) {
  return LoginDataSource(ref.watch(networkManagerProvider));
}

class LoginDataSource {
  final NetworkManager networkManager;

  LoginDataSource(this.networkManager);

  final String baseUrl = appBaseUrl;

  Future register(IMemberPayload payload) async {
    FormData formData = FormData.fromMap({
      'username': payload.username,
      'password': payload.password,
      'name': payload.name,
      'image': await MultipartFile.fromFile(payload.image.path, filename: payload.image.path.split('/').last, contentType: MediaType('image', 'jpeg')),
    });
    return networkManager.post(
      '/auth/register',
      appBaseUrl: baseUrl,
      data: formData,
    );
  }

  Future login({
    required String username,
    required String password,
  }) {
    return networkManager.post(
      '/auth/login',
      appBaseUrl: baseUrl,
      data: {
        "username": username,
        "password": password,
      },
    );
  }
}
