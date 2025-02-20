import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sevent_elevent/core/app_overlay.dart';
import 'package:sevent_elevent/core/widgets/screen_tabbar.dart';
import 'package:sevent_elevent/feature/authentication/login_screen.dart';
import 'package:sevent_elevent/feature/home/home_screen.dart';
import 'package:sevent_elevent/feature/market/market_screen.dart';
import 'package:sevent_elevent/feature/order/order_screen.dart';


final rootNavigation = GlobalKey<NavigatorState>();

BuildContext? rootContext() {
  return rootNavigation.currentContext;
}

final router = GoRouter(
  navigatorKey: rootNavigation,
  initialLocation: '/home',
  onException: (context, state, route) {
    route.go('/home');
  },
  routes: <RouteBase>[
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
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
              routes: [
              ],
            ),
          ],
        ),
        StatefulShellBranch(
          routes: <RouteBase>[
            GoRoute(
              path: '/market',
              name: 'market',
              builder: (context, state) => const AppAnnotatedRegionOverlay.light(child: MarketScreen()),
              routes: [
              ],
            ),
          ],
        ),
        StatefulShellBranch(
          routes: <RouteBase>[
            GoRoute(
              path: '/order',
              name: 'order',
              builder: (context, state) => const AppAnnotatedRegionOverlay.light(child: OrderScreen()),
              routes: [
              ],
            ),
          ],
        ),
      ],
    ),
    GoRoute(
      path: '/login',
      name: 'login',
      builder: (context, state) => const AppAnnotatedRegionOverlay.light(child: LoginScreen()),
      routes: [
      ],
    ),
  ],
);
