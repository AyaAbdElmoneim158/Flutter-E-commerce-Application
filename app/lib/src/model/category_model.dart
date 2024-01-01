import 'package:app/src/core/utils/asset_manager.dart';
/*
String id; // Unique identifier for the category
  String name; // Name of the category
  String? description; // Description of the category
  String? imageUrl; // URL or path to the category's image
  List<Product> products;// List of products in the category
 
  String id; // Unique identifier for the category
  String name; // Name of the category
  String imageUrl; // URL or path to the category's image
  List<String> subcategories; // List of subcategory names (if applicable)
 */
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
      image: ImageAssets.mainImage,
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
    Category(
      name: 'Jeans',
      slug: 'jeans',
      image: ImageAssets.mainImage,
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
    Category(
      name: 'Dresses',
      slug: 'dresses',
      image: ImageAssets.mainImage,
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
    Category(
      name: 'Sweaters',
      slug: 'sweaters',
      image: ImageAssets.mainImage,
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
    Category(
      name: 'Jackets',
      slug: 'jackets',
      image: ImageAssets.mainImage,
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
    Category(
      name: 'Pants',
      slug: 'pants',
      image: ImageAssets.mainImage,
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
    Category(
      name: 'Shoes',
      slug: 'shoes',
      image: ImageAssets.mainImage,
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
    Category(
      name: 'Accessories',
      slug: 'accessories',
      image: ImageAssets.mainImage,
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
    Category(
      name: 'Hats',
      slug: 'hats',
      image: ImageAssets.mainImage,
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
  ];
}
