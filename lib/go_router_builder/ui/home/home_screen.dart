import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import '../../models/person/person.dart';
import '../../service/router/routing/routing.dart';

class HomeScreen extends HookWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final dashes = Person.all;
    const categories = PersonCategory.values;

    final tabController = useTabController(
      initialLength: PersonCategory.values.length,
      vsync: useSingleTickerProvider(),
    );

    return Scaffold(
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
                            _PersonCard(person: dash),
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

class _PersonCard extends StatelessWidget {
  const _PersonCard({required this.person});

  final Person person;

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
              DetailRouteData(id: person.id, $extra: person).go(context);
            },
            child: Column(
              children: [
                Expanded(
                  flex: 6,
                  child: Hero(
                    tag: person.id,
                    child: CircleAvatar(
                      radius: 50,
                      backgroundImage: NetworkImage(person.imageUrl),
                    ),
                  ),
                ),
                Expanded(
                  child: Text(
                    person.name,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
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
