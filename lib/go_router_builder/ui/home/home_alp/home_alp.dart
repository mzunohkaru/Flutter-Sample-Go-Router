class HomeAlp {
  final String id;
  final String name;

  HomeAlp({required this.id, required this.name});
}

class HomeAlpPlus extends HomeAlp {
  HomeAlpPlus({
    required super.id,
    required super.name,
    required this.description,
  });

  final String description;
}
