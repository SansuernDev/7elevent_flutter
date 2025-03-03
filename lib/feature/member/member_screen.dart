import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:get/get_utils/src/extensions/export.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sevent_elevent/core/appcolor_extension.dart';
import 'package:sevent_elevent/core/controller/main_controller.dart';
import 'package:sevent_elevent/core/model/market_model.dart';
import 'package:sevent_elevent/core/routes.dart';
import 'package:sevent_elevent/core/state/bottom_paginated_indicator.dart';
import 'package:sevent_elevent/core/state/market_state.dart';
import 'package:sevent_elevent/core/utils/date.dart';
import 'package:sevent_elevent/core/utils/number.dart';
import 'package:sevent_elevent/core/utils/size.dart';
import 'package:sevent_elevent/core/widgets/app_button.dart';
import 'package:sevent_elevent/core/widgets/app_text_field.dart';
import 'package:sevent_elevent/core/widgets/appbar.dart';
import 'package:sevent_elevent/core/widgets/image_upload_widget.dart';
import 'package:sevent_elevent/core/widgets/text_loading_paginate.dart';
import 'package:sevent_elevent/core/widgets/user_profile_trailing.dart';
import 'package:sevent_elevent/core/widgets/wrap_background.dart';
import 'package:sevent_elevent/feature/market/market_product_card.dart';
import 'package:sevent_elevent/gen/assets.gen.dart';

import '../../core/constant/constant.dart';

class MemberScreen extends HookConsumerWidget {
  const MemberScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = useTextEditingController();

