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
  final void Function((File, String))? callback;
  const ImageUploadWidget({super.key, required this.callback});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ValueNotifier<File?> imageFile = useState(null);
    ValueNotifier<String?> base64String = useState(null);
    return Stack(
      children: [
        InkWell(
          onTap: () async {
            final (File? file, String? base64) = await ref.read(mainControllerProvider).uploadImage();
            if (file != null && base64 != null) {
              imageFile.value = file;
              base64String.value = base64;
              callback?.call((file, base64));
            }
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
                        base64Decode(base64String.value!),
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
