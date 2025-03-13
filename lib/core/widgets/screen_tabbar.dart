import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sevent_elevent/core/appcolor_extension.dart';
import 'package:sevent_elevent/core/routes.dart';
import 'package:sevent_elevent/core/share_prefs.dart';
import 'package:sevent_elevent/core/state/user_state.dart';
import 'package:sevent_elevent/core/type/main_type.dart';
import 'package:sevent_elevent/core/utils/size.dart';
import 'package:sevent_elevent/feature/authentication/login_controller.dart';
import 'package:skeletonizer/skeletonizer.dart';

class ScreenTabBar extends StatefulHookConsumerWidget {
  final StatefulNavigationShell navigationShell;

  const ScreenTabBar(this.navigationShell, {super.key});

  @override
  ConsumerState<ScreenTabBar> createState() => _TabBarScreenState();
}

class _TabBarScreenState extends ConsumerState<ScreenTabBar> {
  StreamSubscription? _sub;
  int selectedIndex = 0;
  bool isLoading = true;

  Future<void> frameLoading() async {
    // จำลองการโหลดข้อมูล
    await Future.delayed(Duration(seconds: 2));
    if (mounted) {
      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    selectedIndex = 0;

    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) {
        frameLoading();
      },
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
    widget.navigationShell.goBranch(
      index,
      initialLocation: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    final double padding = 12;
    final double iconSize = isMacbook ? 20 : 24;
    final double iconSizeSelected = isMacbook ? 14 : 18;


    return Stack(
      children: [
        Scaffold(
          backgroundColor: Colors.white,
          body: Stack(
            children: [
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border(
                        right: BorderSide(
                          width: 1,
                          color: context.appColors.border,
                        ),
                      ),
                    ),
                    child: Column(
                      children: [
                        Expanded(
                          child: Consumer(
                            builder: (context, ref, child) {
                              final user = ref.watch(userStateProvider);

                              final List<NavigationRailDestination> menus = [
                                NavigationRailDestination(
                                    icon: Icon(
                                      Icons.home_outlined,
                                      size: iconSize,
                                    ),
                                    selectedIcon: Icon(
                                      Icons.home_filled,
                                      size: iconSizeSelected,
                                    ),
                                    label: Text("หน้าแรก"),
                                    padding: EdgeInsets.all(padding)),
                                if (SharedPrefs().isAuthentication() && user.asData?.value?.role == RoleType.manager) ...[
                                  NavigationRailDestination(
                                      icon: Icon(
                                        Icons.shopping_cart_outlined,
                                        size: iconSize,
                                      ),
                                      selectedIcon: Icon(
                                        Icons.shopping_cart_rounded,
                                        size: iconSizeSelected,
                                      ),
                                      label: Text("ตะกร้า"),
                                      padding: EdgeInsets.all(padding)),
                                  NavigationRailDestination(
                                      icon: Icon(
                                        Icons.history_outlined,
                                        size: iconSize,
                                      ),
                                      selectedIcon: Icon(
                                        Icons.history_rounded,
                                        size: iconSizeSelected,
                                      ),
                                      label: Text("ประวัติการสั่งซื้อ"),
                                      padding: EdgeInsets.all(padding)),
                                  NavigationRailDestination(
                                      icon: Icon(
                                        Icons.groups_outlined,
                                        size: iconSize,
                                      ),
                                      selectedIcon: Icon(
                                        Icons.groups_rounded,
                                        size: iconSizeSelected,
                                      ),
                                      label: Text("รายชื่อสมาชิก"),
                                      padding: EdgeInsets.all(padding)),
                                ] else ...[
                                  NavigationRailDestination(
                                    icon: SizedBox.shrink(), // Invisible icon
                                    selectedIcon: SizedBox.shrink(),
                                    label: SizedBox.shrink(),
                                  )
                                ]
                              ];

                              final int safeSelectedIndex = (selectedIndex >= menus.length) ? 0 : selectedIndex;

                              if (user.asData == null) {
                                return Container(
                                  color: Color(0xFFFEFFFF),
                                  width: 100,
                                );
                              }

                              return NavigationRail(
                                selectedIndex: safeSelectedIndex,
                                onDestinationSelected: _onItemTapped,
                                selectedLabelTextStyle: context.textTheme.bodySmall,
                                unselectedLabelTextStyle: context.textTheme.bodySmall,
                                labelType: NavigationRailLabelType.all,
                                indicatorColor: context.appColors.primary,
                                selectedIconTheme: IconThemeData(color: Colors.white),
                                unselectedIconTheme: IconThemeData(color: Color(0xFF636363)),
                                indicatorShape: CircleBorder(),
                                minWidth: isMacbook ? 40 : 120,
                                useIndicator: true,
                                backgroundColor: Color(0xFFFEFFFF),
                                destinations: menus,
                              );
                            },
                          ),
                        ),
                        Consumer(
                          builder: (context, ref, child) {
                            ref.watch(userStateProvider);
                            if (!SharedPrefs().isAuthentication()) return SizedBox.shrink();
                            return Padding(
                              padding: const EdgeInsets.only(bottom: 24),
                              child: InkWell(
                                onTap: () {
                                  ref.read(loginControllerProvider).logout();
                                },
                                child: Icon(
                                  Icons.logout_rounded,
                                  size: iconSize,
                                ),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                  Expanded(child: widget.navigationShell),
                ],
              ),
              (isLoading) ? Positioned.fill(child: Container(color: Colors.white, child: SplashScreen())) : SizedBox(),
            ],
          ),
        ),
      ],
    );
  }
}
