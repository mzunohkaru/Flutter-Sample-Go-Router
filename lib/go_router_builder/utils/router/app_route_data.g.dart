// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_route_data.dart';

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
                  path: '/detail:id',
                  factory: $DetailRouteDataExtension._fromState,
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
                  path: 'a/:id',
                  parentNavigatorKey: AScreenRouteData.$parentNavigatorKey,
                  factory: $AScreenRouteDataExtension._fromState,
                  routes: [
                    GoRouteData.$route(
                      path: 'b/:id',
                      parentNavigatorKey: BScreenRouteData.$parentNavigatorKey,
                      factory: $BScreenRouteDataExtension._fromState,
                    ),
                  ],
                ),
                GoRouteData.$route(
                  path: 'c',
                  factory: $CScreenRouteDataExtension._fromState,
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
        id: state.pathParameters['id']!,
        $extra: state.extra as Product?,
      );

  String get location => GoRouteData.$location(
        '/detail${Uri.encodeComponent(id)}',
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

extension $AScreenRouteDataExtension on AScreenRouteData {
  static AScreenRouteData _fromState(GoRouterState state) => AScreenRouteData(
        id: state.pathParameters['id']!,
      );

  String get location => GoRouteData.$location(
        '/profile/a/${Uri.encodeComponent(id)}',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $BScreenRouteDataExtension on BScreenRouteData {
  static BScreenRouteData _fromState(GoRouterState state) => BScreenRouteData(
        id: state.pathParameters['id']!,
      );

  String get location => GoRouteData.$location(
        '/profile/a/${Uri.encodeComponent(id)}/b/${Uri.encodeComponent(id)}',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $CScreenRouteDataExtension on CScreenRouteData {
  static CScreenRouteData _fromState(GoRouterState state) =>
      const CScreenRouteData();

  String get location => GoRouteData.$location(
        '/profile/c',
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
          path: 'signin',
          factory: $SigninRouteDataExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'signup',
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
        '/top/signin',
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
        '/top/signup',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
