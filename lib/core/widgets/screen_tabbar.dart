import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sevent_elevent/core/appcolor_extension.dart';
import 'package:sevent_elevent/core/share_prefs.dart';
import 'package:sevent_elevent/core/state/user_state.dart';
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
                        labelType: NavigationRailLabelType.selected,
                        indicatorColor: context.appColors.primary,
                        selectedIconTheme: IconThemeData(color: Colors.white),
                        unselectedIconTheme: IconThemeData(color: Color(0xFF636363)),
                        indicatorShape: const CircleBorder(),
                        minWidth: 100,
                        useIndicator: true,
                        backgroundColor: Color(0xFFFEFFFF),
                        destinations: [
                          NavigationRailDestination(
                            icon: Icon(
                              Icons.home_outlined,
                              size: 24,
                            ),
                            selectedIcon: Icon(
                              Icons.home_outlined,
                              size: 18,
                            ),
                            label: Text("หน้าแรก"),
                          ),
                          if (SharedPrefs().isAuthentication()) ...[
                            NavigationRailDestination(
                              icon: Icon(
                                Icons.shopping_cart_outlined,
                                size: 24,
                              ),
                              selectedIcon: Icon(
                                Icons.shopping_cart_outlined,
                                size: 18,
                              ),
                              label: Text("ตะกร้า"),
                            ),
                            NavigationRailDestination(
                              icon: Icon(
                                Icons.history_outlined,
                                size: 24,
                              ),
                              selectedIcon: Icon(
                                Icons.history_outlined,
                                size: 18,
                              ),
                              label: Text("ประวัติการสั่งซื้อ"),
                            ),
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
                          size: 24,
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
