import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../models/product.dart';
import '../../ui/auth/sign_in_screen.dart';
import '../../ui/auth/sign_up_screen.dart';
import '../../ui/components/app_navigation_bar.dart';
import '../../ui/error/error_screen.dart';
import '../../ui/home/detail_screen.dart';
import '../../ui/home/home_screen.dart';
import '../../ui/profile/profile_screen.dart';
import '../../ui/splash/top_screen.dart';
import 'app_route_data.dart';
import 'routes.dart';

final rootNavigatorKey = GlobalKey<NavigatorState>();
final homeNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'home');
final profileNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'profile');

final routerProvider = Provider(
  (ref) => GoRouter(
    navigatorKey: rootNavigatorKey,
    initialLocation: Routes.top,
    routes: $appRoutes,
    errorPageBuilder: (context, state) => MaterialPage(
      key: state.pageKey,
      child: ErrorScreen(
        message: state.error!.message,
      ),
    ),
    redirect: (context, state) {
      return null;
    },
  ),
);

final appRoutes = [
  StatefulShellRoute.indexedStack(
    parentNavigatorKey: rootNavigatorKey,
    builder: (context, state, navigationShell) {
      return AppNavigationBar(navigationShell: navigationShell);
    },
    branches: [
      StatefulShellBranch(
        navigatorKey: homeNavigatorKey,
        routes: [
          GoRoute(
            name: 'home',
            path: '/home',
            pageBuilder: (context, state) => NoTransitionPage(
              key: state.pageKey,
              child: const HomeScreen(),
            ),
            routes: [
              GoRoute(
                name: 'detail',
                path: 'detail/:id',
                parentNavigatorKey: rootNavigatorKey,
                pageBuilder: (context, state) {
                  final id = state.pathParameters['id']!;
                  final product = Product.all.firstWhere((p) => p.id == id);
                  return MaterialPage(
                    child: ProductDetailScreen(
                      product: product,
                    ),
                  );
                },
              ),
            ],
          ),
        ],
      ),
      StatefulShellBranch(
        navigatorKey: profileNavigatorKey,
        routes: [
          GoRoute(
            name: 'profile',
            path: '/profile',
            pageBuilder: (context, state) => NoTransitionPage(
              key: state.pageKey,
              child: const ProfileScreen(),
            ),
          ),
        ],
      ),
    ],
  ),
  GoRoute(
    name: 'top',
    path: '/top',
    pageBuilder: (context, state) => MaterialPage(
      key: state.pageKey,
      child: const TopScreen(),
    ),
    routes: [
      GoRoute(
        name: 'signin',
        path: 'signin',
        pageBuilder: (context, state) => MaterialPage(
          key: state.pageKey,
          child: const SigninScreen(),
        ),
      ),
      GoRoute(
        name: 'signup',
        path: 'signup',
        pageBuilder: (context, state) => MaterialPage(
          key: state.pageKey,
          child: const SignupScreen(),
        ),
      ),
    ],
  ),
];
