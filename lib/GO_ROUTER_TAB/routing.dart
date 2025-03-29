import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_sample/GO_ROUTER_TAB/pages.dart';
import 'package:go_router_sample/GO_ROUTER_TAB/tab.dart';

final rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'RootNavigator');
final homeNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'HomeNavigator');
final topNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'TopTabNavigator');
final carTopTabNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'CarTopTabNavigation');
final trainTopTabNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'TrainTopTabNavigation');

final router = GoRouter(
  initialLocation: '/home',
  navigatorKey: rootNavigatorKey,
  routes: [
    StatefulShellRoute(
      builder: (context, state, navigationShell) => navigationShell,
      navigatorContainerBuilder: (context, navigationShell, children) =>
          ScaffoldWithNavigatorBar(
        navigationShell: navigationShell,
        children: children,
      ),
      branches: [
        StatefulShellBranch(
          navigatorKey: homeNavigatorKey,
          routes: [
            GoRoute(
              path: '/home',
              name: 'home',
              builder: (context, state) => const HomePage(),
              routes: [
                GoRoute(
                  path: 'a',
                  name: 'APage',
                  builder: (context, state) => const APage(),
                  routes: [
                    GoRoute(
                      path: 'b',
                      name: 'BPage',
                      // 途中で親のNavigatorで表示するパターン
                      parentNavigatorKey: rootNavigatorKey,
                      pageBuilder: (context, state) => const MaterialPage(
                        fullscreenDialog: true,
                        child: BPage(),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        StatefulShellBranch(
          navigatorKey: topNavigatorKey,
          routes: [
            StatefulShellRoute(
              builder: (context, state, navigationShell) => navigationShell,
              navigatorContainerBuilder: (context, navigationShell, children) =>
                  ScaffoldWithTabBarView(
                navigationShell: navigationShell,
                children: children,
              ),
              branches: [
                StatefulShellBranch(
                  navigatorKey: carTopTabNavigatorKey,
                  routes: [
                    GoRoute(
                      path: '/top_tab/car',
                      name: 'CarPage',
                      builder: (context, state) => const CarPage(),
                    ),
                  ],
                ),
                StatefulShellBranch(
                  navigatorKey: trainTopTabNavigatorKey,
                  routes: [
                    GoRoute(
                      path: '/top_tab/train',
                      name: 'TrainPage',
                      builder: (context, state) => const TrainPage(),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ],
    ),
  ],
);
