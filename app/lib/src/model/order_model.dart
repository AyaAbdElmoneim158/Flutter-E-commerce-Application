// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Order {
  String user;
  List<OrderCartItem> cartItems;
  double taxPrice;
  OrderShippingAddress shippingAddress;
  double shippingPrice;
  double totalOrderPrice;
  String paymentMethodType;
  bool isPaid;
  DateTime paidAt;
  bool isDelivered;
  DateTime deliveredAt;
  DateTime createdAt;
  DateTime updatedAt;

  Order({
    required this.user,
    required this.cartItems,
    required this.taxPrice,
    required this.shippingAddress,
    required this.shippingPrice,
    required this.totalOrderPrice,
    required this.paymentMethodType,
    required this.isPaid,
    required this.paidAt,
    required this.isDelivered,
    required this.deliveredAt,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Order.fromJson(Map<String, dynamic> json) {
    return Order(
      user: json['user'],
      cartItems: List<OrderCartItem>.from(
          json['cartItems'].map((x) => OrderCartItem.fromJson(x))),
      taxPrice: json['taxPrice'],
      shippingAddress: OrderShippingAddress.fromJson(json['shippingAddress']),
      shippingPrice: json['shippingPrice'],
      totalOrderPrice: json['totalOrderPrice'],
      paymentMethodType: json['paymentMethodType'],
      isPaid: json['isPaid'],
      paidAt: DateTime.parse(json['paidAt']),
      isDelivered: json['isDelivered'],
      deliveredAt: DateTime.parse(json['deliveredAt']),
      createdAt: DateTime.parse(json['createdAt']),
      updatedAt: DateTime.parse(json['updatedAt']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'user': user,
      'cartItems': cartItems.map((x) => x.toJson()).toList(),
      'taxPrice': taxPrice,
      'shippingAddress': shippingAddress.toJson(),
      'shippingPrice': shippingPrice,
      'totalOrderPrice': totalOrderPrice,
      'paymentMethodType': paymentMethodType,
      'isPaid': isPaid,
      'paidAt': paidAt.toIso8601String(),
      'isDelivered': isDelivered,
      'deliveredAt': deliveredAt.toIso8601String(),
      'createdAt': createdAt.toIso8601String(),
      'updatedAt': updatedAt.toIso8601String(),
    };
  }

  static List<Order> dummyOrders = [
    Order(
      user: 'user123', // Replace with actual user ID
      cartItems: [
        OrderCartItem(
            product: 'product1', // Replace with actual product ID
            image: "assets/images/product1.png",
            quantity: 2,
            color: 'red',
            price: 50.0,
            size: 'M',
            brand: 'mango'),
        OrderCartItem(
            product: 'product2', // Replace with actual product ID
            image: "assets/images/product2.png",
            quantity: 1,
            color: 'blue',
            price: 30.0,
            size: 'L',
            brand: 'mango'),
      ],
      taxPrice: 5.0,
      shippingAddress: OrderShippingAddress(
        details: '123 Main St',
        phone: '123-456-7890',
        city: 'Cityville',
        postalCode: '12345',
      ),
      shippingPrice: 10.0,
      totalOrderPrice: 120.0,
      paymentMethodType: 'card',
      isPaid: true,
      paidAt: DateTime.now(),
      isDelivered: false,
      deliveredAt: DateTime.now(),
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
    Order(
      user: 'user456', // Replace with actual user ID
      cartItems: [
        OrderCartItem(
            product: 'product3', // Replace with actual product ID
            image: "assets/images/product3.png",
            quantity: 3,
            color: 'green',
            price: 25.0,
            size: 's',
            brand: 'mango'),
      ],
      taxPrice: 3.0,
      shippingAddress: OrderShippingAddress(
        details: '456 Oak St',
        phone: '987-654-3210',
        city: 'Townsville',
        postalCode: '54321',
      ),
      shippingPrice: 8.0,
      totalOrderPrice: 84.0,
      paymentMethodType: 'cash',
      isPaid: false,
      paidAt: DateTime.now(),
      isDelivered: true,
      deliveredAt: DateTime.now(),
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
    Order(
      user: 'user789', // Replace with actual user ID
      cartItems: [
        OrderCartItem(
            product: 'product4', // Replace with actual product ID
            image: "assets/images/product4.png",
            quantity: 1,
            color: 'black',
            price: 75.0,
            size: 'L',
            brand: 'mango'),
        OrderCartItem(
            product: 'product5', // Replace with actual product ID
            image: "assets/images/product5.png",
            quantity: 2,
            color: 'white',
            price: 40.0,
            size: 'L',
            brand: 'mango'),
      ],
      taxPrice: 8.0,
      shippingAddress: OrderShippingAddress(
        details: '789 Pine St',
        phone: '555-123-4567',
        city: 'Villagetown',
        postalCode: '67890',
      ),
      shippingPrice: 15.0,
      totalOrderPrice: 160.0,
      paymentMethodType: 'card',
      isPaid: true,
      paidAt: DateTime.now(),
      isDelivered: true,
      deliveredAt: DateTime.now(),
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
    Order(
      user: 'user1011', // Replace with actual user ID
      cartItems: [
        OrderCartItem(
          product: 'product6', // Replace with actual product ID
          image: "assets/images/product6.png",
          size: 'L',
          brand: 'mango',

          quantity: 1,
          color: 'yellow',
          price: 60.0,
        ),
        OrderCartItem(
          product: 'product7', // Replace with actual product ID
          image: "assets/images/product7.png",
          size: 'L',
          brand: 'mango',
          quantity: 3,
          color: 'purple',
          price: 20.0,
        ),
      ],
      taxPrice: 5.0,
      shippingAddress: OrderShippingAddress(
        details: '1011 Maple St',
        phone: '333-987-6543',
        city: 'Hometown',
        postalCode: '54321',
      ),
      shippingPrice: 12.0,
      totalOrderPrice: 100.0,
      paymentMethodType: 'cash',
      isPaid: false,
      paidAt: DateTime.now(),
      isDelivered: false,
      deliveredAt: DateTime.now(),
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
  ];
}

class OrderCartItem {
  String product;
  String image;
  String brand;
  int quantity;
  String size;
  String color;
  double price;

  OrderCartItem({
    required this.product,
    required this.image,
    required this.brand,
    required this.quantity,
    required this.size,
    required this.color,
    required this.price,
  });

  OrderCartItem copyWith({
    String? product,
    String? image,
    String? brand,
    int? quantity,
    String? size,
    String? color,
    double? price,
  }) {
    return OrderCartItem(
      product: product ?? this.product,
      image: image ?? this.image,
      brand: brand ?? this.brand,
      quantity: quantity ?? this.quantity,
      size: size ?? this.size,
      color: color ?? this.color,
      price: price ?? this.price,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'product': product,
      'image': image,
      'brand': brand,
      'quantity': quantity,
      'size': size,
      'color': color,
      'price': price,
    };
  }

  factory OrderCartItem.fromMap(Map<String, dynamic> map) {
    return OrderCartItem(
      product: map['product'] as String,
      image: map['image'] as String,
      brand: map['brand'] as String,
      quantity: map['quantity'] as int,
      size: map['size'] as String,
      color: map['color'] as String,
      price: map['price'] as double,
    );
  }

  String toJson() => json.encode(toMap());

  factory OrderCartItem.fromJson(String source) =>
      OrderCartItem.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'OrderCartItem(product: $product, image: $image, brand: $brand, quantity: $quantity, size: $size, color: $color, price: $price)';
  }

  @override
  bool operator ==(covariant OrderCartItem other) {
    if (identical(this, other)) return true;

    return other.product == product &&
        other.image == image &&
        other.brand == brand &&
        other.quantity == quantity &&
        other.size == size &&
        other.color == color &&
        other.price == price;
  }

  @override
  int get hashCode {
    return product.hashCode ^
        image.hashCode ^
        brand.hashCode ^
        quantity.hashCode ^
        size.hashCode ^
        color.hashCode ^
        price.hashCode;
  }
}

class OrderShippingAddress {
  String details;
  String phone;
  String city;
  String postalCode;

  OrderShippingAddress({
    required this.details,
    required this.phone,
    required this.city,
    required this.postalCode,
  });

  factory OrderShippingAddress.fromJson(Map<String, dynamic> json) {
    return OrderShippingAddress(
      details: json['details'],
      phone: json['phone'],
      city: json['city'],
      postalCode: json['postalCode'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'details': details,
      'phone': phone,
      'city': city,
      'postalCode': postalCode,
    };
  }
}
