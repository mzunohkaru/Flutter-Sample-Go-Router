import 'package:flutter/material.dart';

import '../../models/day.dart';
import '../../models/product.dart';

class PurchaseScreen extends StatelessWidget {
  const PurchaseScreen({
    super.key,
    required this.id,
    required this.product,
    required this.day,
  });

  final String id;
  final Product product;
  final Day day;

  @override
  Widget build(BuildContext context) {
    print(day);
    return Scaffold(
      appBar: AppBar(
        title: Text('購入ID: ${id}'),
      ),
      body: Center(
        child: Text('名前: ${product.name}'),
      ),
    );
  }
}
