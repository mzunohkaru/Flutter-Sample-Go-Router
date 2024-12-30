import 'package:flutter/material.dart';

import '../../utils/router/app_route_data.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({super.key, this.message = ''});

  final String message;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Error'),
        leading: BackButton(
          onPressed: () => const HomeRouteData().go(context),
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
