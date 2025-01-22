import 'package:flutter/material.dart';

class AlpBody extends StatelessWidget {
  const AlpBody({super.key, required this.title, required this.onTap});

  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Text(title),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: onTap,
        child: const Icon(Icons.arrow_circle_right_outlined),
      ),
    );
  }
}