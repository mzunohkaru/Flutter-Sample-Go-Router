import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router_sample/GO_ROUTER_BUILDER/service/router/routing/routing.dart';

class SettingScreen extends ConsumerWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('設定画面'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          spacing: 60,
          children: [
            ElevatedButton(
              onPressed: () {
                if (!context.mounted) return;
                UserEditRouteData().go(context);
              },
              child: const Text('ユーザー情報編集画面へ'),
            ),
          ],
        ),
      ),
    );
  }
}
