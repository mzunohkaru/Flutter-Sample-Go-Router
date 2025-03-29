import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

enum BottomNavigatorBar {
  home,
  topTab,
  ;
}

class ScaffoldWithNavigatorBar extends StatelessWidget {
  const ScaffoldWithNavigatorBar({
    super.key,
    required this.navigationShell,
    required this.children,
  });

  final StatefulNavigationShell navigationShell;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: navigationShell.currentIndex,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: const Icon(Icons.home),
            label: BottomNavigatorBar.home.name,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.tab),
            label: BottomNavigatorBar.topTab.name,
          ),
        ],
        onTap: (index) => navigationShell.goBranch(
          index,
          initialLocation: index == navigationShell.currentIndex,
        ),
      ),
      body: SafeArea(
        top: false,
        // 自分で凝ったことしたい場合は、Stackを使って自作する
        // アニメーションとか状態管理
        child: Stack(
          children: [
            Visibility(
              visible:
                  navigationShell.currentIndex == BottomNavigatorBar.home.index,
              child: children[BottomNavigatorBar.home.index],
            ),
            Visibility(
              visible: navigationShell.currentIndex ==
                  BottomNavigatorBar.topTab.index,
              maintainState: false,
              child: children[BottomNavigatorBar.topTab.index],
            ),
          ],
        ),
      ),
    );
  }
}

class ScaffoldWithTabBarView extends StatelessWidget {
  const ScaffoldWithTabBarView({
    super.key,
    required this.navigationShell,
    required this.children,
  });

  final StatefulNavigationShell navigationShell;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: navigationShell.currentIndex,
      child: Builder(
        builder: (context) {
          final tabController = DefaultTabController.of(context);
          tabController.addListener(() {
            if (tabController.indexIsChanging) {
              navigationShell.goBranch(
                tabController.index,
                initialLocation:
                    tabController.index == navigationShell.currentIndex,
              );
            }
          });

          return Scaffold(
            appBar: AppBar(
              bottom: const TabBar(
                tabs: [
                  Tab(icon: Icon(Icons.directions_car)),
                  Tab(icon: Icon(Icons.directions_transit)),
                ],
              ),
              backgroundColor: Theme.of(context).colorScheme.inversePrimary,
              title: const Text('上タブページ'),
            ),
            body: TabBarView(children: children),
          );
        },
      ),
    );
  }
}
