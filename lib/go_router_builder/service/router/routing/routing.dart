import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_sample/GO_ROUTER_BUILDER/ui/profile/setting_screen.dart';
import 'package:go_router_sample/GO_ROUTER_BUILDER/ui/profile/user_edit_screen.dart';

import '../../../models/person/person.dart';
import '../../../models/secret/secret.dart';
import '../../../ui/auth/sign_in_screen.dart';
import '../../../ui/auth/sign_up_screen.dart';
import '../../../ui/components/navigation_bar_view.dart';
import '../../../ui/home/detail_screen.dart';
import '../../../ui/home/home_screen.dart';
import '../../../ui/home/security_screen.dart';
import '../../../ui/profile/profile_screen.dart';
import '../../../ui/top/top_screen.dart';
import '../router_provider/router_provider.dart';
import '../routes.dart';

part 'routing.g.dart';

@TypedStatefulShellRoute<AppShellRouteData>(
  branches: <TypedStatefulShellBranch<StatefulShellBranchData>>[
    TypedStatefulShellBranch<HomeBranch>(
      routes: [
        TypedGoRoute<HomeRouteData>(
          path: Routes.home,
          routes: [
            TypedGoRoute<DetailRouteData>(
              path: '${Routes.detail}/:id',
              routes: [
                TypedGoRoute<SecurityRouteData>(
                  path: Routes.security,
                ),
              ],
            ),
          ],
        ),
      ],
    ),
    TypedStatefulShellBranch<ProfileBranch>(
      routes: [
        TypedGoRoute<ProfileRouteData>(
          path: Routes.profile,
          routes: [
            TypedGoRoute<SettingRouteData>(
              path: Routes.settings,
              routes: [
                TypedGoRoute<UserEditRouteData>(
                  path: Routes.userEdit,
                ),
              ],
            ),
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
    return NavigationBarView(
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
  const DetailRouteData({required this.id, required this.$extra});

  static final GlobalKey<NavigatorState> $parentNavigatorKey = rootNavigatorKey;

  final int id;
  final Person $extra;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return DetailScreen(id: id, person: $extra);
  }
}

class SecurityRouteData extends GoRouteData {
  SecurityRouteData({required this.id, required this.$extra});

  static final GlobalKey<NavigatorState> $parentNavigatorKey = rootNavigatorKey;

  final int id;
  final Secret $extra;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return SecurityScreen(id: id, secret: $extra);
  }
}

class ProfileRouteData extends GoRouteData {
  const ProfileRouteData();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const ProfileScreen();
  }
}

class SettingRouteData extends GoRouteData {
  const SettingRouteData();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const SettingScreen();
  }
}

class UserEditRouteData extends GoRouteData {
  const UserEditRouteData();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const UserEditScreen();
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
