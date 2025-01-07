import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 解説: setting画面はabout画面の子画面ではないので、backボタンでabout画面に戻ることはできない
      appBar: AppBar(title: const Text('Setting')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            context.go('/');
          },
          child: const Text(
            'Go To Home Screen',
          ),
        ),
      ),
    );
  }
}