//!-> Done *** *** *** *** *** *** *** *** *** *** *** ***
class ReviewModel {
  ReviewModel({
    required this.uid,
    required this.productId,
    required this.userId,
    required this.userName,
    required this.userImage,
    required this.rating,
    required this.content,
    required this.date,
    required this.images,
  });
  late final String uid;
  late final String productId;
  late final String userId;
  late final String userName;
  late final String userImage;
  late final double rating;
  late final String content;
  late final DateTime date;
  late final List<String> images;

  ReviewModel.fromJson(Map<String, dynamic> json) {
    uid = json['uid'];
    productId = json['productId'];
    userId = json['userId'];
    userName = json['userName'];
    userImage = json['userImage'];
    rating = json['rating'];
    content = json['content'];
    date = json['date'];
    images = List.castFrom<dynamic, String>(json['images']);
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['uid'] = uid;
    data['productId'] = productId;
    data['userId'] = userId;
    data['userName'] = userName;
    data['userImage'] = userImage;
    data['rating'] = rating;
    data['content'] = content;
    data['date'] = date;
    data['images'] = images;
    return data;
  }

  static List<ReviewModel> dummyReviews = [
    ReviewModel(
      uid: "review123",
      productId: "product456",
      userId: "user789",
      userName: "John Doe",
      userImage: "https://example.com/user_profile1.jpg",
      rating: 4.5,
      content: "This product is amazing! I highly recommend it.",
      date: DateTime(2024, 1, 10, 8, 30),
      images: [
        "https://example.com/review_image1.jpg",
        "https://example.com/review_image2.jpg",
      ],
    ),
    ReviewModel(
      uid: "review456",
      productId: "product789",
      userId: "user012",
      userName: "Jane Smith",
      userImage: "https://example.com/user_profile2.jpg",
      rating: 5.0,
      content: "Excellent quality and fast shipping!",
      date: DateTime(2024, 2, 15, 12, 45),
      images: [
        "https://example.com/review_image3.jpg",
        "https://example.com/review_image4.jpg",
      ],
    ),
    ReviewModel(
      uid: "review789",
      productId: "product101",
      userId: "user345",
      userName: "Alice Johnson",
      userImage: "https://example.com/user_profile3.jpg",
      rating: 3.5,
      content: "Decent product, but could be improved.",
      date: DateTime(2024, 3, 20, 14, 15),
      images: [
        "https://example.com/review_image5.jpg",
      ],
    ),
    ReviewModel(
      uid: "review101",
      productId: "product112",
      userId: "user678",
      userName: "Bob Williams",
      userImage: "https://example.com/user_profile4.jpg",
      rating: 4.0,
      content: "Good value for money. Satisfied with the purchase.",
      date: DateTime(2024, 4, 5, 10, 0),
      images: [
        "https://example.com/review_image6.jpg",
        "https://example.com/review_image7.jpg",
      ],
    ),
  ];
}
