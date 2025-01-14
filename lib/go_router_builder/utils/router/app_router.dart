import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../provider/login_provider.dart';
import '../../ui/error/error_screen.dart';
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
    // リダイレクトロジックを追加
    redirect: (context, state) {
      final isLoggedIn = logIn;
      final isTopPage = state.matchedLocation == Routes.top;

      // トップページにいて、ログイン済みの場合はホームにリダイレクト
      if (isTopPage && isLoggedIn) {
        return Routes.home;
      }
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
