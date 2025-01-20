import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_sample/go_router_bottom_navigation_bar/models/product.dart';
import 'package:go_router_sample/go_router_bottom_navigation_bar/ui/components/app_navigation_bar.dart';
import 'package:go_router_sample/go_router_bottom_navigation_bar/ui/error/error_screen.dart';
import 'package:go_router_sample/go_router_bottom_navigation_bar/ui/home/detail_screen.dart';
import 'package:go_router_sample/go_router_bottom_navigation_bar/ui/home/home_screen.dart';
import 'package:go_router_sample/go_router_bottom_navigation_bar/ui/profile/profile_screen.dart';
import 'package:go_router_sample/go_router_bottom_navigation_bar/ui/profile/sample/sample_2_screen.dart';
import 'package:go_router_sample/go_router_bottom_navigation_bar/ui/profile/sample/sample_screen.dart';
import 'package:go_router_sample/go_router_bottom_navigation_bar/ui/profile/setting_dialog_screen.dart';

import 'routes.dart';

final rootNavigatorKey = GlobalKey<NavigatorState>();
final homeNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'home');
final profileNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'profile');

final routerProvider = Provider(
  (ref) => GoRouter(
    navigatorKey: rootNavigatorKey,
    initialLocation: Routes.home,
    routes: [
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) {
          return AppNavigationBar(navigationShell: navigationShell);
        },
        branches: [
          StatefulShellBranch(
            navigatorKey: homeNavigatorKey,
            routes: [
              GoRoute(
                path: Routes.home,
                builder: (context, state) => const HomeScreen(),
                routes: [
                  GoRoute(
                    path: '${Routes.detail}:id',
                    builder: (context, state) => ProductDetailScreen(
                      product: Product.all[0],
                    ),
                  ),
                ],
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: profileNavigatorKey,
            routes: [
              GoRoute(
                path: Routes.profile,
                builder: (context, state) => const ProfileScreen(),
                routes: [
                  GoRoute(
                    path: Routes.setting,
                    builder: (context, state) => const SettingDialogScreen(),
                    routes: [
                      GoRoute(
                        parentNavigatorKey: rootNavigatorKey,
                        path: 'sample',
                        builder: (context, state) => const SampleScreen(),
                      ),
                    ],
                  ),
                  GoRoute(
                    parentNavigatorKey: rootNavigatorKey,
                    path: 'sample2',
                    builder: (context, state) => const Sample2Screen(),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    ],
    redirect: (context, state) {
      return null;
    },
    errorPageBuilder: (context, state) => MaterialPage(
      key: state.pageKey,
      child: ErrorScreen(
        message: state.error!.message,
      ),
    ),
  ),
);
