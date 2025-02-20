


import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/export.dart';
import 'package:sevent_elevent/core/app_loading.dart';
import 'package:sevent_elevent/core/appcolor_extension.dart';

class AppLoadingText extends StatelessWidget {
  const AppLoadingText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AppLoading(
            radius: 18,
          ),
          Text(
            "กำลังโหลดข้อมูล",
            style: context.textTheme.bodySmall?.apply(color: context.appColors.subTitle),
          )
        ],
      ),
    );
  }
}
