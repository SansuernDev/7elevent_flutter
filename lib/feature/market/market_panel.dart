import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:gap/gap.dart';
import 'package:get/get_utils/src/extensions/export.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sevent_elevent/core/appcolor_extension.dart';
import 'package:sevent_elevent/core/constant/constant.dart';
import 'package:sevent_elevent/core/controller/main_controller.dart';
import 'package:sevent_elevent/core/model/customer_model.dart';
import 'package:sevent_elevent/core/model/market_model.dart';
import 'package:sevent_elevent/core/state/bottom_paginated_indicator.dart';
import 'package:sevent_elevent/core/state/market_state.dart';
import 'package:sevent_elevent/core/state/user_state.dart';
import 'package:sevent_elevent/core/utils/number.dart';
import 'package:sevent_elevent/core/widgets/app_button.dart';
import 'package:sevent_elevent/core/widgets/app_text_field.dart';
import 'package:sevent_elevent/core/widgets/text_loading_paginate.dart';
import 'package:sevent_elevent/feature/market/market_product_card.dart';
import 'package:sevent_elevent/gen/assets.gen.dart';
import 'package:skeletonizer/skeletonizer.dart';

class MarketPanel extends HookConsumerWidget {
  const MarketPanel({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final marketSearchController = useTextEditingController();
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(left: BorderSide(width: 1, color: context.appColors.border)),
      ),
      height: 1.sh,
      width: 400,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 28, horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    "ตะกร้าของฉัน",
                    style: context.textTheme.labelLarge?.copyWith(fontSize: 20),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: InkWell(
                    onTap: () {},
                    child: Text(
                      "+ เพิ่มรายชื่อใหม่",
                      style: context.textTheme.bodyLarge?.copyWith(color: context.appColors.primary),
                    ),
                  ),
                ),
              ],
            ),
            Gap(12),
            TextFieldWithCancel(
              hintText: "ค้นหารายชื่อลูกค้า",
              controller: marketSearchController,
              onChanged: (value) {
                EasyDebounce.debounce(marketCustomerListState, const Duration(milliseconds: 500), () async {
                  ref.read(marketSearchStateProvider(key: marketCustomerListState).notifier).update(value);
                });
              },
            ),
            Gap(14),
            Text(
              "ข้อมูลลูกค้า",
              style: context.textTheme.bodyLarge?.apply(color: context.appColors.subTitle),
            ),
            Gap(8),
            Expanded(
              child: HookConsumer(
                builder: (context, ref, child) {

                  final text = useListenableSelector(
                    marketSearchController,
                    () => marketSearchController.text,
                  );
                  if (text.isNotEmpty) {
                    var customerStateList = ref.watch(marketCustomerListStateProvider);
                    if (customerStateList is! AsyncData) {
                      return Skeletonizer(
                        enabled: true,
                        child: ListView.separated(
                          shrinkWrap: true,
                          separatorBuilder: (context, index) => Gap(4),
                          itemCount: 10,
                          itemBuilder: (context, index) {
                            return MarketCustomerCard(
                              name: "",
                              address: "",
                              allMemberNumber: "",
                              phoneNumber: "",
                            );
                          },
                        ),
                      );
                    }
                    return Column(
                      children: [
                        Expanded(
                          child: RefreshIndicator(
                            onRefresh: ()  async {
                              ref.invalidate(marketCustomerListStateProvider);
                            },
                            child: ListView.separated(
                              shrinkWrap: true,
                              separatorBuilder: (context, index) => Gap(4),
                              itemCount: customerStateList.asData?.value.length ?? 0,
                              itemBuilder: (context, index) {
                                final query = customerStateList.asData?.value[index];
                                if (query == null) return SizedBox();
                                ref.read(marketCustomerListStateProvider.notifier).checkRequestMoreData(index);

                                return GestureDetector(
                                  onTap: () {
                                    ref.read(customerSelectStateProvider.notifier).update(query);
                                    marketSearchController.text = "";
                                  },
                                  child: MarketCustomerCard(
                                    name: query.name,
                                    phoneNumber: query.phoneNumber,
                                    allMemberNumber: query.allMemberNumber,
                                    address: query.address,
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                        TextLoadingPaginate(keyName: marketCustomerListState)
                      ],
                    );
                  }
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Consumer(
                        builder: (context, ref, child) {
                          final CustomerModel? data = ref.watch(customerSelectStateProvider);

                          if (data == null) return EmptySearch();
                          return ClipRRect(
                            child: Slidable(
                              closeOnScroll: true,
                              endActionPane: ActionPane(
                                extentRatio: .3,
                                motion: const StretchMotion(), // หรือ `DrawerMotion()` ได้
                                children: [
                                  SlidableAction(
                                    onPressed: (context) {
                                      ref.read(customerSelectStateProvider.notifier).clear();
                                    },
                                    icon: Icons.delete,
                                    backgroundColor: context.appColors.error1,
                                    label: "ลบ",
                                  ),
                                ],
                              ),
                              child: MarketCustomerCard(
                                showIcon: false,
                                name: data.name,
                                phoneNumber: data.phoneNumber,
                                allMemberNumber: data.allMemberNumber,
                                address: data.address,
                              ),
                            ),
                          );
                        },
                      ),
                      Gap(16),
                      Text(
                        "รายการที่ซื้อบ่อย",
                        style: context.textTheme.bodyLarge?.apply(color: context.appColors.subTitle),
                      ),
                      Gap(8),
                      SizedBox(
                        height: 70,
                        child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              return MarketProductHit();
                            },
                            separatorBuilder: (context, index) => Gap(8),
                            itemCount: 4),
                      ),
                      Gap(16),
                      Consumer(
                        builder: (context, ref, child) {
                          final data = ref.watch(marketProductSelectStateProvider);
                          return Row(
                            children: [
                              Expanded(
                                child: Text(
                                  "รายการที่สั่ง ${data.isNotEmpty ? "(${data.length})" : ""}",
                                  style: context.textTheme.bodyLarge?.apply(color: context.appColors.subTitle),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: InkWell(
                                  onTap: () {
                                    ref.read(marketProductSelectStateProvider.notifier).clear();
                                  },
                                  child: Text(
                                    "-  ลบสินค้าทั้งหมด",
                                    style: context.textTheme.bodyLarge?.copyWith(color: context.appColors.error1),
                                  ),
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                      Gap(8),
                      Divider(
                        color: context.appColors.border,
                      ),
                      Expanded(
                        child: Consumer(
                          builder: (context, ref, child) {
                            final data = ref.watch(marketProductSelectStateProvider);

                            if (data.isEmpty) {
                              return Center(
                                child: Text(
                                  "ยังไม่มีรายการสินค้าที่คุณเลือก",
                                  style: context.textTheme.bodyLarge?.copyWith(color: context.appColors.subTitle),
                                ),
                              );
                            }

                            return ListView.separated(
                              shrinkWrap: true,
                              itemCount: data.length,
                              separatorBuilder: (context, index) => Gap(8),
                              itemBuilder: (context, index) {
                                return MarketProductCardSelect(
                                  onRemove: () {
                                    ref.read(marketProductSelectStateProvider.notifier).remove(data[index].productId);
                                  },
                                  name: data[index].name,
                                  price: data[index].price,
                                  imageUrl: data[index].imageUrl,
                                  amount: data[index].amount,
                                );
                              },
                            );
                          },
                        ),
                      ),
                      Divider(
                        color: context.appColors.border,
                      ),
                      Gap(12),
                      Consumer(
                        builder: (context, ref, child) {
                          final product = ref.watch(marketProductSelectStateProvider);
                          final customer = ref.watch(customerSelectStateProvider);
                          final isLoading = ref.watch(appLoadingIndicatorProvider(key: marketSubmitFormKey)) is AsyncLoading;
                          final enable = product.isNotEmpty && customer != null && !isLoading;
                          final summary = MarketSummaryBasket(product);
                          return Column(
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                      child: Text(
                                    "ยอดรวม",
                                    style: context.textTheme.bodyLarge?.copyWith(color: context.appColors.subTitle),
                                  )),
                                  Text(
                                    formatNumberToPrice(summary.getTotalPrice),
                                    style: context.textTheme.labelLarge,
                                  ),
                                ],
                              ),
                              Gap(16),
                              AppButton(
                                isLoading: isLoading,
                                enable: enable,
                                width: double.infinity,
                                backgroundColor: context.appColors.primary,
                                textColor: Colors.white,
                                height: 42,
                                onPressed: () {
                                  if (!enable) return;
                                  List<IBasketProductPayload> productIds = product.map((e) => IBasketProductPayload(productId: e.productId, amount: e.amount),).toList();
                                  final memberId = ref.read(userStateProvider)?.memberId ?? "";
                                  final payload = IBasketPayload(customerId: customer.customerId, memberId: memberId, total: summary.getTotalPrice, productIds: productIds);
                                  EasyDebounce.debounce(marketCustomerListState, const Duration(milliseconds: 200), () async {
                                    ref.read(mainControllerProvider).marketSubmitOrder(payload);
                                  });
                                },
                                text: "บันทึกรายการนี้",
                              )
                            ],
                          );
                        },
                      )
                    ],
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

class EmptySearch extends StatelessWidget {
  const EmptySearch({super.key});

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
      width: double.infinity,
      height: 154,
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.search,
            color: context.appColors.subTitle,
            size: 28,
          ),
          Gap(4),
          Text(
            "กรุณาค้นหาข้อมูลลูกค้า",
            style: context.textTheme.bodyLarge?.apply(color: context.appColors.subTitle),
          ),
        ],
      )),
    );
  }
}
