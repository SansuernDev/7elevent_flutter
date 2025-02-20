import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:sevent_elevent/core/appcolor_extension.dart';
import 'package:sevent_elevent/core/utils/number.dart';

class PromotionInfo extends StatelessWidget {
  final double width;
  const PromotionInfo({super.key, required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(minHeight: 120),
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
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(border: Border.all(color: context.appColors.border, width: 1), borderRadius: BorderRadius.circular(8)),
              child: Image.asset(
                width: 90,
                height: 90,
                'assets/images/7eleven.png',
                fit: BoxFit.cover,
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
                        child: Text(
                          "นายสุขกาย สุขใจ",
                          style: context.textTheme.labelLarge,
                        ),
                      ),
                      Image.asset(
                        width: 32,
                        'assets/images/reward_1.png',
                      ),
                    ],
                  ),
                  Gap(50),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          "คะแนนสะสม",
                          style: context.textTheme.bodyLarge,
                        ),
                      ),
                      Text(
                        "${formatNumberToPrice(14096)} P",
                        style: context.textTheme.labelLarge?.apply(color: context.appColors.subPrimary),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
