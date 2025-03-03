import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sevent_elevent/core/appcolor_extension.dart';
import 'package:sevent_elevent/core/share_prefs.dart';
import 'package:sevent_elevent/core/state/user_state.dart';
import 'package:sevent_elevent/core/utils/size.dart';
import 'package:sevent_elevent/feature/authentication/login_controller.dart';

class ScreenTabBar extends StatefulHookConsumerWidget {
  final StatefulNavigationShell navigationShell;

  const ScreenTabBar(this.navigationShell, {super.key});

  @override
  ConsumerState<ScreenTabBar> createState() => _TabBarScreenState();
}

class _TabBarScreenState extends ConsumerState<ScreenTabBar> {
  StreamSubscription? _sub;
  int selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    selectedIndex = widget.navigationShell.currentIndex;
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
    final double iconSizeSelected = isMacbook ? 14 :18;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Row(
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
                      ref.watch(userStateProvider);


                      return NavigationRail(
                        selectedIndex: selectedIndex,
                        onDestinationSelected: _onItemTapped,
                        selectedLabelTextStyle: context.textTheme.bodySmall,
                        unselectedLabelTextStyle: context.textTheme.bodySmall,
                        labelType: NavigationRailLabelType.all,
                        indicatorColor: context.appColors.primary,
                        selectedIconTheme: IconThemeData(color: Colors.white),
                        unselectedIconTheme: IconThemeData(color: Color(0xFF636363)),
                        indicatorShape:  CircleBorder(
                        ),
                        minWidth: isMacbook ? 40 : 120,
                        useIndicator: true,
                        backgroundColor: Color(0xFFFEFFFF),
                        destinations: [
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
                          if (SharedPrefs().isAuthentication()) ...[
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
                          ] else
                            NavigationRailDestination(
                              icon: SizedBox.shrink(), // Invisible icon
                              selectedIcon: SizedBox.shrink(),
                              label: SizedBox.shrink(),
                            ),
                        ],
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
    );
  }
}
