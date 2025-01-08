import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../models/product.dart';
import '../../utils/router/app_router.dart';

class ProductDetailScreen extends ConsumerWidget {
  const ProductDetailScreen({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail'),
        leading: BackButton(
          onPressed: () => ref.read(routerProvider).pop(),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.5,
              child: Hero(
                tag: product.tag,
                child: Image.asset(
                  product.imagePath,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Text(product.name),
            Text(product.description),
            Text('${product.price}'),
          ],
        ),
      ),
    );
  }
}
