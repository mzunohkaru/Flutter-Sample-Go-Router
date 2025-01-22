import 'package:flutter/material.dart';

import '../../utils/router/app_route_data.dart';
import 'widget/alp_body.dart';

class BScreen extends StatelessWidget {
  const BScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AlpBody(
      title: 'B Screen',
      onTap: () => HomeRouteData().go(context),
    );
  }
}

