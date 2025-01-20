import 'package:animations/animations.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'utils/router/app_router.dart';

const _defaultPageTransition = SharedAxisPageTransitionsBuilder(
  transitionType: SharedAxisTransitionType.horizontal,
);

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);

    return MaterialApp.router(
      title: 'Go Router Bottom Navigation Bar Sample',
      debugShowCheckedModeBanner: false,
      theme: FlexThemeData.light(
        scheme: FlexScheme.blueM3,
        useMaterial3: true,
        primary: Colors.green,
        pageTransitionsTheme: const PageTransitionsTheme(
          builders: {
            TargetPlatform.android: _defaultPageTransition,
            TargetPlatform.fuchsia: _defaultPageTransition,
            TargetPlatform.iOS: _defaultPageTransition,
            TargetPlatform.macOS: _defaultPageTransition,
            TargetPlatform.linux: _defaultPageTransition,
            TargetPlatform.windows: _defaultPageTransition,
          },
        ),
      ),
      darkTheme: FlexThemeData.dark(scheme: FlexScheme.blueM3),
      themeMode: ThemeMode.system,
      routeInformationProvider: router.routeInformationProvider,
      routeInformationParser: router.routeInformationParser,
      routerDelegate: router.routerDelegate,
    );
  }
}
