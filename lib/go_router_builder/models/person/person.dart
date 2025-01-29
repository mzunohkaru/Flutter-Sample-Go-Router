class Person {
  const Person({
    required this.id,
    required this.name,
    required this.category,
    required this.imageUrl,
  });

  final int id;
  final String name;
  final PersonCategory category;
  final String imageUrl;

  static List<Person> get flutterPersons =>
      dataPersons.where((p) => p.category == PersonCategory.flutter).toList();
  static List<Person> get typescriptPersons =>
      dataPersons.where((p) => p.category == PersonCategory.typescript).toList();
  static List<Person> get swiftPersons =>
      dataPersons.where((p) => p.category == PersonCategory.swift).toList();
  static List<Person> get unityPersons =>
      dataPersons.where((p) => p.category == PersonCategory.unity).toList();

  static List<Person> get all => dataPersons;
}

enum PersonCategory {
  flutter,
  typescript,
  swift,
  unity;
}

final dataPersons = [
  Person(
    id: 1,
    name: '田中',
    category: PersonCategory.flutter,
    imageUrl: 'https://picsum.photos/200',
  ),
  Person(
    id: 2,
    name: '鈴木',
    category: PersonCategory.flutter,
    imageUrl: 'https://picsum.photos/201',
  ),
  Person(
    id: 3,
    name: '佐藤',
    category: PersonCategory.flutter,
    imageUrl: 'https://picsum.photos/202',
  ),
  Person(
    id: 4,
    name: '山本',
    category: PersonCategory.flutter,
    imageUrl: 'https://picsum.photos/203',
  ),
  Person(
    id: 5,
    name: '渡辺',
    category: PersonCategory.flutter,
    imageUrl: 'https://picsum.photos/204',
  ),
  Person(
    id: 6,
    name: '伊藤',
    category: PersonCategory.flutter,
    imageUrl: 'https://picsum.photos/205',
  ),
  Person(
    id: 7,
    name: '斎藤',
    category: PersonCategory.flutter,
    imageUrl: 'https://picsum.photos/206',
  ),
  Person(
    id: 8,
    name: '加藤',
    category: PersonCategory.flutter,
    imageUrl: 'https://picsum.photos/207',
  ),
  Person(
    id: 9,
    name: '吉田',
    category: PersonCategory.flutter,
    imageUrl: 'https://picsum.photos/208',
  ),
  Person(
    id: 10,
    name: '山田',
    category: PersonCategory.flutter,
    imageUrl: 'https://picsum.photos/209',
  ),
  Person(
    id: 11,
    name: '佐々木',
    category: PersonCategory.flutter,
    imageUrl: 'https://picsum.photos/210',
  ),
  Person(
    id: 12,
    name: '山口',
    category: PersonCategory.flutter,
    imageUrl: 'https://picsum.photos/211',
  ),
  Person(
    id: 13,
    name: '松本',
    category: PersonCategory.typescript,
    imageUrl: 'https://picsum.photos/212',
  ),
  Person(
    id: 14,
    name: '井上',
    category: PersonCategory.typescript,
    imageUrl: 'https://picsum.photos/213',
  ),
  Person(
    id: 15,
    name: '木村',
    category: PersonCategory.typescript,
    imageUrl: 'https://picsum.photos/214',
  ),
  Person(
    id: 16,
    name: '林',
    category: PersonCategory.typescript,
    imageUrl: 'https://picsum.photos/215',
  ),
  Person(
    id: 17,
    name: '清水',
    category: PersonCategory.typescript,
    imageUrl: 'https://picsum.photos/216',
  ),
  Person(
    id: 18,
    name: '山崎',
    category: PersonCategory.typescript,
    imageUrl: 'https://picsum.photos/217',
  ),
  Person(
    id: 19,
    name: '森',
    category: PersonCategory.typescript,
    imageUrl: 'https://picsum.photos/218',
  ),
  Person(
    id: 20,
    name: '池田',
    category: PersonCategory.swift,
    imageUrl: 'https://picsum.photos/219',
  ),
  Person(
    id: 21,
    name: '橋本',
    category: PersonCategory.swift,
    imageUrl: 'https://picsum.photos/220',
  ),
  Person(
    id: 22,
    name: '山下',
    category: PersonCategory.swift,
    imageUrl: 'https://picsum.photos/221',
  ),
  Person(
    id: 23,
    name: '中村',
    category: PersonCategory.swift,
    imageUrl: 'https://picsum.photos/222',
  ),
  Person(
    id: 24,
    name: '前田',
    category: PersonCategory.swift,
    imageUrl: 'https://picsum.photos/223',
  ),
  Person(
    id: 25,
    name: '藤田',
    category: PersonCategory.swift,
    imageUrl: 'https://picsum.photos/224',
  ),
  Person(
    id: 26,
    name: '小川',
    category: PersonCategory.swift,
    imageUrl: 'https://picsum.photos/225',
  ),
  Person(
    id: 27,
    name: '後藤',
    category: PersonCategory.swift,
    imageUrl: 'https://picsum.photos/226',
  ),
  Person(
    id: 29,
    name: '岡田',
    category: PersonCategory.unity,
    imageUrl: 'https://picsum.photos/227',
  ),
  Person(
    id: 30,
    name: '長谷川',
    category: PersonCategory.unity,
    imageUrl: 'https://picsum.photos/228',
  ),
  Person(
    id: 31,
    name: '村上',
    category: PersonCategory.unity,
    imageUrl: 'https://picsum.photos/229',
  ),
  Person(
    id: 32,
    name: '近藤',
    category: PersonCategory.unity,
    imageUrl: 'https://picsum.photos/230',
  ),
];
