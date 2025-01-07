import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 解説: test画面はabout画面の子画面なので、backボタンでabout画面に戻る
      appBar: AppBar(title: const Text('TEST')),
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