import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../utils/router/app_route_data.dart';
import '../components/app_button.dart';

class TopScreen extends HookWidget {
  const TopScreen({super.key});
  @override
  Widget build(BuildContext context) {
    useEffect(() {
      WidgetsBinding.instance.addPostFrameCallback((_) {});
      return null;
    });

    return Scaffold(
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(16),
          height: 300,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 24),
              const Text('Welcome to Flutter Store'),
              const SizedBox(height: 16),
              const Text('Log in with your account to continue'),
              const SizedBox(height: 24),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  AppButton(
                    width: 80,
                    onPressed: () {
                      const SigninRouteData().go(context);
                    },
                    text: 'Login',
                  ),
                  const SizedBox(width: 16),
                  AppButton(
                    width: 80,
                    onPressed: () {
                      const SignupRouteData().go(context);
                    },
                    text: 'Sign up',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
