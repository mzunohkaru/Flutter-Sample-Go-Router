import 'package:flutter/material.dart';

import '../../utils/router/app_route_data.dart';
import 'widget/alp_body.dart';

class AScreen extends StatelessWidget {
  const AScreen({
    super.key,
    required this.id,
  });

  final String id;

  @override
  Widget build(BuildContext context) {
    return AlpBody(
      title: 'A Screen, id: $id',
      onTap: () => BScreenRouteData(id: id).go(context),
    );
  }
}

