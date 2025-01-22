import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../utils/router/app_route_data.dart';
import 'widget/alp_body.dart';

class CScreen extends StatelessWidget {
  const CScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AlpBody(
      title: 'C Screen',
      onTap: () => AScreenRouteData(id: globalID).push(context),
    );
  }
}

