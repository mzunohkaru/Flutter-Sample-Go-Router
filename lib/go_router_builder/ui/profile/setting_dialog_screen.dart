import 'package:flutter/material.dart';

class SettingDialogScreen extends StatelessWidget {
  const SettingDialogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Setting'),
      ),
      body: const Center(
        child: Text('Setting'),
      ),
    );
  }
}
