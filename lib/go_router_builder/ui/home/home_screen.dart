import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import '../../models/product.dart';
import '../../utils/router/app_route_data.dart';
import 'home_alp/home_alp.dart';

class HomeScreen extends HookWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final dashes = Product.all;
    const categories = ProductCategory.values;

    final tabController = useTabController(
      initialLength: ProductCategory.values.length,
      vsync: useSingleTickerProvider(),
    );

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          HomeARouteData(
            $extra: HomeAlp(id: '987654321', name: 'Home A'),
          ).go(context);
        },
        child: Text('Home A'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            TabBar(
              controller: tabController,
              tabs: [
                for (final category in categories)
                  Tab(
                    text: category.name,
                  ),
              ],
            ),
            Expanded(
              child: TabBarView(
                controller: tabController,
                children: [
                  for (final category in categories)
                    GridView.count(
                      crossAxisCount: 2,
                      children: [
                        for (final dash in dashes)
                          if (dash.category == category)
                            ProductCard(product: dash),
                      ],
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  const ProductCard({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
      ),
      child: Stack(
        fit: StackFit.expand,
        children: [
          GestureDetector(
            onTap: () {
              if (!context.mounted) return;
              // context.go('/home/detail/${product.id}', extra: product);

              // TODO: ここでエラーが出る
              DetailRouteData(id: product.id, $extra: product).go(context);
            },
            child: Column(
              children: [
                Expanded(
                  flex: 6,
                  child: Hero(
                    tag: product.tag,
                    child: CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage(product.imagePath),
                    ),
                  ),
                ),
                Expanded(
                  child: Text(
                    product.name,
                  ),
                ),
                Expanded(
                  child: Text(
                    '${product.price}',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
