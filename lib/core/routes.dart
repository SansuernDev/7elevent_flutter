import 'dart:math';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sevent_elevent/core/app_overlay.dart';
import 'package:sevent_elevent/core/widgets/screen_tabbar.dart';
import 'package:sevent_elevent/feature/authentication/login_screen.dart';
import 'package:sevent_elevent/feature/home/home_screen.dart';
import 'package:sevent_elevent/feature/market/market_screen.dart';
import 'package:sevent_elevent/feature/member/member_screen.dart';
import 'package:sevent_elevent/feature/order/order_screen.dart';
import 'package:sevent_elevent/gen/assets.gen.dart';
import 'dart:html' as html;

import 'constant/constant.dart';

void updateTabTitle(String title) {
  html.document.title = title;
}

final rootNavigation = GlobalKey<NavigatorState>();

BuildContext? rootContext() {
  return rootNavigation.currentContext;
}

String _getTitleFromPath(String path) {
  switch (path) {
    case '/home':
      return '$appName หน้าแรก';
    case '/market':
      return '$appName ตลาด';
    case '/order':
      return '$appName รายการคำสั่งซื้อ';
    case '/member':
      return '$appName รายชื่อสมาชิก';
    case '/login':
      return '$appName เข้าสู่ระบบ';
    default:
      return 'App Easy Taokae';
  }
}

final router = GoRouter(
  navigatorKey: rootNavigation,
  initialLocation: '/splash',
  onException: (context, state, route) {
    route.go('/home');
  },
  routes: <RouteBase>[
    GoRoute(
      path: '/splash',
      name: 'splash',
      builder: (context, state) => const SplashScreen(),
    ),
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        updateTabTitle(_getTitleFromPath(state.uri.path));
        return AppAnnotatedRegionOverlay.light(
          child: ScreenTabBar(navigationShell),
        );
      },
      branches: [
        StatefulShellBranch(
          routes: <RouteBase>[
            GoRoute(
              path: '/home',
              name: 'home',
              builder: (context, state) => const AppAnnotatedRegionOverlay.light(child: HomeScreen()),
              routes: [],
            ),
          ],
        ),
        StatefulShellBranch(
          routes: <RouteBase>[
            GoRoute(
              path: '/market',
              name: 'market',
              builder: (context, state) => const AppAnnotatedRegionOverlay.light(child: MarketScreen()),
              routes: [],
            ),
          ],
        ),
        StatefulShellBranch(
          routes: <RouteBase>[
            GoRoute(
              path: '/order',
              name: 'order',
              builder: (context, state) => const AppAnnotatedRegionOverlay.light(child: OrderScreen()),
              routes: [],
            ),
          ],
        ),
        StatefulShellBranch(
          routes: <RouteBase>[
            GoRoute(
              path: '/member',
              name: 'member',
              builder: (context, state) => const AppAnnotatedRegionOverlay.light(child: MemberScreen()),
              routes: [],
            ),
          ],
        ),
      ],
    ),
    GoRoute(
      path: '/login',
      name: 'login',
      builder: (context, state) => const AppAnnotatedRegionOverlay.light(child: LoginScreen()),
      routes: [],
    ),
  ],
);

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin {


  Future<void> _navigateToHome() async {
    await Future.delayed(const Duration(seconds: 2)); // Simulate loading
    if (mounted) {
      context.go('/home'); // ไปหน้าหลักหลังจากโหลด
    }
  }

  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }



  @override
  void dispose() {
    super.dispose();
  }



  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.center,
        children: [
          // const Icon(Icons.logo_dev, size: 100),
          SizedBox(
            width: 100,
            height: 100,
            child: MyAssets.icon.icon.image(

            ),
          ),
          const Positioned(
            bottom: -20,
            child: SizedBox(
              height: 140,
              width: 140,
              child: CircularProgressIndicator(
                strokeCap: StrokeCap.round,
                strokeWidth: 14,
                color: Color(0xFF005284),
              ),
            ), // หมุนรอบโลโก้
          ),
        ],
      ),
    );
  }
}
