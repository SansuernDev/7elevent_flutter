import 'dart:convert';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sevent_elevent/core/model/user_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'share_prefs.g.dart';

@Riverpod(keepAlive: true)
SharedPrefs sharePrefsState(SharePrefsStateRef ref) {
  return SharedPrefs();
}

class SharedPrefs {
  static late SharedPreferences _sharedPrefs;

  static final SharedPrefs _instance = SharedPrefs._internal();

  factory SharedPrefs() => _instance;

  SharedPrefs._internal();

  Future<void> init() async {
    _sharedPrefs = await SharedPreferences.getInstance();
  }

  String get getToken => token?.accessToken ?? '';
  UserModel? get getTokenData => token;


  UserModel? get token {
    try {
      return UserModel.fromJson(jsonDecode(_sharedPrefs.getString(tokenKey) ?? ''));
    } catch (e) {
      return null;
    }
  }

  bool isAuthentication() {
    return getToken.isNotEmpty ?? false;
  }

  void removeToken() {
    _sharedPrefs.remove(tokenKey);
  }

  set setToken(UserModel? token) {
    _sharedPrefs.setString(tokenKey, jsonEncode(token));
  }
}

const String tokenKey = "accessToken";