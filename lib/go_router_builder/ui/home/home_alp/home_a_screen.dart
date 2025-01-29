import 'package:flutter/material.dart';
import 'package:go_router_sample/go_router_builder/utils/router/app_route_data.dart';

import 'home_alp.dart';

class HomeAScreen extends StatelessWidget {
  const HomeAScreen({super.key, required this.homeAlp});

  final HomeAlp homeAlp;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(homeAlp.name),
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            HomeBRouteData(
              $extra: HomeAlpPlus(
                id: '123456789',
                name: 'Home B',
                description: 'Home B',
              ),
            ).go(context);
          },
          child: Text('go to Home B'),
        ),
      ),
    );
  }
}
