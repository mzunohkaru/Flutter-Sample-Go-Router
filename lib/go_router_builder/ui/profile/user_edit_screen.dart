import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UserEditScreen extends ConsumerWidget {
  const UserEditScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ユーザー情報編集画面'),
      ),
      body: Center(
        child: Text('ユーザー情報編集画面'),
      ),
    );
  }
}
