class Category {
  String name;
  String slug;
  String image;
  DateTime createdAt;
  DateTime updatedAt;

  Category({
    required this.name,
    required this.slug,
    required this.image,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Category.fromJson(Map<String, dynamic> json) {
    return Category(
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

  static List<Category> dummyCategories = [
    Category(
      name: 'T-Shirts',
      slug: 't-shirts',
      image: 't-shirts-category.jpg',
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
    Category(
      name: 'Jeans',
      slug: 'jeans',
      image: 'jeans-category.jpg',
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
    Category(
      name: 'Dresses',
      slug: 'dresses',
      image: 'dresses-category.jpg',
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
    Category(
      name: 'Sweaters',
      slug: 'sweaters',
      image: 'sweaters-category.jpg',
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
    Category(
      name: 'Jackets',
      slug: 'jackets',
      image: 'jackets-category.jpg',
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
    Category(
      name: 'Pants',
      slug: 'pants',
      image: 'pants-category.jpg',
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
    Category(
      name: 'Shoes',
      slug: 'shoes',
      image: 'shoes-category.jpg',
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
    Category(
      name: 'Accessories',
      slug: 'accessories',
      image: 'accessories-category.jpg',
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
    Category(
      name: 'Hats',
      slug: 'hats',
      image: 'hats-category.jpg',
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
    Category(
      name: 'Activewear',
      slug: 'activewear',
      image: 'activewear-category.jpg',
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
    Category(
      name: 'Formal Wear',
      slug: 'formal-wear',
      image: 'formal-wear-category.jpg',
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
    Category(
      name: 'Swimwear',
      slug: 'swimwear',
      image: 'swimwear-category.jpg',
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
    Category(
      name: 'Socks',
      slug: 'socks',
      image: 'socks-category.jpg',
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
    Category(
      name: 'Underwear',
      slug: 'underwear',
      image: 'underwear-category.jpg',
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
    Category(
      name: 'Outerwear',
      slug: 'outerwear',
      image: 'outerwear-category.jpg',
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
    Category(
      name: 'Sportswear',
      slug: 'sportswear',
      image: 'sportswear-category.jpg',
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
    Category(
      name: 'Ethnic Wear',
      slug: 'ethnic-wear',
      image: 'ethnic-wear-category.jpg',
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
    Category(
      name: 'Sleepwear',
      slug: 'sleepwear',
      image: 'sleepwear-category.jpg',
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
    Category(
      name: 'Maternity Wear',
      slug: 'maternity-wear',
      image: 'maternity-wear-category.jpg',
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
    Category(
      name: 'Vintage Clothing',
      slug: 'vintage-clothing',
      image: 'vintage-clothing-category.jpg',
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
    Category(
      name: 'Casual Shirts',
      slug: 'casual-shirts',
      image: 'casual-shirts-category.jpg',
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
    Category(
      name: 'Shorts',
      slug: 'shorts',
      image: 'shorts-category.jpg',
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
    Category(
      name: 'Winter Coats',
      slug: 'winter-coats',
      image: 'winter-coats-category.jpg',
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
    Category(
      name: 'Handbags',
      slug: 'handbags',
      image: 'handbags-category.jpg',
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
    Category(
      name: 'Scarves',
      slug: 'scarves',
      image: 'scarves-category.jpg',
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
    Category(
      name: 'Sunglasses',
      slug: 'sunglasses',
      image: 'sunglasses-category.jpg',
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
    Category(
      name: 'Watches',
      slug: 'watches',
      image: 'watches-category.jpg',
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
    Category(
      name: 'Casual Dresses',
      slug: 'casual-dresses',
      image: 'casual-dresses-category.jpg',
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
    Category(
      name: 'Blouses',
      slug: 'blouses',
      image: 'blouses-category.jpg',
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
    Category(
      name: 'Sweatshirts',
      slug: 'sweatshirts',
      image: 'sweatshirts-category.jpg',
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
    Category(
      name: 'Belts',
      slug: 'belts',
      image: 'belts-category.jpg',
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
    Category(
      name: 'Gloves',
      slug: 'gloves',
      image: 'gloves-category.jpg',
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
    Category(
      name: 'Ties',
      slug: 'ties',
      image: 'ties-category.jpg',
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
    Category(
      name: 'Wallets',
      slug: 'wallets',
      image: 'wallets-category.jpg',
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
    Category(
      name: 'Leggings',
      slug: 'leggings',
      image: 'leggings-category.jpg',
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
    Category(
      name: 'Suits',
      slug: 'suits',
      image: 'suits-category.jpg',
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
    // Add more categories with similar structure
    // ...
  ];
}
