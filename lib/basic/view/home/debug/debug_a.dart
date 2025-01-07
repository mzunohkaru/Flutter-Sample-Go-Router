import 'package:flutter/material.dart';

class DebugA extends StatelessWidget {
  const DebugA({super.key, required this.id});
  final int id;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Debug A'),
      ),
      body: Center(child: Text(id.toString())),
    );
  }
}