import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_sample/GO_ROUTER_BUILDER/service/auth/auth_provider.dart';
import 'package:go_router_sample/GO_ROUTER_BUILDER/service/router/routing/routing.dart';

import '../../../go_router_builder/service/router/routes.dart';

class ProfileScreen extends ConsumerWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          spacing: 60,
          children: [
            ElevatedButton(
              onPressed: () {
                if (!context.mounted) return;
                SettingRouteData().go(context);
              },
              child: const Text('設定画面へ'),
            ),

            ElevatedButton(
              onPressed: () {
                if (!context.mounted) return;
                UserEditRouteData().go(context);
              },
              child: const Text('ユーザー情報編集画面へ'),
            ),

            ElevatedButton(
              onPressed: () {
                if (!context.mounted) return;
                context.go(Routes.top);
              },
              child: const Text('トップ画面へ'),
            ),
            ElevatedButton(
              onPressed: () {
                if (!context.mounted) return;
                ref.read(authNotifierProvider.notifier).logout();
                context.go(Routes.top);
              },
              child: const Text('ログアウト'),
            ),
          ],
        ),
      ),
    );
  }
}
