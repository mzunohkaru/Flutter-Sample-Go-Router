import 'package:flutter/material.dart';

import '../../models/secret/secret.dart';

class SecurityScreen extends StatelessWidget {
  const SecurityScreen({super.key, required this.id, required this.secret});

  final int id;
  final Secret secret;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('セキュリティ情報'),
      ),
      body: Center(child: Text(secret.password)),
    );
  }
}
