





import 'dart:convert';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sevent_elevent/core/constant/constant.dart';
import 'package:sevent_elevent/core/datasource/main_datasource.dart';
import 'package:sevent_elevent/core/dio_manager.dart';
import 'package:sevent_elevent/core/model/market_model.dart';
import 'package:sevent_elevent/core/network_manager.dart';
import 'package:sevent_elevent/core/routes.dart';
import 'package:sevent_elevent/core/state/bottom_paginated_indicator.dart';
import 'package:sevent_elevent/core/state/market_state.dart';
import 'package:sevent_elevent/core/widgets/app_toast.dart';

part 'main_controller.g.dart';

@Riverpod(keepAlive: true)
MainController mainController(MainControllerRef ref) {
  return MainController(ref);
}


class MainController {
  final ProviderRef ref;
  MainController(this.ref);

  Future<(File?, String?)> uploadImage() async {
    try {
      final ImagePicker picker = ImagePicker();
      final ImageSource? source = await showSelectorBottomSheet();
      if (source != null) {
        final XFile? file = await picker.pickImage(source: source);
        File originalFile = File(file!.path);
        List<int> imageBytes = await originalFile.readAsBytes();
        String encodedBase64 = base64Encode(imageBytes);
        return (originalFile, encodedBase64);
      }
    } catch (e) {
      print(e);
    }
    return (null, null);
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