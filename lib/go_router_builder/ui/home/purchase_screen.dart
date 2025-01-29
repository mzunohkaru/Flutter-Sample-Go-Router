import 'package:flutter/material.dart';

import '../../models/product.dart';

class PurchaseScreen extends StatelessWidget {
  const PurchaseScreen({
    super.key,
    required this.id,
    required this.product,
  });

  final String id;
  final Product product;

  @override
  Widget build(BuildContext context) {
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
