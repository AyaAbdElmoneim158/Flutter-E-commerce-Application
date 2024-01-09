/*
String id; // Unique identifier for the coupon
  String code; // Coupon code
  double discountPercentage; // Percentage of the discount
  DateTime expirationDate; // Expiration date of the coupon
 
 String id; // Unique identifier for the coupon
  String code; // Coupon code
  double discountPercentage; // Percentage of the discount
  DateTime expirationDate; // Expiration date of the coupon
  List<String> applicableProductIds; // List of product IDs to which the coupon is applicable
 */
class Coupon {
  String name;
  DateTime expire;
  double discount;
  DateTime createdAt;
  DateTime updatedAt;

  Coupon({
    required this.name,
    required this.expire,
    required this.discount,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Coupon.fromJson(Map<String, dynamic> json) {
    return Coupon(
      name: json['name'],
      expire: DateTime.parse(json['expire']),
      discount: json['discount'],
      createdAt: DateTime.parse(json['createdAt']),
      updatedAt: DateTime.parse(json['updatedAt']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'expire': expire.toIso8601String(),
      'discount': discount,
      'createdAt': createdAt.toIso8601String(),
      'updatedAt': updatedAt.toIso8601String(),
    };
  }

  static List<Coupon> dummyCoupons = [
    Coupon(
      name: 'SUMMER20',
      expire: DateTime.now().add(const Duration(days: 30)),
      discount: 20.0,
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
    Coupon(
      name: 'SALE50',
      expire: DateTime.now().add(const Duration(days: 60)),
      discount: 50.0,
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
    Coupon(
      name: 'FALL25',
      expire: DateTime.now().add(const Duration(days: 45)),
      discount: 25.0,
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
    Coupon(
      name: 'WINTER30',
      expire: DateTime.now().add(const Duration(days: 90)),
      discount: 30.0,
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
    Coupon(
      name: 'HOLIDAY15',
      expire: DateTime.now().add(const Duration(days: 60)),
      discount: 15.0,
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
  ];
}
