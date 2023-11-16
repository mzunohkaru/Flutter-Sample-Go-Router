import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static String get routeName => 'home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home")),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                context.go('/detail/山田太郎/999');
              },
              child: const Text(
                "Go To Detail Screen",
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                context.go('/about');
              },
              child: const Text(
                "Go To About Screen",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
