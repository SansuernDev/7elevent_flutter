import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get_common/get_reset.dart';
import 'package:get/get_utils/src/extensions/export.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sevent_elevent/core/app_loading.dart';
import 'package:sevent_elevent/core/appcolor_extension.dart';
import 'package:sevent_elevent/core/controller/main_controller.dart';
import 'package:sevent_elevent/core/routes.dart';
import 'package:sevent_elevent/core/utils/size.dart';
import 'package:sevent_elevent/core/widgets/app_button.dart';
import 'package:sevent_elevent/core/widgets/app_text_field.dart';
import 'package:sevent_elevent/core/widgets/wrap_background.dart';
import 'package:sevent_elevent/feature/authentication/login_controller.dart';
import 'package:sevent_elevent/feature/authentication/login_model.dart';
import 'package:sevent_elevent/gen/assets.gen.dart';

class LoginScreen extends StatefulHookConsumerWidget {
  const LoginScreen({super.key});

  @override
  LoginScreenState createState() => LoginScreenState();
}

class LoginScreenState extends ConsumerState<LoginScreen> {
  bool isLogin = true;
  UploadFileResponse? imageFile;

  @override
  Widget build(BuildContext context) {
    final memberIdController = useTextEditingController();
    final passwordController = useTextEditingController();
    final nameController = useTextEditingController();

    return Scaffold(
      body: WrapBackground(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(8), border: Border.all(width: 1, color: context.appColors.border)),
                width: 500,
                padding: EdgeInsets.all(60),
                child: Column(
                  children: [
                    MyAssets.images.a7eleven.image(width: 120),
                    Gap(40),
                    AppTextField(
                      label: "Member Id",
                      hintText: 'Member Id',
                      controller: memberIdController,
                    ),
                    Gap(24),
                    AppTextField(
                      label: "password",
                      hintText: 'password',
                      controller: passwordController,
                    ),
                    Gap(24),
                    SizedBox(
                      height: 275,
                      child: Stack(
                        children: [
                          AnimatedPositioned(
                            duration: Duration(milliseconds: 300),
                            left: isLogin ? 0 : -400, // กำหนดตำแหน่งเริ่มต้นและสิ้นสุด
                            top: 0,
                            bottom: 0,
                            width: 500 - 122,
                            child: Column(
                              children: [
                                Gap(120),
                                HookBuilder(
                                  builder: (context) {
                                    final passwordText = useListenableSelector(
                                      passwordController,
                                      () => passwordController.text,
                                    );
                                    final usernameText = useListenableSelector(
                                      memberIdController,
                                      () => memberIdController.text,
                                    );
                                    final enable = passwordText.isNotEmpty && usernameText.isNotEmpty;
                                    return AppButton(
                                      enable: enable,
                                      backgroundColor: context.appColors.secondary,
                                      textColor: Colors.white,
                                      width: 380,
                                      height: 42,
                                      onPressed: () {
                                        ref.read(loginControllerProvider).login(usernameText, passwordText);
                                      },
                                      text: "เข้าสู่ระบบ",
                                    );
                                  },
                                ),
                                Gap(14),
                                Row(
                                  children: [
                                    Text(
                                      "คุณมีบัญชีหรือยัง ? ",
                                      style: context.textTheme.bodySmall?.apply(color: context.appColors.subTitle),
                                    ),
                                    Gap(14),
                                    AppButton(
                                      backgroundColor: Color(0xFF636363),
                                      textColor: Colors.white,
                                      width: 120,
                                      height: 42,
                                      onPressed: () {
                                        setState(() {
                                          isLogin = !isLogin; // สลับ state เมื่อกดปุ่ม
                                        });
                                      },
                                      text: "สมัครสมาชิก",
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          AnimatedPositioned(
                            duration: Duration(milliseconds: 300),
                            left: isLogin ? 400 : 0, // กำหนดตำแหน่งเริ่มต้นและสิ้นสุด
                            top: 0,
                            bottom: 0,
                            width: 500 - 122,
                            child: Column(
                              children: [
                                AppTextField(
                                  label: "ชื่อ - สกุล",
                                  hintText: 'ชื่อ - สกุล',
                                  controller: nameController,
                                ),
                                Gap(24),
                                Stack(
                                  children: [
                                    InkWell(
                                      onTap: () async {
                                        final res = await ref.read(mainControllerProvider).uploadImage();
                                        setState(() {
                                          imageFile = res;
                                        });
                                      },
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(8),
                                        child: Container(
                                            height: 120,
                                            width: 120,
                                            decoration: BoxDecoration(color: context.appColors.border),
                                            child: imageFile == null
                                                ? Center(
                                                    child: Text(
                                                    "เพิ่มรูปภาพ",
                                                    style: context.textTheme.bodySmall?.apply(color: context.appColors.subTitle),
                                                  ))
                                                : Image.memory(
                                                    base64Decode(imageFile?.base64 ?? ""),
                                                    fit: BoxFit.cover,
                                                    frameBuilder: (context, child, frame, wasSynchronouslyLoaded) {
                                                      if (frame == null) {
                                                        return AppLoading();
                                                      }
                                                      return child;
                                                    },
                                                    errorBuilder: (context, error, stackTrace) {
                                                      print(error);
                                                      return Center(
                                                          child: Text(
                                                        "ไฟล์มีปัญหา",
                                                        style: context.textTheme.bodySmall?.apply(color: context.appColors.subTitle),
                                                      ));
                                                    },
                                                  )),
                                      ),
                                    ),
                                    if (imageFile == null)
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
                                ),
                                Gap(24),
                                Row(
                                  children: [
                                    Expanded(
                                      child: AppButton(
                                        backgroundColor: Color(0xFF636363),
                                        textColor: Colors.white,
                                        width: 380,
                                        height: 42,
                                        onPressed: () {
                                          setState(() {
                                            nameController.text = "";
                                            passwordController.text = "";
                                            memberIdController.text = "";
                                            imageFile = null;
                                            isLogin = !isLogin;
                                          });
                                        },
                                        text: "ย้อนกลับ",
                                      ),
                                    ),
                                    Gap(14),
                                    Expanded(
                                      child: HookBuilder(
                                        builder: (context) {
                                          final nameText = useListenableSelector(
                                            nameController,
                                            () => nameController.text,
                                          );
                                          final passwordText = useListenableSelector(
                                            passwordController,
                                            () => passwordController.text,
                                          );
                                          final usernameText = useListenableSelector(
                                            memberIdController,
                                            () => memberIdController.text,
                                          );
                                          final enable = nameText.isNotEmpty && passwordText.isNotEmpty && usernameText.isNotEmpty && imageFile != null;
                                          return AppButton(
                                            enable: enable,
                                            backgroundColor: context.appColors.secondary,
                                            textColor: Colors.white,
                                            width: 380,
                                            height: 42,
                                            onPressed: () {
                                              Uint8List? bytes = imageFile?.bytes;
                                              final payload = IMemberPayload(name: nameText, password: passwordText, username: usernameText, image: imageFile?.file, bytes: bytes);
                                              ref.read(loginControllerProvider).register(payload);
                                            },
                                            text: "สมัครสมาชิก",
                                          );
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Gap(12),
                    InkWell(
                      onTap: () {
                        context.goNamed('home');
                      },
                      child: Center(
                        child: Text(
                          "กลับไปยังหน้าแรก",
                          style: context.textTheme.labelLarge?.apply(color: context.appColors.subPrimary, decoration: TextDecoration.underline),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
