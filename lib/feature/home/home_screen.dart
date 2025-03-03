import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sevent_elevent/core/app_loading.dart';
import 'package:sevent_elevent/core/appcolor_extension.dart';
import 'package:sevent_elevent/core/constant/constant.dart';
import 'package:sevent_elevent/core/dio_manager.dart';
import 'package:sevent_elevent/core/model/user_model.dart';
import 'package:sevent_elevent/core/share_prefs.dart';
import 'package:sevent_elevent/core/state/main_state.dart';
import 'package:sevent_elevent/core/state/user_state.dart';
import 'package:sevent_elevent/core/type/main_type.dart';
import 'package:sevent_elevent/core/utils/date.dart';
import 'package:sevent_elevent/core/utils/size.dart';
import 'package:sevent_elevent/core/widgets/app_button.dart';
import 'package:sevent_elevent/core/widgets/appbar.dart';
import 'package:sevent_elevent/core/widgets/user_profile_trailing.dart';
import 'package:sevent_elevent/core/widgets/wrap_background.dart';
import 'package:sevent_elevent/feature/authentication/login_controller.dart';
import 'package:sevent_elevent/feature/home/widgets/promotion_info.dart';
import 'package:sevent_elevent/gen/assets.gen.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:url_launcher/url_launcher.dart';

void openLink(String link) {
  try {
    launchUrl(Uri.parse(link));
  } catch (e) {
    print(e);
  }
}

