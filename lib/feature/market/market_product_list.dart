import 'dart:io';

import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:get/get_common/get_reset.dart';
import 'package:get/get_utils/src/extensions/export.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sevent_elevent/core/app_loading.dart';
import 'package:sevent_elevent/core/appcolor_extension.dart';
import 'package:sevent_elevent/core/constant/constant.dart';
import 'package:sevent_elevent/core/controller/main_controller.dart';
import 'package:sevent_elevent/core/model/market_model.dart';
import 'package:sevent_elevent/core/model/paginated_status.dart';
import 'package:sevent_elevent/core/model/product_model.dart';
import 'package:sevent_elevent/core/routes.dart';
import 'package:sevent_elevent/core/state/bottom_paginated_indicator.dart';
import 'package:sevent_elevent/core/state/market_state.dart';
import 'package:sevent_elevent/core/widgets/app_button.dart';
import 'package:sevent_elevent/core/widgets/app_loading_text.dart';
import 'package:sevent_elevent/core/widgets/app_text_field.dart';
import 'package:sevent_elevent/core/widgets/image_upload_widget.dart';
import 'package:sevent_elevent/core/widgets/text_loading_paginate.dart';
import 'package:sevent_elevent/feature/market/market_product_card.dart';
import 'package:sevent_elevent/gen/assets.gen.dart';
import 'package:skeletonizer/skeletonizer.dart';

class MarketProductList extends HookConsumerWidget {
  const MarketProductList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = useTextEditingController();

    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        children: [
          Container(
            height: 140,
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(width: 1, color: context.appColors.border),
                borderRadius: BorderRadius.circular(8),
                image: DecorationImage(image: MyAssets.images.market.provider(), fit: BoxFit.cover)),
          ),
          Gap(12),
          Row(
            children: [
              Expanded(
                child: TextFieldWithCancel(
                  hintText: "ค้นหาสินค้า",
                  onChanged: (value) {
                    EasyDebounce.debounce("MarketProductList", const Duration(milliseconds: 500), () async {
                      ref.read(marketSearchStateProvider(key: marketProductListState).notifier).update(value);
                    });
                  },
                  controller: controller,
                ),
              ),
              SizedBox(
                width: 300,
              ),
              AppButton(
                backgroundColor: context.appColors.primary,
                textColor: Colors.white,
                width: 200,
                height: 42,
                onPressed: () {
                  showDialog(
                    useSafeArea: true,
                    context: context,
                    builder: (context) {
                      return ProductCreateDialog();
                    },
                  );
                },
                text: "เพิ่มสินค้าใหม่",
              ),
            ],
          ),
          Gap(20),
          Expanded(
            child: RefreshIndicator(
              onRefresh: () async {
                ref.invalidate(marketProductListStateProvider);
              },
              child: CustomScrollView(
                slivers: [
                  Consumer(
                    builder: (context, ref, child) {
                      final state = ref.watch(marketProductListStateProvider);
                      return state.when(
                        skipLoadingOnRefresh: false,
                        data: (data) {
                          return SliverGrid.builder(
                            itemCount: data.length,
                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4, mainAxisSpacing: 12, crossAxisSpacing: 12, childAspectRatio: .78),
                            itemBuilder: (context, index) {
                              ref.watch(marketProductListStateProvider.notifier).checkRequestMoreData(index);
                              final query = data[index];
                              return MarketProductCard(
                                onTap: () {
                                  ref
                                      .read(marketProductSelectStateProvider.notifier)
                                      .add(MarketProductCardModel(name: query.name, amount: 1, price: query.price, productId: query.productId, imageUrl: query.imageUrl));
                                },
                                imageUrl: query.imageUrl,
                                price: query.price,
                                name: query.name,
                              );
                            },
                          );
                        },
                        error: (error, stackTrace) {
                          return _buildLoading();
                        },
                        loading: () => _buildLoading(),
                      );
                    },
                  ),
                  SliverToBoxAdapter(child: TextLoadingPaginate(keyName: marketProductListState)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  _buildLoading() {
    return Skeletonizer.sliver(
      enabled: true,
      containersColor: Colors.grey.shade200,
      child: SliverGrid.builder(
        itemCount: 8,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4, mainAxisSpacing: 12, crossAxisSpacing: 12, childAspectRatio: .8),
        itemBuilder: (context, index) {
          return MarketProductCard(
            onTap: () {},
            imageUrl: "",
            price: 0,
            name: "",
          );
        },
      ),
    );
  }
}

class ProductCreateDialog extends HookConsumerWidget {
  const ProductCreateDialog({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ValueNotifier<UploadFileResponse?> imageFile = useState(null);
    final nameController = useTextEditingController();
    final priceController = useTextEditingController();
    return Dialog(
      insetPadding: const EdgeInsets.all(16),
      child: Container(
        constraints: BoxConstraints(maxWidth: 400),
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            ImageUploadWidget(
              callback: (value) {
                imageFile.value = value;
              },
            ),
            Gap(12),
            AppTextField(
              label: "ชื่อสินค้า",
              hintText: 'ชื่อสินค้า',
              controller: nameController,
            ),
            Gap(12),
            AppTextField(
              label: "ราคา",
              hintText: 'ราคา',
              controller: priceController,
              textInputType: TextInputType.number,
            ),
            Gap(40),
            Row(
              children: [
                Expanded(
                  child: AppButton(
                    backgroundColor: Color(0xFF636363),
                    textColor: Colors.white,
                    width: 380,
                    height: 42,
                    onPressed: () {
                      rootContext()?.pop();
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
                      final price = useListenableSelector(
                        priceController,
                        () => priceController.text,
                      );

                      final image = useListenableSelector(
                        imageFile,
                        () => imageFile.value,
                      );

                      final enable = nameText.isNotEmpty && price.isNotEmpty && image != null;
                      return AppButton(
                        enable: enable,
                        backgroundColor: context.appColors.secondary,
                        textColor: Colors.white,
                        width: 380,
                        height: 42,
                        onPressed: () {
                          if (!enable) return;
                          ref.read(mainControllerProvider).createProduct(IProductPayload(
                                price: num.tryParse(price) ?? 0,
                                name: nameText,
                                image: imageFile.value?.file,
                                bytes: imageFile.value?.bytes,
                              ));
                        },
                        text: "สร้างสินค้า",
                      );
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
