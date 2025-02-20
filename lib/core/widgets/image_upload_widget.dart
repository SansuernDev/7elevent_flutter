import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get/get_utils/src/extensions/export.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sevent_elevent/core/app_loading.dart';
import 'package:sevent_elevent/core/appcolor_extension.dart';
import 'package:sevent_elevent/core/controller/main_controller.dart';

class ImageUploadWidget extends HookConsumerWidget {
  final void Function(UploadFileResponse?)? callback;
  const ImageUploadWidget({super.key, required this.callback});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ValueNotifier<UploadFileResponse?> imageFile = useState(null);
    return Stack(
      children: [
        InkWell(
          onTap: () async {
            final res = await ref.read(mainControllerProvider).uploadImage();
            imageFile.value = res;
            callback?.call(res);
          },
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Container(
                height: 120,
                width: 120,
                decoration: BoxDecoration(color: context.appColors.border),
                child: imageFile.value == null
                    ? Center(
                        child: Text(
                        "เพิ่มรูปภาพ",
                        style: context.textTheme.bodySmall?.apply(color: context.appColors.subTitle),
                      ))
                    : Image.memory(
                        base64Decode(imageFile.value?.base64 ?? ""),
                        fit: BoxFit.cover,
                        frameBuilder: (context, child, frame, wasSynchronouslyLoaded) {
                          if (frame == null) {
                            return AppLoading();
                          }
                          return child;
                        },
                        errorBuilder: (context, error, stackTrace) {
                          return Center(
                              child: Text(
                            "ไฟล์มีปัญหา",
                            style: context.textTheme.bodySmall?.apply(color: context.appColors.subTitle),
                          ));
                        },
                      )),
          ),
        ),
        if (imageFile.value == null)
          Positioned(
            right: 0,
            bottom: 0,
            child: Container(
              height: 25,
              width: 40,
              decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.only(topLeft: Radius.circular(8))),
              child: Icon(
                Icons.camera_alt_rounded,
                color: Colors.black.withOpacity(.5),
              ),
            ),
          )
      ],
    );
  }
}
