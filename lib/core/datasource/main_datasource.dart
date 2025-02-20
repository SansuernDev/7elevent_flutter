import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:http_parser/http_parser.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sevent_elevent/core/constant/constant.dart';
import 'package:sevent_elevent/core/model/customer_model.dart';
import 'package:sevent_elevent/core/model/market_model.dart';
import 'package:sevent_elevent/core/model/product_model.dart';
import 'package:sevent_elevent/core/network_manager.dart';
import 'package:sevent_elevent/feature/authentication/login_model.dart';

part 'main_datasource.g.dart';

@Riverpod(keepAlive: true)
MainDataSource mainDataSource(MainDataSourceRef ref) {
  return MainDataSource(ref.watch(networkManagerProvider));
}

class MainDataSource {
  final NetworkManager networkManager;

  MainDataSource(this.networkManager);

  final String baseUrl = appBaseApiUrl;

  Future getMarketProducts({
    required num page,
    required num limit,
    required String phrase,
  }) {
    return networkManager.get(
      '/product?page=$page&limit=$limit&phrase=$phrase',
      appBaseUrl: baseUrl,
    );
  }

  Future getCustomer({
    required num page,
    required num limit,
    required String phrase,
  }) {
    return networkManager.get(
      '/customer?page=$page&limit=$limit&phrase=$phrase',
      appBaseUrl: baseUrl,
    );
  }

  Future getUser({
    required num page,
    required num limit,
    required String phrase,
  }) {
    return networkManager.get(
      '/customer?page=$page&limit=$limit&phrase=$phrase',
      appBaseUrl: baseUrl,
    );
  }

  Future getCustomerWithProduct({
    required num page,
    required num limit,
    required String phrase,
  }) {
    return networkManager.get(
      '/customer?page=$page&limit=$limit&phrase=$phrase',
      appBaseUrl: baseUrl,
    );
  }

  Future createCustomer(ICustomerPayload payload) {
    return networkManager.post(
      '/customer',
      appBaseUrl: baseUrl,
      data: {
        "name": payload.name,
        "phone_number": payload.phoneNumber,
        "allmember_number": payload.allMemberNumber,
        "address": payload.address
      }
    );
  }

  Future productCreate({required IProductPayload payload}) async {
    MultipartFile imageFile;
    String timestamp = DateTime.now().millisecondsSinceEpoch.toString();
    if (kIsWeb) {
      imageFile = MultipartFile.fromBytes(
        payload.bytes!,
        filename: "$timestamp.jpg",
        contentType: MediaType('image', 'jpeg'),
      );
    } else {
      // ✅ Mobile/Desktop: ใช้ `fromFile()`
      imageFile = await MultipartFile.fromFile(
        payload.image.path,
        filename: "$timestamp.jpg",
        contentType: MediaType('image', 'jpeg'),
      );
    }

    FormData formData = FormData.fromMap({
      'name': payload.name,
      'price': payload.price,
      'image': imageFile,
    });
    return networkManager.post(
      '/product',
      appBaseUrl: baseUrl,
      data: formData,
    );
  }

  Future orderCreate({
    required IBasketPayload payload,
  }) {
    return networkManager.post(
      '/order',
      appBaseUrl: baseUrl,
      data: payload.toJson(),
    );
  }
}
