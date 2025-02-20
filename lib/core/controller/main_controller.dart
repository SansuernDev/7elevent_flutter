import 'dart:convert';
import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
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
import 'package:sevent_elevent/core/widgets/app_toast.dart';
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
        // ✅ Web: ใช้ file_picker
        FilePickerResult? result = await FilePicker.platform.pickFiles(
          type: FileType.image,
          withData: true,
        );

        if (result != null && result.files.isNotEmpty) {
          Uint8List bytes = result.files.first.bytes!;
          XFile file = XFile.fromData(bytes, name: result.files.first.name);
          String encodedBase64 = base64Encode(bytes);
          File originalFile = File(file.path);

          return UploadFileResponse(file: originalFile, base64: encodedBase64, bytes: bytes);
        }
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
      await ref.read(mainDataSourceProvider).productCreate(payload: payload);
      AppToastSuccessDialog(message: "สร้างสินค้าสำเร็จ");
      ref.invalidate(marketProductListStateProvider);
      rootContext()?.pop();
    } on NetworkException catch (e) {
      AppToastFailedDialog(message: e.data.toString());
    } catch (e) {
      print("error $e");
      AppToastFailedDialog(message: "เกิดข้อผิดพลาดทางระบบ");
    }
  }

  Future<void> createCustomer(ICustomerPayload payload) async {
    try {
      final response = await ref.read(mainDataSourceProvider).createCustomer(payload);
      AppToastSuccessDialog(message: "เพิ่มรายชื่อใหม่สำเร็จ");
      rootContext()?.pop();
      if (response?['data'] != null) {
        ref.read(customerSelectStateProvider.notifier).update(CustomerModel.fromJson(response?['data']));
        await Future.delayed(Duration(seconds: 1));
        AppToastSuccessDialog(message: "ระบบเลือกรายชื่อลูกค้าใหม่อัติโนมัติ");
      }
    } on NetworkException catch (e) {
      AppToastFailedDialog(message: e.data.toString());
    } catch (e) {
      print("error $e");
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
