class Review {
  String title;
  double ratings;
  String user;
  String product;
  DateTime createdAt;
  DateTime updatedAt;

  Review({
    required this.title,
    required this.ratings,
    required this.user,
    required this.product,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Review.fromJson(Map<String, dynamic> json) {
    return Review(
      title: json['title'],
      ratings: json['ratings'],
      user: json['user'],
      product: json['product'],
      createdAt: DateTime.parse(json['createdAt']),
      updatedAt: DateTime.parse(json['updatedAt']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'ratings': ratings,
      'user': user,
      'product': product,
      'createdAt': createdAt.toIso8601String(),
      'updatedAt': updatedAt.toIso8601String(),
    };
  }

  static List<Review> dummyReviews = [
    Review(
      title: 'Great product!',
      ratings: 4.5,
      user: 'user123', // Replace with actual user ID
      product: 'product1', // Replace with actual product ID
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
    Review(
      title: 'Not bad, but could be better.',
      ratings: 3.0,
      user: 'user456', // Replace with actual user ID
      product: 'product2', // Replace with actual product ID
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
    Review(
      title: 'Amazing quality!',
      ratings: 5.0,
      user: 'user789', // Replace with actual user ID
      product: 'product3', // Replace with actual product ID
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
    Review(
      title: 'Disappointed with the purchase.',
      ratings: 2.5,
      user: 'user1011', // Replace with actual user ID
      product: 'product4', // Replace with actual product ID
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
  ];
}
