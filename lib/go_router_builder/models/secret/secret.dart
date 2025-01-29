import 'package:go_router_sample/GO_ROUTER_BUILDER/models/person/person.dart';

class Secret extends Person {
  const Secret({
    required super.id,
    required super.name,
    required super.category,
    required super.imageUrl,
    required this.password,
  });

  final String password;
}