    return Scaffold(
      appBar: MainAppBar(),
      body: WrapBackground(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Gap(24),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "รายชื่อสมาชิกในระบบ",
                  style: context.textTheme.labelLarge?.copyWith(fontSize: isMacbook ? 18 : 20),
                ),
                Gap(20),
                SizedBox(
                  width: 400,
                  child: TextFieldWithCancel(
                    hintText: "ค้นหาชื่อสมาชิก",
                    onChanged: (value) {
                      EasyDebounce.debounce(orderListState, const Duration(milliseconds: 500), () async {
                        ref.read(marketSearchStateProvider(key: memberListState).notifier).update(value);
                      });
                    },
                    controller: controller,
                  ),
                ),
                Gap(20),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      // borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        width: 1,
                        color: context.appColors.border,
                      ),
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: 80,
                          padding: EdgeInsets.all(8),
                          child: Text("ลำดับที่", style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                        Container(
                          width: 120,
                          padding: EdgeInsets.all(8),
                          child: Text("รูปภาพ", style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                        Container(
                          width: 160,
                          padding: EdgeInsets.all(8),
                          child: Text("ชื่อสมาชิก", style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                        Container(
                          width: 120,
                          padding: EdgeInsets.all(8),
                          child: Text("คะแนนสะสม (P)", style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                        Container(
                          width: 160,
                          padding: EdgeInsets.all(8),
                          child: Text("รหัสสมาชิก", style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                        Container(
                          width: 160,
                          padding: EdgeInsets.all(8),
                          child: Text("วันที่สร้าง", style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: RefreshIndicator(
                      onRefresh: () async {
                        ref.invalidate(memberListStateProvider);
                      },
                      child: CustomScrollView(
                        slivers: [
                          Consumer(
                            builder: (context, ref, child) {
                              final state = ref.watch(memberListStateProvider);
                              return state.when(
                                data: (data) {
                                  return SliverList.builder(
                                      itemCount: data.length,
                                      itemBuilder: (context, index) {
                                        final query = data[index];
                                        final numberIndex = query.id;

                                        ref.read(memberListStateProvider.notifier).checkRequestMoreData(index);
                                        return Container(
                                          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            border: Border(
                                              bottom: BorderSide(width: 1, color: context.appColors.border),
                                            ),
                                          ),
                                          child: Row(
                                            children: [
                                              Container(
                                                width: 80,
                                                padding: EdgeInsets.all(8),
                                                child: Text(formatNumberToPrice(numberIndex ?? 0), style: TextStyle(fontWeight: FontWeight.bold)),
                                              ),
                                              SizedBox(
                                                width: 120,
                                                child: Column(
                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                      width: 60,
                                                      height: 60,
                                                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(100), border: Border.all(width: 2, color: context.appColors.primary)),
                                                      child: ClipRRect(
                                                        borderRadius: BorderRadius.circular(100),
                                                        child: CachedNetworkImage(
                                                          imageUrl: query.image,
                                                          fit: BoxFit.cover,
                                                          errorWidget: (context, error, stackTrace) {
                                                            return Container(
                                                              width: 60,
                                                              height: 60,
                                                              color: context.appColors.light,
                                                              child: MyAssets.images.allmember.image(),
                                                            );
                                                          },
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                width: 160,
                                                padding: EdgeInsets.all(8),
                                                child: Text(query.name, style: TextStyle(fontWeight: FontWeight.bold)),
                                              ),
                                              Container(
                                                width: 120,
                                                padding: EdgeInsets.all(8),
                                                child: Text(formatNumberToPrice(query.point), style: TextStyle(fontWeight: FontWeight.bold)),
                                              ),
                                              Container(
                                                width: 160,
                                                padding: EdgeInsets.all(8),
                                                child: Text(query.username, style: TextStyle(fontWeight: FontWeight.bold)),
                                              ),
                                              Container(
                                                width: 160,
                                                padding: EdgeInsets.all(8),
                                                child: Text(getDateAndTimeStringFormatted(query.createdAt ?? DateTime.now()), style: TextStyle(fontWeight: FontWeight.bold)),
                                              ),
                                            ],
                                          ),
                                        );
                                      });
                                },
                                error: (error, stackTrace) {
                                  return SliverToBoxAdapter();
                                },
                                loading: () {
                                  return SliverToBoxAdapter();
                                },
                              );
                            },
                          ),
                          SliverToBoxAdapter(
                            child: TextLoadingPaginate(keyName: orderListState),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}

class OrderDetailDialog extends HookConsumerWidget {
  final OrderModel data;
  const OrderDetailDialog({super.key, required this.data});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Dialog(
      insetPadding: const EdgeInsets.all(16),
      child: Container(
        constraints: BoxConstraints(maxWidth: 800),
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "รายการที่สั่ง (${data.products.length})",
                        style: context.textTheme.bodyLarge,
                      ),
                      Gap(8),
                      SizedBox(
                        height: 500,
                        child: ListView.separated(
                          itemCount: data.products.length,
                          shrinkWrap: true,
                          separatorBuilder: (context, index) => Gap(8),
                          itemBuilder: (context, index) {
                            final query = data.products[index];
                            return ProductCardSelected(imageUrl: query.product.imageUrl, name: query.product.name, price: query.product.price, amount: query.amount);
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Gap(18),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "ข้อมูลลูกค้า",
                        style: context.textTheme.bodyLarge,
                      ),
                      Gap(8),
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            width: 1,
                            color: context.appColors.border,
                          ),
                        ),
                        child: Text(
                          "ชื่อ - สกุล : ${data.customer.name}\nเบอร์โทร : ${mobileNumberDisplayText(mobileNumber: data.customer.phoneNumber)}\nเบอร์ All member : ${mobileNumberDisplayText(mobileNumber: data.customer.allMemberNumber)}\nที่อยู่ : ${data.customer.address}\nวันที่สั่งซื้อ : ${getDateAndTimeStringFormatted(data.createdAt)}\nเลขที่ออเดอร์ : ${data.orderId}",
                          style: context.textTheme.bodyLarge,
                        ),
                      ),
                      Gap(24),
                      Text(
                        "ชื่อพนักงาน",
                        style: context.textTheme.bodyLarge,
                      ),
                      Gap(8),
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            width: 1,
                            color: context.appColors.border,
                          ),
                        ),
                        child: Text(
                          "ชื่อ - สกุล : ${data.member.name}\nรหัสพนักงาน : ${data.member.username}",
                          style: context.textTheme.bodyLarge,
                        ),
                      ),
                      Gap(28),
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              "หากลบแล้วไม่สามารถกู้คืนได้อีก",
                              style: context.textTheme.bodyMedium?.apply(color: context.appColors.subTitle),
                            ),
                          ),
                          InkWell(
                            onTap: () async {
                              ref.read(mainControllerProvider).removeOrder(data.orderId);
                            },
                            child: Row(
                              children: [
                                Icon(
                                  Icons.delete,
                                  color: context.appColors.error1,
                                ),
                                Text(
                                  "ลบออเดอร์นี้",
                                  style: context.textTheme.labelLarge
                                      ?.apply(color: context.appColors.error1, decoration: TextDecoration.underline, decorationColor: context.appColors.error1),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Gap(28),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Text(
                              "ยอดรวม",
                              style: context.textTheme.titleMedium?.apply(color: context.appColors.subTitle),
                            ),
                          ),
                          Text(
                            "฿ ${formatNumberToPrice(data.total)}",
                            style: context.textTheme.displaySmall?.apply(color: context.appColors.primary),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
            Divider(
              color: context.appColors.border,
            ),
            Gap(24),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppButton(
                  backgroundColor: Color(0xFF636363),
                  textColor: Colors.white,
                  width: 160,
                  height: 42,
                  onPressed: () {
                    rootContext()?.pop();
                  },
                  text: "ย้อนกลับ",
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
