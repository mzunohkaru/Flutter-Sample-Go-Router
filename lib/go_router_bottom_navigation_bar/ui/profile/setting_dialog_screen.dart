import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SettingDialogScreen extends StatelessWidget {
  const SettingDialogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Setting'),
      ),
      body:  Center(
        child: TextButton(
          onPressed: () {
            if (context.mounted) {
              context.go('/profile/setting/sample');
            }
          },
          child: const Text('Go Sample'),
        ),
      ),
    );
  }
}
