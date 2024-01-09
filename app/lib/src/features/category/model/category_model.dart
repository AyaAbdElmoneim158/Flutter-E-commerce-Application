

class Category {
  String id; // Unique identifier for the category
  String name; // Name of the category
  String imageUrl; // URL or path to the category's image
  List<String> subcategories;

  // Constructor
  Category({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.subcategories,
  });

  // Convert category object to Map
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'imageUrl': imageUrl,
      'subcategories': subcategories,
    };
  }

  // Create a category object from Map
  factory Category.fromMap(Map<String, dynamic> map) {
    return Category(
      id: map['id'],
      name: map['name'],
      imageUrl: map['imageUrl'],
      subcategories: List<String>.from(map['subcategories']),
    );
  }

  static
  List<Category> dummyCategories = [
    Category(
      id: '1',
      name: 'Women',
      imageUrl: 'https://img.ltwebstatic.com/images3_pi/2023/04/01/16803216176da7bc7ecd7ce24636f07bae3b52a0f8_thumbnail_600x.jpg',
      subcategories: ['Dresses', 'Tops', 'Bottoms', 'Outerwear', 'Shoes', 'Accessories'],
    ),
    Category(
      id: '2',
      name: 'Men',
      imageUrl: 'https://img.ltwebstatic.com/images3_pi/2023/09/27/97/1695781543804a79c794e945effcd12266d4647e98_thumbnail_600x.jpg',
      subcategories: ['Shirts', 'Trousers', 'Jackets', 'Shoes', 'Accessories'],
    ),
    Category(
      id: '3',
      name: 'Kids',
      imageUrl: 'https://img.ltwebstatic.com/images3_pi/2023/09/27/51/169578021421664be355cb0c67be789b4f2b477c8a_thumbnail_600x.jpg',
      subcategories: ['Girls', 'Boys', 'Infants', 'Shoes', 'Accessories'],
    ),
  ];

}
