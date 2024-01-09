//!-> Done *** *** *** *** *** *** *** *** *** *** *** ***
class OrderItemModel {
  OrderItemModel({
    required this.itemImage,
    required this.itemName,
    required this.itemBrand,
    required this.itemColor,
    required this.itemSize,
    required this.quantity,
    required this.price,
  });
  late final String itemImage;
  late final String itemName;
  late final String itemBrand;
  late final String itemColor;
  late final String itemSize;
  late final int quantity;
  late final double price;

  OrderItemModel.fromJson(Map<String, dynamic> json) {
    itemImage = json['itemImage'];
    itemName = json['itemName'];
    itemBrand = json['itemBrand'];
    itemColor = json['itemColor'];
    itemSize = json['itemSize'];
    quantity = json['quantity'];
    price = json['price'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['itemImage'] = itemImage;
    data['itemName'] = itemName;
    data['itemBrand'] = itemBrand;
    data['itemColor'] = itemColor;
    data['itemSize'] = itemSize;
    data['quantity'] = quantity;
    data['price'] = price;
    return data;
  }

  static List<OrderItemModel> dummyOrderItems = [
    OrderItemModel(
      itemImage: "https://f.nooncdn.com/p/v1615829027/N45215283V_1.jpg",
      itemName: "Cotton T-Shirt",
      itemBrand: "FashionStyle",
      itemColor: "Blue",
      itemSize: "M",
      quantity: 2,
      price: 19.99,
    ),
    OrderItemModel(
      itemImage: "https://f.nooncdn.com/p/v1648109770/N44827266V_1.jpg",
      itemName: "Denim Jeans",
      itemBrand: "UrbanChic",
      itemColor: "Black",
      itemSize: "L",
      quantity: 1,
      price: 49.99,
    ),
    OrderItemModel(
      itemImage: "https://f.nooncdn.com/p/v1616169248/N43716653V_1.jpg",
      itemName: "Summer Dress",
      itemBrand: "TrendyStyles",
      itemColor: "Pink",
      itemSize: "S",
      quantity: 3,
      price: 39.99,
    )
  ];
}
