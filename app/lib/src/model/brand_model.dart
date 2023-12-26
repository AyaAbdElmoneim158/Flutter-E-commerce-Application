class Brand {
  String name;
  String slug;
  String image;
  DateTime createdAt;
  DateTime updatedAt;

  Brand({
    required this.name,
    required this.slug,
    required this.image,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Brand.fromJson(Map<String, dynamic> json) {
    return Brand(
      name: json['name'],
      slug: json['slug'],
      image: json['image'],
      createdAt: DateTime.parse(json['createdAt']),
      updatedAt: DateTime.parse(json['updatedAt']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'slug': slug,
      'image': image,
      'createdAt': createdAt.toIso8601String(),
      'updatedAt': updatedAt.toIso8601String(),
    };
  }

  static List<Brand> dummyBrands = [
    Brand(
      name: 'Nike',
      slug: 'nike',
      image: 'nike-logo.jpg',
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
    Brand(
      name: 'Adidas',
      slug: 'adidas',
      image: 'adidas-logo.jpg',
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
    Brand(
      name: 'Puma',
      slug: 'puma',
      image: 'puma-logo.jpg',
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
    Brand(
      name: 'Reebok',
      slug: 'reebok',
      image: 'reebok-logo.jpg',
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
    Brand(
      name: 'Under Armour',
      slug: 'under-armour',
      image: 'under-armour-logo.jpg',
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
    Brand(
      name: 'New Balance',
      slug: 'new-balance',
      image: 'new-balance-logo.jpg',
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
    Brand(
      name: 'Vans',
      slug: 'vans',
      image: 'vans-logo.jpg',
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
    Brand(
      name: 'Converse',
      slug: 'converse',
      image: 'converse-logo.jpg',
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
    Brand(
      name: 'Timberland',
      slug: 'timberland',
      image: 'timberland-logo.jpg',
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
    Brand(
      name: 'Fila',
      slug: 'fila',
      image: 'fila-logo.jpg',
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
    // Add more brands with similar structure
    // ...
  ];
}
