import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () => context.goNamed('APage'),
              child: const Text('Aページ遷移'),
            ),
            ElevatedButton(
              onPressed: () => context.goNamed('BPage'),
              child: const Text('Bページ遷移'),
            ),
            ElevatedButton(
              onPressed: () => context.goNamed('TrainPage'),
              child: const Text('topTabのトレインへ遷移'),
            ),
          ],
        ),
      ),
    );
  }
}

class APage extends StatelessWidget {
  const APage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Aページ'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => context.goNamed('BPage'),
              child: const Text('b画面遷移'),
            ),
          ],
        ),
      ),
    );
  }
}

class BPage extends StatelessWidget {
  const BPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Bページ'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => context.pop(),
              child: const Text('前画面に戻る'),
            ),
          ],
        ),
      ),
    );
  }
}

class CarPage extends StatelessWidget {
  const CarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Car'));
  }
}

class TrainPage extends StatelessWidget {
  const TrainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('TrainPage'));
  }
}