class HomeScreen extends HookConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: MainAppBar(),
      body: WrapBackground(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildSectionOne(context, ref),
              Gap(40),
              _buildSectionTwo(context, ref),
              Gap(40),
              _buildSectionThree(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSectionOne(BuildContext context, WidgetRef ref) {
    return SizedBox(
      // height: 1.sh,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Gap(40),
            Consumer(
              builder: (context, ref, child) {
                final user = ref.watch(userStateProvider);
                return Row(
                  children: [
                    MyAssets.images.a7eleven.image(width: 300),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Gap(18),
                        if (SharedPrefs().isAuthentication()) ...[
                          Gap(18),
                          Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(100), border: Border.all(width: 5, color: context.appColors.primary)),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(100),
                                  child: CachedNetworkImage(
                                    imageUrl: user.asData?.value?.image ?? "",
                                    width: 120,
                                    height: 120,
                                    fit: BoxFit.cover,
                                    errorWidget: (context, url, error) => Container(
                                      width: 120,
                                      height: 120,
                                      color: context.appColors.light,
                                      child: MyAssets.images.allmember.image(),
                                    ),
                                  ),
                                ),
                              ),
                              Gap(20),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "ยินดีต้อนรับ\nสมาชิกคุณ ${user.asData?.value?.name ?? ""} เข้าสู่ระบบแล้ว !",
                                    style: context.textTheme.labelLarge,
                                  ),
                                  Gap(18),
                                  AppButton(
                                    backgroundColor: context.appColors.subSecondary,
                                    textColor: Colors.white,
                                    width: 200,
                                    height: 42,
                                    onPressed: () {
                                      ref.read(loginControllerProvider).logout();
                                    },
                                    text: "ออกจากระบบ",
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ] else ...[
                          Text(
                            "ยินดีต้อนรับ\nคุณสามารถเข้าสู่ระบบได้ที่นี่",
                            style: context.textTheme.labelLarge,
                          ),
                          Gap(18),
                          AppButton(
                            backgroundColor: context.appColors.secondary,
                            textColor: Colors.white,
                            width: 200,
                            height: 42,
                            onPressed: () {
                              context.pushNamed('login');
                            },
                            text: "เข้าสู่ระบบ",
                          ),
                        ],
                      ],
                    ),
                  ],
                );
              },
            ),
            Gap(40),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    MyAssets.images.allmember.image(width: 300),
                    AppButton(
                      backgroundColor: context.appColors.subPrimary,
                      textColor: Colors.white,
                      width: 200,
                      height: 42,
                      onPressed: () async {
                        openLink("https://www.allonline.7eleven.co.th/");
                      },
                      text: "เยี่ยมชม",
                    ),
                  ],
                ),
                Expanded(
                  child: MyAssets.images.a7eleventShop.image(),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTwo(BuildContext context, WidgetRef ref) {
    return Container(
      color: Color(0xFFFE9901),
      child: Stack(
        children: [
          Positioned.fill(
            child: Opacity(
              opacity: .2,
              child: MyAssets.images.a7eleven.image(),
            ),
          ),
          Container(
            height: 1200,
            width: double.infinity,
            padding: EdgeInsets.all(60),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Consumer(builder: (context, ref, child) {
                  final period = ref.watch(topMemberSelectPeriodStateProvider);
                  return Column(
                    children: [
                      Text("TOP 5 SALE OF ${period.getTitle}",
                          style: context.textTheme.displayMedium?.copyWith(color: Color(0xFFD11F22), fontWeight: FontWeight.w900, fontSize: 44)),
                      Gap(14),
                      AppButton(
                        height: 52,
                        width: 180,
                        onPressed: () async {
                          final value = await showModalBottomSheet<Period?>(
                            useSafeArea: true,
                            context: context,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
                            ),
                            builder: (context) {
                              return SizedBox(
                                width: double.infinity,
                                child: Padding(
                                  padding: EdgeInsets.all(16),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      ...Period.values.map(
                                        (e) {
                                          return InkWell(
                                            onTap: () {
                                              context.pop(e);
                                            },
                                            child: Padding(
                                              padding: const EdgeInsets.all(14),
                                              child: SizedBox(
                                                width: double.infinity,
                                                child: Center(
                                                  child: Text(
                                                    e.getName,
                                                    style: context.textTheme.bodyLarge,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                      )
                                    ],
                                  ),
                                ),
                              );
                            },
                          );

                          if (value != null) {
                            ref.read(topMemberSelectPeriodStateProvider.notifier).update(value);
                          }
                        },
                        text: "เลือก${period.getName}",
                        backgroundColor: context.appColors.light,
                        textColor: context.appColors.black,
                        borderColor: context.appColors.black.withOpacity(.5),
                        borderWidth: 1,
                      )
                    ],
                  );
                }),
                Gap(16),
                Consumer(
                  builder: (context, ref, child) {
                    final state = ref.watch(topMemberPointStateProvider);
                    return state.when(
                      data: (data) {
                        final member = data.topMembers;
                        return Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Gap(14),
                              Text(
                                  "แสดงผลตั้งแต่วันที่ ${getDateAndTimeStringFormatted(data.startDate).split(",").first} - ${getDateAndTimeStringFormatted(data.endDate).split(",").first}",
                                  style: context.textTheme.displayMedium?.copyWith(color: Colors.white, fontWeight: FontWeight.w900, fontSize: 24)),
                              Gap(14),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  ...List.generate(
                                    member.length,
                                    (index) {
                                      return PromotionInfo(
                                        index: index,
                                        data: member[index],
                                        width: 480,
                                      );
                                    },
                                  )
                                ],
                              ),
                            ],
                          ),
                        );
                      },
                      error: (error, stackTrace) {
                        return SizedBox();
                      },
                      loading: () {
                        return SizedBox();
                      },
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSectionThree(BuildContext context) {
    final List<Widget> images = [
      MyAssets.images.facebook.image(width: 50),
      MyAssets.images.line.image(width: 50),
      MyAssets.images.tiktok.image(width: 50),
      MyAssets.images.googleMaps.image(width: 50)
    ];
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(right: 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "ช่องทางการติดต่อสาขา",
                    style: context.textTheme.displayMedium,
                  ),
                  Gap(40),
                  Row(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.center, children: [
                    ...List.generate(
                      images.length,
                      (index) {
                        return Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: InkWell(
                              onTap: () {
                                return switch (index) {
                                  0 => openLink('https://www.facebook.com/share/1CsPXwSqwM/?mibextid=wwXIfr'),
                                  1 => openLink('https://lin.ee/dcewYWsS'),
                                  2 => openLink('https://www.tiktok.com/@soirotseri?_t=ZS-8tsY1ZGcyh6&_r=1'),
                                  3 => openLink('https://maps.app.goo.gl/1FpjYb9MPaUe4qm39?g_st=com.google.maps.preview.copy'),
                                  _ => throw UnimplementedError(),
                                };
                              },
                              child: images[index]),
                        );
                      },
                    ),
                  ]),
                  Gap(40),
                  MyAssets.images.cartoon7eleven.image(),
                ],
              ),
            ),
          ),
          Expanded(
              child: Container(
            decoration: BoxDecoration(border: Border(left: BorderSide(color: context.appColors.border, width: 1))),
            padding: EdgeInsets.only(left: 60),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "ดาวน์โหลดแอป 7-Eleven",
                  style: context.textTheme.displayMedium,
                ),
                Gap(40),
                SizedBox(
                  width: 400,
                  child: Column(
                    children: [
                      MyAssets.images.qrcode.image(),
                      Gap(24),
                      Row(
                        children: [
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                openLink('https://apps.apple.com/th/app/7-eleven-th/id514262377');
                              },
                              child: MyAssets.images.appStore.image(width: 200),
                            ),
                          ),
                          Gap(14),
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                openLink('https://play.google.com/store/apps/details?id=asuk.com.android.app&pcampaignid=web_share');
                              },
                              child: MyAssets.images.googlePlayBadge.image(width: 300),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Gap(60),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
