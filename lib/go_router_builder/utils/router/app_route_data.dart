import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../models/product.dart';
import '../../ui/auth/sign_in_screen.dart';
import '../../ui/auth/sign_up_screen.dart';
import '../../ui/components/app_navigation_bar.dart';
import '../../ui/home/detail_screen.dart';
import '../../ui/home/home_screen.dart';
import '../../ui/profile/b_screen.dart';
import '../../ui/profile/c_screen.dart';
import '../../ui/profile/profile_screen.dart';
import '../../ui/profile/a_screen.dart';
import '../../ui/splash/top_screen.dart';
import 'app_router.dart';
import 'routes.dart';

part 'app_route_data.g.dart';

@TypedStatefulShellRoute<AppShellRouteData>(
  branches: <TypedStatefulShellBranch<StatefulShellBranchData>>[
    TypedStatefulShellBranch<HomeBranch>(
      routes: [
        TypedGoRoute<HomeRouteData>(
          path: Routes.home,
          routes: [
            TypedGoRoute<DetailRouteData>(path: '${Routes.detail}:id'),
          ],
        ),
      ],
    ),
    TypedStatefulShellBranch<ProfileBranch>(
      routes: [
        TypedGoRoute<ProfileRouteData>(
          path: Routes.profile,
          routes: [
            TypedGoRoute<AScreenRouteData>(
              path: '${Routes.a}/:id',
              routes: [
                TypedGoRoute<BScreenRouteData>(path: '${Routes.b}/:id'),
              ],
            ),
            TypedGoRoute<CScreenRouteData>(path: Routes.c),
          ],
        ),
      ],
    ),
  ],
)
class AppShellRouteData extends StatefulShellRouteData {
  const AppShellRouteData();

  static final GlobalKey<NavigatorState> $navigatorKey = rootNavigatorKey;

  @override
  Widget builder(
    BuildContext context,
    GoRouterState state,
    StatefulNavigationShell navigationShell,
  ) {
    return AppNavigationBar(
      navigationShell: navigationShell,
    );
  }
}

class HomeBranch extends StatefulShellBranchData {
  const HomeBranch();

  static final GlobalKey<NavigatorState> $navigatorKey = homeNavigatorKey;
}

class ProfileBranch extends StatefulShellBranchData {
  const ProfileBranch();

  static final GlobalKey<NavigatorState> $navigatorKey = profileNavigatorKey;
}

class HomeRouteData extends GoRouteData {
  const HomeRouteData();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const HomeScreen();
  }
}

class DetailRouteData extends GoRouteData {
  const DetailRouteData({
    required this.id,
    this.$extra,
  });

  final String id;
  final Product? $extra;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    final product = Product.all.firstWhere((p) => p.id == id);

    return ProductDetailScreen(product: product);
  }
}

class ProfileRouteData extends GoRouteData {
  const ProfileRouteData();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const ProfileScreen();
  }
}

class AScreenRouteData extends GoRouteData {
  const AScreenRouteData({
    required this.id,
  });

  final String id;

  static final GlobalKey<NavigatorState> $parentNavigatorKey = rootNavigatorKey;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return AScreen(id: id);
  }
}

class BScreenRouteData extends GoRouteData {
  const BScreenRouteData({
    required this.id,
  });

  final String id;

  static final GlobalKey<NavigatorState> $parentNavigatorKey = rootNavigatorKey;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return BScreen(id: id);
  }
}

class CScreenRouteData extends GoRouteData {
  const CScreenRouteData();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const CScreen();
  }
}

@TypedGoRoute<TopRouteData>(
  path: Routes.top,
  routes: <TypedGoRoute<GoRouteData>>[
    TypedGoRoute<SigninRouteData>(path: Routes.signin),
    TypedGoRoute<SignupRouteData>(path: Routes.signup),
  ],
)
class TopRouteData extends GoRouteData {
  const TopRouteData();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const TopScreen();
  }
}

class SigninRouteData extends GoRouteData {
  const SigninRouteData();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const SigninScreen();
  }
}

class SignupRouteData extends GoRouteData {
  const SignupRouteData();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const SignupScreen();
  }
}
