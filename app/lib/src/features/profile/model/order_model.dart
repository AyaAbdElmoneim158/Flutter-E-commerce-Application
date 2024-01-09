import 'package:app/src/features/profile/model/order_item_model.dart';
import 'package:app/src/features/profile/model/shipping_address_model.dart';

//!-> Done *** *** *** *** *** *** *** *** *** *** *** ***
class OrderModel {
  OrderModel({
    required this.uid,
    required this.userId,
    required this.orderDate,
    required this.totalAmount,
    required this.discount,
    required this.status,
    required this.shippingAddress,
    required this.paymentMethod,
    required this.deliveryMethod,
    required this.items,
    required this.trackingNumber,
  });
  late final String uid;
  late final String userId;
  late final String orderDate;
  late final double totalAmount;
  late final double discount;
  late final String status;
  late final ShippingAddressModel shippingAddress;
  late final String paymentMethod;
  late final String deliveryMethod;
  late final List<OrderItemModel> items;
  late final String trackingNumber;

  OrderModel.fromJson(Map<String, dynamic> json) {
    uid = json['uid'];
    userId = json['userId'];
    orderDate = json['orderDate'];
    totalAmount = json['totalAmount'];
    discount = json['discount'];
    status = json['status'];
    shippingAddress = ShippingAddressModel.fromJson(json['shippingAddress']);
    paymentMethod = json['paymentMethod'];
    deliveryMethod = json['deliveryMethod'];
    items = List.from(json['items'])
        .map((e) => OrderItemModel.fromJson(e))
        .toList();
    trackingNumber = json['trackingNumber'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['uid'] = uid;
    data['userId'] = userId;
    data['orderDate'] = orderDate;
    data['totalAmount'] = totalAmount;
    data['discount'] = discount;
    data['status'] = status;
    data['shippingAddress'] = shippingAddress.toJson();
    data['paymentMethod'] = paymentMethod;
    data['deliveryMethod'] = deliveryMethod;
    data['items'] = items.map((e) => e.toJson()).toList();
    data['trackingNumber'] = trackingNumber;
    return data;
  }

  factory OrderModel.fromMap(Map<String, dynamic> map, String documentId) {
    return OrderModel(
      uid: map['uid'] ?? '',
      userId: map['userId'] ?? '',
      orderDate: map['orderDate'] ?? '',
      totalAmount: map['totalAmount'] ?? 0,
      discount: map['discount'] ?? 0,
      status: map['status'] ?? '',
      paymentMethod: map['paymentMethod'] ?? '',
      deliveryMethod: map['deliveryMethod'] ?? '',
      trackingNumber: map['trackingNumber'] ?? '',
      items: map['items'] ?? [],
      shippingAddress: map['shippingAddress'] ??
          ShippingAddressModel.dummyShippingAddress[0],
    );
  }
  static List<OrderModel> dummyOrders = [
    OrderModel(
      uid: "1",
      userId: "user123",
      orderDate: "2024-01-05T12:30:00",
      totalAmount: 159.97,
      discount: 15.00,
      status: "Processing",
      shippingAddress: ShippingAddressModel(
        id: "2",
        fullName: "Alice Doe",
        country: "United States",
        address: "456 Fashion Blvd",
        city: "Style City",
        state: "CA",
        zipCode: "98765",
        isDefault: true,
      ),
      paymentMethod: "Credit Card",
      deliveryMethod: "Express Shipping",
      items: OrderItemModel.dummyOrderItems,
      trackingNumber: "TRK123456789",
    ),
    OrderModel(
      uid: "2",
      userId: "user456",
      orderDate: "2024-01-06T14:45:00",
      totalAmount: 249.95,
      discount: 20.00,
      status: "Shipped",
      shippingAddress: ShippingAddressModel(
        id: "3",
        fullName: "Bob Johnson",
        country: "Canada",
        address: "789 Style Street",
        city: "Fashion Town",
        state: "ON",
        zipCode: "M2A 3B4",
        isDefault: false,
      ),
      paymentMethod: "PayPal",
      deliveryMethod: "Standard Shipping",
      items: [
        OrderItemModel(
          itemImage:
              "https://f.nooncdn.com/p/pzsku/Z5FAFC70E915E60DB1EF8Z/45/_/1669802201/3660527b-0a97-4954-99a1-4bdef875ca10.jpg",
          itemName: "Leather Jacket",
          itemBrand: "UrbanRider",
          itemColor: "Brown",
          itemSize: "Large",
          quantity: 1,
          price: 129.99,
        ),
        OrderItemModel(
          itemImage:
              "https://f.nooncdn.com/p/pzsku/ZF33DB790625D0CFE6AE0Z/45/_/1696776366/39a031bf-ab5c-47dd-9e89-9f67fd4894aa.jpg",
          itemName: "Casual Sneakers",
          itemBrand: "StreetStyle",
          itemColor: "White",
          itemSize: "9",
          quantity: 1,
          price: 79.99,
        ),
      ],
      trackingNumber: "TRK987654321",
    ),
    OrderModel(
      uid: "4",
      userId: "user789",
      orderDate: "2024-01-07T09:15:00",
      totalAmount: 179.98,
      discount: 10.00,
      status: "Delivered",
      shippingAddress: ShippingAddressModel(
        id: "5",
        fullName: "Eva Smith",
        country: "United Kingdom",
        address: "101 Fashion Lane",
        city: "Style Villa",
        state: "ENG",
        zipCode: "SW2A 2BB",
        isDefault: true,
      ),
      paymentMethod: "Credit Card",
      deliveryMethod: "Express Shipping",
      items: [
        OrderItemModel(
          itemImage:
              "https://f.nooncdn.com/p/pzsku/Z7FE4EA06578EF412C4DCZ/45/_/1698921885/6125d1ea-6c1e-42c9-b4e2-f8a6482e24e8.jpg",
          itemName: "Business Suit",
          itemBrand: "ElegantWear",
          itemColor: "Charcoal",
          itemSize: "Medium",
          quantity: 1,
          price: 99.99,
        ),
        OrderItemModel(
          itemImage:
              "https://f.nooncdn.com/p/pzsku/Z087B4313164A31B6EF72Z/45/_/1664135326/83b6bea9-87fe-4a35-9925-c66a0a7a7240.jpg",
          itemName: "Silk Scarf",
          itemBrand: "LuxuryStyle",
          itemColor: "Burgundy",
          itemSize: "One Size",
          quantity: 2,
          price: 39.99,
        ),
      ],
      trackingNumber: "TRK456789012",
    ),
  ];
}
