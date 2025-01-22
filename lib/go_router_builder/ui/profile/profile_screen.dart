import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../utils/router/app_route_data.dart';

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
          spacing: 60,
          children: [
            ElevatedButton(
              onPressed: () {
                if (context.mounted) {
                  AScreenRouteData(id: globalID).go(context);
                }
              },
              child: const Text('go to A screen'),
            ),
            ElevatedButton(
              onPressed: () {
                if (context.mounted) {
                  CScreenRouteData().go(context);
                }
              },
              child: const Text('go to C screen'),
            ),
          ],
        ),
      ),
    );
  }
}
