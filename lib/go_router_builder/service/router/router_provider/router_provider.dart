import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_sample/GO_ROUTER_BUILDER/service/auth/auth_provider.dart';
import 'package:go_router_sample/GO_ROUTER_BUILDER/ui/error/error_screen.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../routing/routing.dart';
import '../routes.dart';

part 'router_provider.g.dart';

final rootNavigatorKey = GlobalKey<NavigatorState>();
final homeNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'home');
final profileNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'profile');

@riverpod
GoRouter router(Ref ref) {
  final authStateNotifier = ValueNotifier(false);
  ref
    ..onDispose(authStateNotifier.dispose)
    ..listen(authNotifierProvider, (previous, next) {
      authStateNotifier.value = next;
    });

  final router = GoRouter(
    navigatorKey: rootNavigatorKey,
    initialLocation: Routes.top,
    routes: $appRoutes,
    redirect: (context, state) {
      debugPrint('DEBUG: PATH: ${state.matchedLocation}');
      debugPrint('DEBUG: URI: ${state.uri}');
      debugPrint('DEBUG: PARAMS: ${state.pathParameters}');
      debugPrint('DEBUG: authStateNotifier: ${authStateNotifier.value}');

      if (state.matchedLocation == Routes.top && authStateNotifier.value) {
        return Routes.home;
      }
      return null;
    },
    refreshListenable: authStateNotifier,
    errorPageBuilder: (context, state) => MaterialPage(
      key: state.pageKey,
      child: ErrorScreen(
        message: state.error!.message,
      ),
    ),
  );
  ref.onDispose(router.dispose);
  return router;
}
