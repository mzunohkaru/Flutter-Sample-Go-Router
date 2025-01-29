import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_sample/GO_ROUTER_BUILDER/service/router/routes.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({super.key, this.message = ''});

  final String message;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Error'),
        leading: BackButton(
          onPressed: () => context.go(Routes.home),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('エラーが発生しました'),
            const SizedBox(height: 8),
            Text(message),
          ],
        ),
      ),
    );
  }
}
