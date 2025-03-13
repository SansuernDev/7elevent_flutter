import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:sevent_elevent/core/appcolor_extension.dart';
import 'package:sevent_elevent/core/model/user_model.dart';
import 'package:sevent_elevent/core/utils/number.dart';
import 'package:sevent_elevent/core/utils/size.dart';
import 'package:sevent_elevent/gen/assets.gen.dart';

class PromotionInfo extends StatelessWidget {
  final UserModel data;
  final double? width;
  final int index;
  const PromotionInfo({super.key, this.width, required this.data, required this.index});

  @override
  Widget build(BuildContext context) {
    final imageIndex = index + 1;
    return Container(
      margin: EdgeInsets.all(12),
      width: width,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          width: 1,
          color: context.appColors.border,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(8),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: CachedNetworkImage(
                width: 90,
                height: 90,
                imageUrl: data.image,
                fit: BoxFit.cover,
                errorWidget: (context, error, stackTrace) {
                  return Container(
                    width: 90,
                    height: 90,
                    color: context.appColors.light,
                    child: MyAssets.images.allmember.image(),
                  );
                },
              ),
            ),
          ),
          Gap(14),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "ชื่อสมาชิก ${data.name}",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: context.textTheme.labelLarge?.copyWith(fontSize: responsiveSize(
                              context: context,
                              onSmaller: () => 22,
                              onSmall: () => 18,
                              onBigger: () => 18,
                              onBiggest: () => 18,
                            )),
                          ),
                          Text(
                            "รหัสสมาชิก ${data.username}",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: context.textTheme.bodyLarge?.copyWith(fontSize: responsiveSize(
                              context: context,
                              onSmaller: () => 18,
                              onSmall: () => 14,
                              onBigger: () => 14,
                              onBiggest: () => 14,
                            )),
                          ),
                        ],
                      ),
                    ),
                    (imageIndex < 4)
                        ? Image.asset(
                            height: 50,
                            width: 50,
                            'assets/images/reward_$imageIndex.png',
                          )
                        : SizedBox(
                            height: 50,
                            width: 50,
                          ),
                  ],
                ),
                Gap(12),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        "คะแนนสะสม",
                        style: context.textTheme.bodyLarge,
                      ),
                    ),
                    Text(
                      "${formatNumberToPrice(data.point)} P",
                      style: context.textTheme.labelLarge?.copyWith(color: context.appColors.subPrimary,fontSize: responsiveSize(
                        context: context,
                        onSmaller: () => 22,
                        onSmall: () => 18,
                        onBigger: () => 18,
                        onBiggest: () => 18,
                      )),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
