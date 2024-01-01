/*
 String id; // Unique identifier for the subcategory
  String name; // Name of the subcategory
  String imageUrl; // URL or path to the subcategory's image
  String categoryId; // ID of the parent category to which the subcategory belongs
 */
class SubCategory {
  String name;
  String slug;
  String
      category; // Assuming the category field stores the ID of the parent category
  DateTime createdAt;
  DateTime updatedAt;

  SubCategory({
    required this.name,
    required this.slug,
    required this.category,
    required this.createdAt,
    required this.updatedAt,
  });

  factory SubCategory.fromJson(Map<String, dynamic> json) {
    return SubCategory(
      name: json['name'],
      slug: json['slug'],
      category: json['category'],
      createdAt: DateTime.parse(json['createdAt']),
      updatedAt: DateTime.parse(json['updatedAt']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'slug': slug,
      'category': category,
      'createdAt': createdAt.toIso8601String(),
      'updatedAt': updatedAt.toIso8601String(),
    };
  }

  static List<SubCategory> dummySubCategories = [
    SubCategory(
      name: 'Sneakers',
      slug: 'sneakers',
      category:
          '60ad68b85f4ae53d8c5e4b05', // Replace with an actual category ID
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
    SubCategory(
      name: 'Sandals',
      slug: 'sandals',
      category:
          '60ad68b85f4ae53d8c5e4b05', // Replace with an actual category ID
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
    SubCategory(
      name: 'Running Shoes',
      slug: 'running-shoes',
      category:
          '60ad68b85f4ae53d8c5e4b05', // Replace with an actual category ID
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
    SubCategory(
      name: 'Slim Fit',
      slug: 'slim-fit',
      category:
          '60ad68b85f4ae53d8c5e4b06', // Replace with an actual category ID
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
    SubCategory(
      name: 'Regular Fit',
      slug: 'regular-fit',
      category:
          '60ad68b85f4ae53d8c5e4b06', // Replace with an actual category ID
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
    SubCategory(
      name: 'Skinny Fit',
      slug: 'skinny-fit',
      category:
          '60ad68b85f4ae53d8c5e4b06', // Replace with an actual category ID
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
    // Add more subcategories with similar structure
    // ...
  ];
}
