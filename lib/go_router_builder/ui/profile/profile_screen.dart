import 'package:flutter/material.dart';

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
        child: Center(
          child: TextButton(
            onPressed: () {
              if (context.mounted) {
                SettingDialogRouteData().go(context);
              }
            },
            child: const Text('Setting'),
          ),
        ),
      ),
    );
  }
}
