import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key, required this.userName, required this.userId});

  final String userName;
  final int userId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "Hello $userName ! \n Your ID is $userId.",
          ),
          ElevatedButton(
            onPressed: () {
              context.go('/detail/$userName/$userId/debug_a');
            },
            child: const Text("Go To Debug A"),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              context.go('/detail/$userName/$userId/debug_b', extra: {
                'name': userName,
                'id': userId,
              });
            },
            child: const Text("Go To Debug B"),
          ),
        ],
      ),
    );
  }
}