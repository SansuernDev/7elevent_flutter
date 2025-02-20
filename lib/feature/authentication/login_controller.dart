import 'dart:convert';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sevent_elevent/core/dio_manager.dart';
import 'package:sevent_elevent/core/model/user_model.dart';
import 'package:sevent_elevent/core/network_manager.dart';
import 'package:sevent_elevent/core/routes.dart';
import 'package:sevent_elevent/core/share_prefs.dart';
import 'package:sevent_elevent/core/state/user_state.dart';
import 'package:sevent_elevent/core/widgets/app_toast.dart';
import 'package:sevent_elevent/feature/authentication/login_datasource.dart';
import 'package:sevent_elevent/feature/authentication/login_model.dart';

part 'login_controller.g.dart';

@Riverpod(keepAlive: true)
LoginController loginController(LoginControllerRef ref) {
  return LoginController(ref);
}

class LoginController {
  final ProviderRef ref;
  LoginController(this.ref);



  register(IMemberPayload payload) async {
    try {
      final response = await ref.read(loginDataSourceProvider).register(payload);
      final user = UserModel.fromJson(response);
      AppToastSuccessDialog(message: "สมัครสมาชิกสำเร็จ");
      setUser(user);
    } on NetworkException catch (e) {
      AppToastFailedDialog(message: e.data.toString());
    } catch (e) {
      print("error $e");
      AppToastFailedDialog(message: "เกิดข้อผิดพลาดทางระบบ");
    }
  }

  setToken(UserModel token) {
    SharedPrefs().setToken = token;
    ref.invalidate(dioClientProvider);
    rootContext()?.goNamed('home');
  }

  setUser(UserModel user) {
   ref.read(userStateProvider.notifier).setUser(user);
   setToken(user);
  }

  login(String username, String password) async {
    try {
      final response = await ref.read(loginDataSourceProvider).login(username: username,password: password);
      final user = UserModel.fromJson(response);
      setUser(user);
      AppToastSuccessDialog(message: "เข้าสู่ระบบสำเร็จ");
    } on NetworkException catch (e) {
      AppToastFailedDialog(message: e.data.toString());
    }
  }

  logout() {
    SharedPrefs().removeToken();
    ref.invalidate(dioClientProvider);
    ref.invalidate(userStateProvider);
  }


}
