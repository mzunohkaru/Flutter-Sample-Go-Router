import 'package:flutter/material.dart';

import 'home_alp.dart';

class HomeBScreen extends StatelessWidget {
  const HomeBScreen({super.key, required this.homeAlp});

  final HomeAlp homeAlp;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(homeAlp.name),
      ),
      body: Center(
        child: Text(homeAlp.id),
      ),
    );
  }
}
