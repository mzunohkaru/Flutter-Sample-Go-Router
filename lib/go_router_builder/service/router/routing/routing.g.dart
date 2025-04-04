// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'routing.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $appShellRouteData,
      $topRouteData,
    ];

RouteBase get $appShellRouteData => StatefulShellRouteData.$route(
      factory: $AppShellRouteDataExtension._fromState,
      branches: [
        StatefulShellBranchData.$branch(
          navigatorKey: HomeBranch.$navigatorKey,
          routes: [
            GoRouteData.$route(
              path: '/home',
              factory: $HomeRouteDataExtension._fromState,
              routes: [
                GoRouteData.$route(
                  path: 'detail/:id',
                  parentNavigatorKey: DetailRouteData.$parentNavigatorKey,
                  factory: $DetailRouteDataExtension._fromState,
                  routes: [
                    GoRouteData.$route(
                      path: 'security',
                      parentNavigatorKey: SecurityRouteData.$parentNavigatorKey,
                      factory: $SecurityRouteDataExtension._fromState,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        StatefulShellBranchData.$branch(
          navigatorKey: ProfileBranch.$navigatorKey,
          routes: [
            GoRouteData.$route(
              path: '/profile',
              factory: $ProfileRouteDataExtension._fromState,
              routes: [
                GoRouteData.$route(
                  path: 'settings',
                  factory: $SettingRouteDataExtension._fromState,
                  routes: [
                    GoRouteData.$route(
                      path: 'user-edit',
                      factory: $UserEditRouteDataExtension._fromState,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ],
    );

extension $AppShellRouteDataExtension on AppShellRouteData {
  static AppShellRouteData _fromState(GoRouterState state) =>
      const AppShellRouteData();
}

extension $HomeRouteDataExtension on HomeRouteData {
  static HomeRouteData _fromState(GoRouterState state) => const HomeRouteData();

  String get location => GoRouteData.$location(
        '/home',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $DetailRouteDataExtension on DetailRouteData {
  static DetailRouteData _fromState(GoRouterState state) => DetailRouteData(
        id: int.parse(state.pathParameters['id']!),
        $extra: state.extra as Person,
      );

  String get location => GoRouteData.$location(
        '/home/detail/${Uri.encodeComponent(id.toString())}',
      );

  void go(BuildContext context) => context.go(location, extra: $extra);

  Future<T?> push<T>(BuildContext context) =>
      context.push<T>(location, extra: $extra);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location, extra: $extra);

  void replace(BuildContext context) =>
      context.replace(location, extra: $extra);
}

extension $SecurityRouteDataExtension on SecurityRouteData {
  static SecurityRouteData _fromState(GoRouterState state) => SecurityRouteData(
        id: int.parse(state.pathParameters['id']!),
        $extra: state.extra as Secret,
      );

  String get location => GoRouteData.$location(
        '/home/detail/${Uri.encodeComponent(id.toString())}/security',
      );

  void go(BuildContext context) => context.go(location, extra: $extra);

  Future<T?> push<T>(BuildContext context) =>
      context.push<T>(location, extra: $extra);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location, extra: $extra);

  void replace(BuildContext context) =>
      context.replace(location, extra: $extra);
}

extension $ProfileRouteDataExtension on ProfileRouteData {
  static ProfileRouteData _fromState(GoRouterState state) =>
      const ProfileRouteData();

  String get location => GoRouteData.$location(
        '/profile',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $SettingRouteDataExtension on SettingRouteData {
  static SettingRouteData _fromState(GoRouterState state) =>
      const SettingRouteData();

  String get location => GoRouteData.$location(
        '/profile/settings',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $UserEditRouteDataExtension on UserEditRouteData {
  static UserEditRouteData _fromState(GoRouterState state) =>
      const UserEditRouteData();

  String get location => GoRouteData.$location(
        '/profile/settings/user-edit',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $topRouteData => GoRouteData.$route(
      path: '/top',
      factory: $TopRouteDataExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: 'sign-in',
          factory: $SigninRouteDataExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'sign-up',
          factory: $SignupRouteDataExtension._fromState,
        ),
      ],
    );

extension $TopRouteDataExtension on TopRouteData {
  static TopRouteData _fromState(GoRouterState state) => const TopRouteData();

  String get location => GoRouteData.$location(
        '/top',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $SigninRouteDataExtension on SigninRouteData {
  static SigninRouteData _fromState(GoRouterState state) =>
      const SigninRouteData();

  String get location => GoRouteData.$location(
        '/top/sign-in',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $SignupRouteDataExtension on SignupRouteData {
  static SignupRouteData _fromState(GoRouterState state) =>
      const SignupRouteData();

  String get location => GoRouteData.$location(
        '/top/sign-up',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
