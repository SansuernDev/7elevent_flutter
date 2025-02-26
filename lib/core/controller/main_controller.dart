import 'dart:convert';
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart' show Uint8List, kIsWeb;
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sevent_elevent/core/constant/constant.dart';
import 'package:sevent_elevent/core/datasource/main_datasource.dart';
import 'package:sevent_elevent/core/model/customer_model.dart';
import 'package:sevent_elevent/core/model/market_model.dart';
import 'package:sevent_elevent/core/model/product_model.dart';
import 'package:sevent_elevent/core/network_manager.dart';
import 'package:sevent_elevent/core/routes.dart';
import 'package:sevent_elevent/core/state/bottom_paginated_indicator.dart';
import 'package:sevent_elevent/core/state/market_state.dart';
import 'package:sevent_elevent/core/state/user_state.dart';
import 'package:sevent_elevent/core/widgets/app_toast.dart';
import 'package:sevent_elevent/helper/image_picker_helper.dart';

part 'main_controller.g.dart';

class UploadFileResponse {
  final File? file;
  final String? base64;
  final Uint8List? bytes;

  UploadFileResponse({this.file, this.base64, this.bytes});
}

@Riverpod(keepAlive: true)
MainController mainController(MainControllerRef ref) {
  return MainController(ref);
}

class MainController {
  final ProviderRef ref;
  MainController(this.ref);

  Future<UploadFileResponse?> uploadImage() async {
    try {
      if (kIsWeb) {
        Uint8List? bytesFromPicker = await pickImage();
        if (bytesFromPicker == null) return null;
        String encodedBase64 = base64Encode(bytesFromPicker);

        return UploadFileResponse(
          file: null,
          base64: encodedBase64,
          bytes: bytesFromPicker,
        );
      }


      final ImagePicker picker = ImagePicker();
      final ImageSource? source = await showSelectorBottomSheet();
      if (source != null) {
        final XFile? file = await picker.pickImage(source: source);
        File originalFile = File(file!.path);
        List<int> imageBytes = await originalFile.readAsBytes();
        String encodedBase64 = base64Encode(imageBytes);

        return UploadFileResponse(
          file: originalFile,
          base64: encodedBase64,
        );
      }
    } catch (e) {
      print(e);
    }
    return null;
  }

  Future<void> createProduct(IProductPayload payload) async {
    try {
      ref.read(appLoadingIndicatorProvider(key: createProductKey).notifier).showLoading();
      await ref.read(mainDataSourceProvider).productCreate(payload: payload);
      AppToastSuccessDialog(message: "สร้างสินค้าสำเร็จ");
      ref.invalidate(marketProductListStateProvider);
      rootContext()?.pop();
      ref.read(appLoadingIndicatorProvider(key: createProductKey).notifier).hideLoading();
    } on NetworkException catch (e) {
      ref.read(appLoadingIndicatorProvider(key: createProductKey).notifier).hideLoading();
      AppToastFailedDialog(message: e.data.toString());
    } catch (e) {
      print("error $e");
      ref.read(appLoadingIndicatorProvider(key: createProductKey).notifier).hideLoading();
      AppToastFailedDialog(message: "เกิดข้อผิดพลาดทางระบบ");
    }
  }

  Future<void> removeOrder( String orderId) async {
    EasyLoading.show();
    try {
      await ref.read(mainDataSourceProvider).removeOrder(orderId: orderId);
      AppToastSuccessDialog(message: "ลบออเดอร์สำเร็จ");
      ref.invalidate(userStateProvider);
      ref.invalidate(orderListStateProvider);
      rootContext()?.pop();
    } on NetworkException catch (e) {
      AppToastFailedDialog(message: e.data.toString());
    } catch (e) {
      print("error $e");
      AppToastFailedDialog(message: "เกิดข้อผิดพลาดทางระบบ");
    } finally {
      EasyLoading.dismiss();
    }
  }

  Future<void> createCustomer(ICustomerPayload payload) async {
    try {
      ref.read(appLoadingIndicatorProvider(key: createCustomerKey).notifier).showLoading();
      final response = await ref.read(mainDataSourceProvider).createCustomer(payload);
      AppToastSuccessDialog(message: "เพิ่มรายชื่อใหม่สำเร็จ");
      rootContext()?.pop();
      if (response?['data'] != null) {
        ref.read(customerSelectStateProvider.notifier).update(CustomerModel.fromJson(response?['data']));
        await Future.delayed(Duration(seconds: 1));
        AppToastSuccessDialog(message: "ระบบเลือกรายชื่อลูกค้าใหม่อัติโนมัติ");
      }
      ref.read(appLoadingIndicatorProvider(key: createCustomerKey).notifier).hideLoading();
    } on NetworkException catch (e) {
      ref.read(appLoadingIndicatorProvider(key: createCustomerKey).notifier).showError(e);
      AppToastFailedDialog(message: e.data.toString());
    } catch (e) {
      ref.read(appLoadingIndicatorProvider(key: createCustomerKey).notifier).hideLoading();
      AppToastFailedDialog(message: "เกิดข้อผิดพลาดทางระบบ");
    }
  }

  Future<void> marketSubmitOrder(IBasketPayload payload) async {
    try {
      ref.read(appLoadingIndicatorProvider(key: marketSubmitFormKey).notifier).showLoading();
      await ref.read(mainDataSourceProvider).orderCreate(payload: payload);
      ref.read(appLoadingIndicatorProvider(key: marketSubmitFormKey).notifier).hideLoading();
      AppToastSuccessDialog(message: "สร้างออเดอร์สำเร็จ");
      ref.invalidate(marketProductSelectStateProvider);
      ref.invalidate(customerSelectStateProvider);
      ref.invalidate(orderListStateProvider);
      ref.invalidate(userStateProvider);
      //TODO:reload user data & order data;
    } on NetworkException catch (e) {
      ref.read(appLoadingIndicatorProvider(key: marketSubmitFormKey).notifier).showError(e);
      AppToastFailedDialog(message: e.data.toString());
    } catch (e) {
      ref.read(appLoadingIndicatorProvider(key: marketSubmitFormKey).notifier).showError(e);
      AppToastFailedDialog(message: "เกิดข้อผิดพลาดทางระบบ");
    }
  }

  Future<ImageSource?> showSelectorBottomSheet() async {
    return await showCupertinoModalPopup<ImageSource?>(
      context: rootContext()!,
      builder: (BuildContext context) {
        return CupertinoActionSheet(
          actions: <CupertinoActionSheetAction>[
            CupertinoActionSheetAction(
              onPressed: () async {
                rootContext()?.pop(ImageSource.camera);
              },
              child: Text("ถ่ายรูปภาพ"),
            ),
            CupertinoActionSheetAction(
              onPressed: () async {
                rootContext()?.pop(ImageSource.gallery);
              },
              child: Text("แกลเลอรี่"),
            ),
          ],
          cancelButton: CupertinoActionSheetAction(
            onPressed: () {
              context.pop();
            },
            child: const Text(
              'ยกเลิก',
            ),
          ),
        );
      },
    );
  }
}
