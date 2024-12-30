import 'package:animations/animations.dart';
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
      title: 'Go Router Builder Sample',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.lightBlue,
        scaffoldBackgroundColor: Colors.lightBlue.shade50,
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
      routeInformationProvider: router.routeInformationProvider,
      routeInformationParser: router.routeInformationParser,
      routerDelegate: router.routerDelegate,
    );
  }
}
