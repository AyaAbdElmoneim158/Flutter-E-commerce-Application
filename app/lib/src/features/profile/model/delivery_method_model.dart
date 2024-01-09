//!-> Done *** *** *** *** *** *** *** *** *** *** *** ***
class DeliveryMethodModel {
  DeliveryMethodModel({
    required this.id,
    required this.name,
    required this.days,
    required this.imgUrl,
    required this.price,
  });
  late final String id;
  late final String name;
  late final String days;
  late final String imgUrl;
  late final int price;

  DeliveryMethodModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    days = json['days'];
    imgUrl = json['imgUrl'];
    price = json['price'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['days'] = days;
    data['imgUrl'] = imgUrl;
    data['price'] = price;
    return data;
  }

  static List<DeliveryMethodModel> dummyDeliveryMethods = [
    DeliveryMethodModel(
      id: "1",
      name: "Standard Delivery",
      days: "3-5 days",
      imgUrl: "https://cdn-icons-png.flaticon.com/512/6213/6213198.png",
      price: 5,
    ),
    DeliveryMethodModel(
      id: "2",
      name: "Express Delivery",
      days: "1-2 days",
      imgUrl: "https://cdn-icons-png.flaticon.com/512/9183/9183489.png",
      price: 15,
    ),
    DeliveryMethodModel(
      id: "3",
      name: "Free Shipping",
      days: "5-7 days",
      imgUrl: "https://example.com/free_shipping.jpg",
      price: 0,
    ),
  ];
}
