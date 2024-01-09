//!-> Done *** *** *** *** *** *** *** *** *** *** *** ***
class ShippingAddressModel {
  ShippingAddressModel({
    required this.id,
    required this.fullName,
    required this.country,
    required this.address,
    required this.city,
    required this.state,
    required this.zipCode,
    required this.isDefault,
  });
  late final String id;
  late final String fullName;
  late final String country;
  late final String address;
  late final String city;
  late final String state;
  late final String zipCode;
  late final bool isDefault;

  factory ShippingAddressModel.fromMap(
      Map<String, dynamic> map, String documentId) {
    return ShippingAddressModel(
      id: map['id'] ?? '',
      fullName: map['fullName'] ?? '',
      country: map['country'] ?? '',
      address: map['address'] ?? '',
      city: map['city'] ?? '',
      state: map['state'] ?? '',
      zipCode: map['zipCode'] ?? '',
      isDefault: map['isDefault'] ?? false,
    );
  }

  ShippingAddressModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    fullName = json['fullName'];
    country = json['country'];
    address = json['address'];
    city = json['city'];
    state = json['state'];
    zipCode = json['zipCode'];
    isDefault = json['isDefault'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['fullName'] = fullName;
    data['country'] = country;
    data['address'] = address;
    data['city'] = city;
    data['state'] = state;
    data['zipCode'] = zipCode;
    data['isDefault'] = isDefault;
    return data;
  }

  static List<ShippingAddressModel> dummyShippingAddress = [
    ShippingAddressModel(
      id: "1",
      fullName: "John Doe",
      country: "United States",
      address: "123 Main St",
      city: "Any town",
      state: "CA",
      zipCode: "12345",
      isDefault: true,
    ),
    ShippingAddressModel(
      id: "2",
      fullName: "Jane Smith",
      country: "Canada",
      address: "456 Maple Ave",
      city: "City Villa",
      state: "ON",
      zipCode: "M1A 2B3",
      isDefault: false,
    ),
    ShippingAddressModel(
      id: "3",
      fullName: "Alice Johnson",
      country: "Australia",
      address: "789 Oak Blvd",
      city: "Sydney",
      state: "NSW",
      zipCode: "2000",
      isDefault: false,
    ),
    ShippingAddressModel(
      id: "4",
      fullName: "Bob Anderson",
      country: "United Kingdom",
      address: "101 Pine Street",
      city: "London",
      state: "ENG",
      zipCode: "SW1A 1AA",
      isDefault: true,
    ),
  ];
}
