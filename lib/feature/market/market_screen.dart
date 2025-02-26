import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get_common/get_reset.dart';
import 'package:get/get_utils/src/extensions/export.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sevent_elevent/core/app_loading.dart';
import 'package:sevent_elevent/core/appcolor_extension.dart';
import 'package:sevent_elevent/core/constant/constant.dart';
import 'package:sevent_elevent/core/state/market_state.dart';
import 'package:sevent_elevent/core/utils/number.dart';
import 'package:sevent_elevent/core/widgets/animation_button.dart';
import 'package:sevent_elevent/core/widgets/app_text_field.dart';
import 'package:sevent_elevent/core/widgets/appbar.dart';
import 'package:sevent_elevent/core/widgets/user_profile_trailing.dart';
import 'package:sevent_elevent/core/widgets/wrap_background.dart';
import 'package:sevent_elevent/feature/market/market_panel.dart';
import 'package:sevent_elevent/feature/market/market_product_card.dart';
import 'package:sevent_elevent/feature/market/market_product_list.dart';
import 'package:sevent_elevent/gen/assets.gen.dart';

class MarketScreen extends HookConsumerWidget {
  const MarketScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: MainAppBar(),
      body: WrapBackground(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: MarketProductList(),
            ),
            MarketPanel()
          ],
        ),
      ),
    );
  }
}





