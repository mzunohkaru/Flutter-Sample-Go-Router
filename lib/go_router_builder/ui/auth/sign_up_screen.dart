import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../service/auth/auth_provider.dart';
import '../../service/router/routing/routing.dart';

class SignupScreen extends ConsumerWidget {
  const SignupScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            spacing: 24,
            children: [
              ElevatedButton(
                onPressed: () async {
                  ref.read(authNotifierProvider.notifier).login();
                  const HomeRouteData().go(context);
                },
                child: Text('ホーム画面へ'),
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text('アカウントをお持ちの方'),
                  const SizedBox(width: 8),
                  TextButton(
                    onPressed: () {
                      const SigninRouteData().go(context);
                    },
                    child: const Text('ログイン画面へ'),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
