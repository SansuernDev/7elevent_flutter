import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sevent_elevent/core/appcolor_extension.dart';
import 'package:sevent_elevent/core/extension/num.dart';
import 'package:sevent_elevent/core/model/user_model.dart';
import 'package:sevent_elevent/core/share_prefs.dart';
import 'package:sevent_elevent/core/state/user_state.dart';
import 'package:sevent_elevent/core/utils/number.dart';
import 'package:sevent_elevent/core/widgets/appbar.dart';
import 'package:skeletonizer/skeletonizer.dart';

class UserProfileTrailing extends HookConsumerWidget {
  const UserProfileTrailing({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final UserModel? user = ref.watch(userStateProvider);
    if (user == null || !(SharedPrefs().isAuthentication())) {
      return SizedBox(
        height: 40,
      );
    }
    return SizedBox(
      height: 40,
      child: Row(
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(100), border: Border.all(width: 2, color: context.appColors.primary)),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: CachedNetworkImage(
                imageUrl: user.image,

                fit: BoxFit.cover,
                errorWidget: (context, error, stackTrace) {
                  return Container(
                    width: 40,
                    height: 40,
                    color: context.appColors.btnDisable,
                  );
                },
              ),
            ),
          ),
          Gap(8),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                user.name.split(" ").firstOrNull ?? "",
                style: context.textTheme.bodySmall,
              ),
              Text(
                "คะแนน ${formatNumberToPrice(user.point)} P",
                style: context.textTheme.labelLarge?.apply(color: context.appColors.primary),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
