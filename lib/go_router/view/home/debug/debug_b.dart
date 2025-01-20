import 'package:flutter/material.dart';

class DebugB extends StatelessWidget {
  const DebugB({super.key, required this.user});

  final Map<String, dynamic> user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Debug B'),
        ),
        body: Center(
          child: ListTile(
            leading: Text(user['id'].toString()),
            title: Text(user['name']),
          ),
        ));
  }
}
