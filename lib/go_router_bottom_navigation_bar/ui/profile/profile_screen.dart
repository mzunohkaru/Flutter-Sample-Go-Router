import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextButton(
              onPressed: () {
                if (context.mounted) {
                  context.go('/profile/setting');
                }
              },
              child: const Text('Setting'),
            ),

            TextButton(
              onPressed: () {
                if (context.mounted) {
                  context.go('/profile/sample2');
                }
              },
              child: const Text('Sample2'),
            ),
          ],
        ),
      ),
    );
  }
}
