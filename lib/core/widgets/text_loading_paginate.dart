import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/export.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sevent_elevent/core/appcolor_extension.dart';
import 'package:sevent_elevent/core/state/bottom_paginated_indicator.dart';
import 'package:sevent_elevent/core/widgets/app_loading_text.dart';

class TextLoadingPaginate extends HookConsumerWidget {
  final String keyName;
  const TextLoadingPaginate({super.key, required this.keyName});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(bottomPaginatedIndicatorProvider(key: keyName));
    return state.when(
      done: () => SizedBox(),
      fetchingMore: () => AppLoadingText(),
      error: (e, stack) => Text(
        "โหลดข้อมูลไม่สำเร็จ",
        style: context.textTheme.bodySmall?.apply(color: context.appColors.subTitle),
      ),
    );
  }
}
