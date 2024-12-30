import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../utils/router/app_route_data.dart';
import '../components/app_button.dart';

class SigninScreen extends HookWidget {
  const SigninScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isLoading = useState(false);

    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 24),
              AppButton(
                height: 48,
                isLoading: isLoading.value,
                onPressed: () async {
                  const HomeRouteData().go(context);
                },
                text: 'Log In',
              ),
              const SizedBox(height: 24),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text("Don't have an account?"),
                  const SizedBox(width: 8),
                  TextButton(
                    onPressed: () {
                      const SignupRouteData().go(context);
                    },
                    child: const Text('Sign up'),
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
