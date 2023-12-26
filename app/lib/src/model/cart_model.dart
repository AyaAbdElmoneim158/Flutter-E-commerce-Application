class Cart {
  List<CartItem> cartItems;
  double totalCartPrice;
  double totalPriceAfterDiscount;
  String user;
  DateTime createdAt;
  DateTime updatedAt;

  Cart({
    required this.cartItems,
    required this.totalCartPrice,
    required this.totalPriceAfterDiscount,
    required this.user,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Cart.fromJson(Map<String, dynamic> json) {
    return Cart(
      cartItems: List<CartItem>.from(
          json['cartItems'].map((x) => CartItem.fromJson(x))),
      totalCartPrice: json['totalCartPrice'],
      totalPriceAfterDiscount: json['totalPriceAfterDiscount'],
      user: json['user'],
      createdAt: DateTime.parse(json['createdAt']),
      updatedAt: DateTime.parse(json['updatedAt']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'cartItems': cartItems.map((x) => x.toJson()).toList(),
      'totalCartPrice': totalCartPrice,
      'totalPriceAfterDiscount': totalPriceAfterDiscount,
      'user': user,
      'createdAt': createdAt.toIso8601String(),
      'updatedAt': updatedAt.toIso8601String(),
    };
  }

  static List<Cart> dummyCarts = [
    Cart(
      cartItems: [
        CartItem(
          product: 'product1', // Replace with actual product ID
          quantity: 2,
          color: 'red',
          price: 50.0,
        ),
        CartItem(
          product: 'product2', // Replace with actual product ID
          quantity: 1,
          color: 'blue',
          price: 30.0,
        ),
      ],
      totalCartPrice: 130.0,
      totalPriceAfterDiscount: 110.0,
      user: 'user123', // Replace with actual user ID
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
    Cart(
      cartItems: [
        CartItem(
          product: 'product3', // Replace with actual product ID
          quantity: 3,
          color: 'green',
          price: 25.0,
        ),
      ],
      totalCartPrice: 75.0,
      totalPriceAfterDiscount: 70.0,
      user: 'user456', // Replace with actual user ID
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
    Cart(
      cartItems: [
        CartItem(
          product: 'product4', // Replace with actual product ID
          quantity: 1,
          color: 'black',
          price: 75.0,
        ),
        CartItem(
          product: 'product5', // Replace with actual product ID
          quantity: 2,
          color: 'white',
          price: 40.0,
        ),
      ],
      totalCartPrice: 155.0,
      totalPriceAfterDiscount: 140.0,
      user: 'user789', // Replace with actual user ID
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
    Cart(
      cartItems: [
        CartItem(
          product: 'product6', // Replace with actual product ID
          quantity: 1,
          color: 'yellow',
          price: 60.0,
        ),
        CartItem(
          product: 'product7', // Replace with actual product ID
          quantity: 3,
          color: 'purple',
          price: 20.0,
        ),
      ],
      totalCartPrice: 180.0,
      totalPriceAfterDiscount: 160.0,
      user: 'user1011', // Replace with actual user ID
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
  ];
}

class CartItem {
  String product;
  int quantity;
  String color;
  double price;

  CartItem({
    required this.product,
    required this.quantity,
    required this.color,
    required this.price,
  });

  factory CartItem.fromJson(Map<String, dynamic> json) {
    return CartItem(
      product: json['product'],
      quantity: json['quantity'],
      color: json['color'],
      price: json['price'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'product': product,
      'quantity': quantity,
      'color': color,
      'price': price,
    };
  }
}
