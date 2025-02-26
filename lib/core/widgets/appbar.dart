import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:sevent_elevent/core/appcolor_extension.dart';
import 'package:sevent_elevent/core/constant/constant.dart';
import 'package:sevent_elevent/core/widgets/user_profile_trailing.dart';


class MainAppBar extends DefaultAppBar {
  const MainAppBar({super.key,  super.title = branchName});

  @override
  Widget build(BuildContext context) {
    return DefaultAppBar(
      useTap: false,
      title: branchName,
      trailing: UserProfileTrailing(),
    );
  }
}


class DefaultAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double? height;
  final bool close;
  final String title;
  final VoidCallback? onTap;
  final bool useTap;
  final Widget? trailing;
  final Widget? bottom;

  const DefaultAppBar({
    super.key,
    this.height,
    required this.title,
    this.onTap,
    this.useTap = true,
    this.trailing,
    this.close = false,
    this.bottom,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(
            width: 1,
            color: context.appColors.border,
          ),
        ),
      ),
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
              child:  Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      if (useTap)
                        GestureDetector(
                          onTap: onTap ?? () => Navigator.of(context).pop(),
                          child: Icon(
                            key: const Key("iconClose"),
                            close ? Icons.close : Icons.chevron_left,
                            color: close ? context.appColors.subTitle : context.appColors.darkGrey,
                            size: 24,
                          ),
                        ),
                      if (useTap) const Gap(16),
                      Text(
                        title,
                        style: context.textTheme.labelLarge,
                      )
                    ],
                  ),
                  trailing ?? Container(),
                ],
              ),
            ),
            if (bottom != null) bottom!,
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height ?? kToolbarHeight + 9);
}
