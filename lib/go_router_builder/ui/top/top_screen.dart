import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../service/auth/auth_provider.dart';
import '../../service/router/routing/routing.dart';

class TopScreen extends HookConsumerWidget {
  const TopScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useEffect(() {
      WidgetsBinding.instance.addPostFrameCallback((_) {});
      return null;
    });

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ref.read(authNotifierProvider.notifier).login();
        },
        child: const Text('admin'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          spacing: 24,
          children: [
            const Text('GoRouterBuilder アプリ'),
            ElevatedButton(
              onPressed: () {
                const SigninRouteData().go(context);
              },
              child: const Text('ログイン画面へ'),
            ),
            ElevatedButton(
              onPressed: () {
                const SignupRouteData().go(context);
              },
              child: const Text('新規登録画面へ'),
            ),
          ],
        ),
      ),
    );
  }
}
