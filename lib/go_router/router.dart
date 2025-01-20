import 'package:go_router/go_router.dart';
import 'package:go_router_sample/go_router/view/home/about_screen.dart';
import 'package:go_router_sample/go_router/view/home/debug/debug_a.dart';
import 'package:go_router_sample/go_router/view/home/debug/debug_b.dart';
import 'package:go_router_sample/go_router/view/home/detail_screen.dart';
import 'package:go_router_sample/go_router/view/home/home_screen.dart';
import 'package:go_router_sample/go_router/view/home/test_screen.dart';
import 'package:go_router_sample/go_router/view/settings_screen.dart';

final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      name: 'home',
      path: '/',
      routes: [
        GoRoute(
          name: 'detail',
          path: '/detail/:user_name/:user_id',
          builder: (context, state) {
            final userName = state.pathParameters['user_name'];
            final userId = state.pathParameters['user_id'];
            return DetailScreen(
              userName: userName!,
              userId: int.parse(userId!),
            );
          },
          routes: [
            GoRoute(
              name: 'debug_a',
              path: 'debug_a',
              builder: (context, state) {
                final parentUserId = state.pathParameters['user_id'];
                return DebugA(
                  id: int.parse(parentUserId!),
                );
              },
            ),
            GoRoute(
              name: 'debug_b',
              path: 'debug_b',
              builder: (context, state) {
                return DebugB(
                  user: state.extra as Map<String, dynamic>? ??
                      {
                        'name': null,
                        'id': null,
                      },
                );
              },
            ),
          ],
        ),
        GoRoute(
          name: 'about',
          path: 'about',
          routes: [
            GoRoute(
              name: 'test',
              path: 'test',
              builder: (context, state) => const TestScreen(),
            ),
          ],
          builder: (context, state) => const AboutScreen(),
        ),
      ],
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      name: 'setting',
      path: '/setting',
      builder: (context, state) => const SettingScreen(),
    ),
  ],
);
