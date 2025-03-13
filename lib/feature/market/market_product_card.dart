import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:gap/gap.dart';
import 'package:get/get_utils/src/extensions/export.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sevent_elevent/core/appcolor_extension.dart';
import 'package:sevent_elevent/core/utils/number.dart';
import 'package:sevent_elevent/core/utils/size.dart';
import 'package:sevent_elevent/core/widgets/animation_button.dart';
import 'package:sevent_elevent/feature/authentication/login_screen.dart';
import 'package:sevent_elevent/gen/assets.gen.dart';

class MarketProductCard extends StatelessWidget {
  final String imageUrl;
  final String name;
  final num price;
  final void Function() onTap;
  const MarketProductCard({super.key, required this.imageUrl, required this.name, required this.price, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return AnimatedButton(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(width: 1, color: context.appColors.border),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8),
                      topRight: Radius.circular(8),
                    ),
                    child: CachedNetworkImage(
                      height: responsiveSize(
                        context: context,
                        onSmaller: () => 120,
                        onSmall: () => 120,
                        onBigger: () => 160,
                        onBiggest: () => 120,
                      ),
                      width: double.infinity,
                      imageUrl: imageUrl,
                      fit: BoxFit.cover,
                      errorWidget: (context, url, error) {
                        return MyAssets.images.allmember.image(fit: BoxFit.cover);
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: Text(
                      name,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: context.textTheme.bodyLarge,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12, right: 12, bottom: 12),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Expanded(
                    child: RichText(
                      text: TextSpan(
                        style: context.textTheme.labelSmall?.apply(color: context.appColors.primary),
                        text: "฿ ",
                        children: [
                          TextSpan(
                            style: context.textTheme.labelLarge?.apply(color: Colors.black),
                            text: formatNumberToPrice(price),
                          ),
                        ],
                      ),
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Container(
                      width: 40,
                      height: 40,
                      color: context.appColors.primary,
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MarketProductHit extends StatelessWidget {
  final String imageUrl;
  final String name;
  final num price;
  final void Function() onTap;
  const MarketProductHit({super.key, required this.imageUrl, required this.name, required this.price, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        constraints: BoxConstraints(minWidth: 200),
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
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
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: CachedNetworkImage(
                height: 40,
                width: 40,
                imageUrl: imageUrl,
                errorWidget: (context, url, error) {
                  return MyAssets.images.allmember.image(fit: BoxFit.cover);
                },
              ),
            ),
            Gap(8),
            Text(
              name,
              style: context.textTheme.bodyLarge?.apply(color: context.appColors.subTitle),
            ),
          ],
        ),
      ),
    );
  }
}

class MarketCustomerCard extends StatelessWidget {
  final String name;
  final String phoneNumber;
  final String allMemberNumber;
  final String address;
  final bool showIcon;
  const MarketCustomerCard({super.key, required this.name, required this.phoneNumber, required this.allMemberNumber, required this.address, this.showIcon = true});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          width: 1,
          color: context.appColors.border,
        ),
      ),
      child: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(
                    child: Text(
                      "ชื่อ - สกุล : $name\nเบอร์โทร : ${mobileNumberDisplayText(mobileNumber: phoneNumber)}\nเบอร์ All member : ${mobileNumberDisplayText(mobileNumber: allMemberNumber)}\nที่อยู่ : $address",
                      maxLines: 5,
                      overflow: TextOverflow.ellipsis,
                      style: context.textTheme.bodyLarge,
                    ),
                  ),
                  Gap(16),
                  if (showIcon)
                    ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Container(
                        width: 30,
                        height: 30,
                        color: context.appColors.subPrimary,
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      ),
                    )
                ],
              ),
            ],
          ),
          Positioned(
            right: 0,
            top: 0,
            child: Opacity(opacity: .4, child: MyAssets.images.allmember.image(width: 60)),
          )
        ],
      ),
    );
  }
}

class MarketProductCardSelect extends HookConsumerWidget {
  final String imageUrl;
  final String name;
  final num price;
  final num amount;
  final void Function()? onRemove;
  const MarketProductCardSelect({super.key, required this.imageUrl, required this.name, required this.price, required this.amount, required this.onRemove});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ClipRRect(
      child: Slidable(
        closeOnScroll: true,
        endActionPane: ActionPane(
          extentRatio: .3,
          motion: const StretchMotion(), // หรือ `DrawerMotion()` ได้
          children: [
            SlidableAction(
              onPressed: (context) {
                onRemove?.call();
              },
              icon: Icons.delete,
              backgroundColor: context.appColors.error1,
              label: "ลบ",
            ),
          ],
        ),
        child: ProductCardSelected(
          amount: amount,
          imageUrl: imageUrl,
          price: price,
          name: name,
        ),
      ),
    );
  }
}

class ProductCardSelected extends StatelessWidget {
  final String imageUrl;
  final String name;
  final num price;
  final num amount;
  const ProductCardSelected({super.key, required this.imageUrl, required this.name, required this.price, required this.amount});

  @override
  Widget build(BuildContext context) {
    final size = responsiveSize(
      context: context,
      onSmaller: () => 34,
      onSmall: () => 34,
      onBigger: () => 60,
      onBiggest: () => 60,
    );
    return Container(
      padding: const EdgeInsets.all(12),
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
        children: [
          CachedNetworkImage(
            height: size,
            width: size,
            imageUrl: imageUrl,
            fit: BoxFit.cover,
            errorWidget: (context, url, error) {
              return MyAssets.images.allmember.image(fit: BoxFit.cover);
            },
          ),
          Gap(12),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "$amount x $name",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: context.textTheme.bodyLarge,
                ),
                Text(
                  "฿ ${formatNumberToPrice(price)}",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: context.textTheme.bodyLarge?.apply(color: context.appColors.subTitle),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

String mobileNumberDisplayText({
  required String mobileNumber,
}) {
  RegExp regexMbNumber = RegExp(r"(^([0])([6|8|9])[0-9]{8}$)");
  RegExp regexMbNumber9Digits = RegExp(r"(^([0])([2|3|4|5|7])[0-9]{7}$)");
  if (regexMbNumber.hasMatch(mobileNumber)) {
    if (mobileNumber.length == 10) {
      return [mobileNumber.substring(0, 3), mobileNumber.substring(3, 6), mobileNumber.substring(6)].join("-");
    } else {
      return mobileNumber;
    }
  } else if (regexMbNumber9Digits.hasMatch(mobileNumber) && mobileNumber.length == 9) {
    return [mobileNumber.substring(0, 2), mobileNumber.substring(2, 5), mobileNumber.substring(5)].join("-");
  } else {
    return mobileNumber;
  }
}
