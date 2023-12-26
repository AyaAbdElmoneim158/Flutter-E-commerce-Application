class Product {
  String title;
  String slug;
  String description;
  int quantity;
  int sold;
  double price;
  double priceAfterDiscount;
  List<String> colors;
  String imageCover;
  List<String> images;
  String category;
  List<String> subcategories;
  String brand;
  double ratingsAverage;
  int ratingsQuantity;
  DateTime createdAt;
  DateTime updatedAt;

  Product({
    required this.title,
    required this.slug,
    required this.description,
    required this.quantity,
    required this.sold,
    required this.price,
    required this.priceAfterDiscount,
    required this.colors,
    required this.imageCover,
    required this.images,
    required this.category,
    required this.subcategories,
    required this.brand,
    required this.ratingsAverage,
    required this.ratingsQuantity,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      title: json['title'],
      slug: json['slug'],
      description: json['description'],
      quantity: json['quantity'],
      sold: json['sold'],
      price: json['price'],
      priceAfterDiscount: json['priceAfterDiscount'],
      colors: List<String>.from(json['colors']),
      imageCover: json['imageCover'],
      images: List<String>.from(json['images']),
      category: json['category'],
      subcategories: List<String>.from(json['subcategories']),
      brand: json['brand'],
      ratingsAverage: json['ratingsAverage'],
      ratingsQuantity: json['ratingsQuantity'],
      createdAt: DateTime.parse(json['createdAt']),
      updatedAt: DateTime.parse(json['updatedAt']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'slug': slug,
      'description': description,
      'quantity': quantity,
      'sold': sold,
      'price': price,
      'priceAfterDiscount': priceAfterDiscount,
      'colors': colors,
      'imageCover': imageCover,
      'images': images,
      'category': category,
      'subcategories': subcategories,
      'brand': brand,
      'ratingsAverage': ratingsAverage,
      'ratingsQuantity': ratingsQuantity,
      'createdAt': createdAt.toIso8601String(),
      'updatedAt': updatedAt.toIso8601String(),
    };
  }

  static List<Product> dummyProducts = [
    Product(
      title: 'Running Shoes',
      slug: 'running-shoes',
      description: 'Comfortable running shoes for your daily jog.',
      quantity: 100,
      sold: 50,
      price: 99.99,
      priceAfterDiscount: 79.99,
      colors: ['Red', 'Blue', 'Black'],
      imageCover: 'running-shoes-cover.jpg',
      images: ['running-shoes-image1.jpg', 'running-shoes-image2.jpg'],
      category:
          '60ad68b85f4ae53d8c5e4b05', // Replace with an actual category ID
      subcategories: [
        '60ad68b85f4ae53d8c5e4b0a'
      ], // Replace with actual subcategory IDs
      brand: '60ad68b85f4ae53d8c5e4b07', // Replace with an actual brand ID
      ratingsAverage: 4.5,
      ratingsQuantity: 20,
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
    Product(
      title: 'Casual T-Shirt',
      slug: 'casual-t-shirt',
      description: 'Stylish and comfortable casual T-shirt for everyday wear.',
      quantity: 150,
      sold: 30,
      price: 29.99,
      priceAfterDiscount: 24.99,
      colors: ['White', 'Black', 'Gray'],
      imageCover: 'casual-t-shirt-cover.jpg',
      images: ['casual-t-shirt-image1.jpg', 'casual-t-shirt-image2.jpg'],
      category:
          '60ad68b85f4ae53d8c5e4b06', // Replace with an actual category ID
      subcategories: [
        '60ad68b85f4ae53d8c5e4b0b'
      ], // Replace with actual subcategory IDs
      brand: '60ad68b85f4ae53d8c5e4b08', // Replace with an actual brand ID
      ratingsAverage: 4.0,
      ratingsQuantity: 15,
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
    Product(
      title: 'Wireless Earbuds',
      slug: 'wireless-earbuds',
      description:
          'High-quality wireless earbuds for an immersive audio experience.',
      quantity: 50,
      sold: 10,
      price: 79.99,
      priceAfterDiscount: 69.99,
      colors: ['Black', 'White', 'Red'],
      imageCover: 'wireless-earbuds-cover.jpg',
      images: ['wireless-earbuds-image1.jpg', 'wireless-earbuds-image2.jpg'],
      category:
          '60ad68b85f4ae53d8c5e4b07', // Replace with an actual category ID
      subcategories: [
        '60ad68b85f4ae53d8c5e4b0c'
      ], // Replace with actual subcategory IDs
      brand: '60ad68b85f4ae53d8c5e4b0a', // Replace with an actual brand ID
      ratingsAverage: 4.8,
      ratingsQuantity: 30,
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
    Product(
      title: 'Smartphone',
      slug: 'smartphone',
      description:
          'Powerful and feature-packed smartphone for modern communication.',
      quantity: 30,
      sold: 5,
      price: 699.99,
      priceAfterDiscount: 649.99,
      colors: ['Silver', 'Black', 'Gold'],
      imageCover: 'smartphone-cover.jpg',
      images: ['smartphone-image1.jpg', 'smartphone-image2.jpg'],
      category:
          '60ad68b85f4ae53d8c5e4b08', // Replace with an actual category ID
      subcategories: [
        '60ad68b85f4ae53d8c5e4b0d'
      ], // Replace with actual subcategory IDs
      brand: '60ad68b85f4ae53d8c5e4b0b', // Replace with an actual brand ID
      ratingsAverage: 4.5,
      ratingsQuantity: 25,
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
    Product(
      title: 'Laptop',
      slug: 'laptop',
      description: 'Powerful and sleek laptop for work and entertainment.',
      quantity: 20,
      sold: 8,
      price: 1299.99,
      priceAfterDiscount: 1199.99,
      colors: ['Silver', 'Space Gray'],
      imageCover: 'laptop-cover.jpg',
      images: ['laptop-image1.jpg', 'laptop-image2.jpg'],
      category:
          '60ad68b85f4ae53d8c5e4b09', // Replace with an actual category ID
      subcategories: [
        '60ad68b85f4ae53d8c5e4b0e'
      ], // Replace with actual subcategory IDs
      brand: '60ad68b85f4ae53d8c5e4b0c', // Replace with an actual brand ID
      ratingsAverage: 4.9,
      ratingsQuantity: 15,
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
    Product(
      title: 'Fitness Tracker',
      slug: 'fitness-tracker',
      description:
          'Track your fitness and health with this advanced fitness tracker.',
      quantity: 30,
      sold: 12,
      price: 49.99,
      priceAfterDiscount: 39.99,
      colors: ['Black', 'Blue', 'Pink'],
      imageCover: 'fitness-tracker-cover.jpg',
      images: ['fitness-tracker-image1.jpg', 'fitness-tracker-image2.jpg'],
      category:
          '60ad68b85f4ae53d8c5e4b07', // Replace with an actual category ID
      subcategories: [
        '60ad68b85f4ae53d8c5e4b0f'
      ], // Replace with actual subcategory IDs
      brand: '60ad68b85f4ae53d8c5e4b0a', // Replace with an actual brand ID
      ratingsAverage: 4.7,
      ratingsQuantity: 20,
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
  ];
}
