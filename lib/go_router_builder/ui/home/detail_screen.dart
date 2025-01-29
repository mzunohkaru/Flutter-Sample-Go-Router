import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../models/person/person.dart';
import '../../models/secret/secret.dart';
import '../../service/router/router_provider/router_provider.dart';
import '../../service/router/routing/routing.dart';

class DetailScreen extends HookConsumerWidget {
  const DetailScreen({super.key, required this.id, required this.person});

  final int id;
  final Person person;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.read(routerProvider);
    final session = useState<String>('');

    final generateRandomString = useCallback(() {
      const chars =
          'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
      final random = StringBuffer();
      final rnd = DateTime.now().microsecondsSinceEpoch;
      for (var i = 0; i < 12; i++) {
        random.write(chars[(rnd + i) % chars.length]);
      }
      return random.toString();
    }, []);

    useEffect(() {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        session.value = generateRandomString();
      });
      return null;
    }, []);

    return Scaffold(
      appBar: AppBar(
        title: Text('${person.name}さん'),
        leading: BackButton(
          onPressed: () {
            if (!context.mounted) return;
            router.pop();
          },
        ),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          spacing: 32,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.5,
              child: Hero(
                tag: person.id,
                child: Image.network(
                  person.imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Text('セッションID: ${session.value}'),
            ElevatedButton(
              onPressed: () {
                if (!context.mounted) return;
                SecurityRouteData(
                  id: person.id,
                  $extra: Secret(
                    id: person.id,
                    name: person.name,
                    category: person.category,
                    imageUrl: person.imageUrl,
                    password: session.value,
                  ),
                ).go(context);
              },
              child: const Text('セキュリティ情報を閲覧'),
            ),
          ],
        ),
      ),
    );
  }
}
