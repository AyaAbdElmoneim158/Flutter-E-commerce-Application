class SubCategory {
  String id; // Unique identifier for the subcategory
  String name; // Name of the subcategory
  String imageUrl; // URL or path to the subcategory's image
  String categoryId;

  // Constructor
  SubCategory({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.categoryId,
  });

  // Convert subcategory object to Map
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'imageUrl': imageUrl,
      'categoryId': categoryId,
    };
  }

  // Create a subcategory object from Map
  factory SubCategory.fromMap(Map<String, dynamic> map) {
    return SubCategory(
      id: map['id'],
      name: map['name'],
      imageUrl: map['imageUrl'],
      categoryId: map['categoryId'],
    );
  }
   List<SubCategory> dummySubCategories = [
    SubCategory(
      id: '101',
      name: 'Summer Dresses',
      imageUrl: 'https://example.com/summer-dresses.jpg',
      categoryId: '1', // Women category
    ),
    SubCategory(
      id: '102',
      name: 'Casual Tops',
      imageUrl: 'https://example.com/casual-tops.jpg',
      categoryId: '1', // Women category
    ),
    SubCategory(
      id: '201',
      name: 'Formal Shirts',
      imageUrl: 'https://example.com/formal-shirts.jpg',
      categoryId: '2', // Men category
    ),
    SubCategory(
      id: '202',
      name: 'Trendy Jackets',
      imageUrl: 'https://example.com/trendy-jackets.jpg',
      categoryId: '2', // Men category
    ),
    SubCategory(
      id: '301',
      name: 'Girls' ,
      imageUrl: 'https://example.com/girls.jpg',
      categoryId: '3', // Kids category
    ),
    SubCategory(
      id: '302',
      name: 'Boys' ,
      imageUrl: 'https://example.com/boys.jpg',
      categoryId: '3', // Kids category
    ),
  ];

}
