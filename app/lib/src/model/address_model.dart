class Address {
  String id;
  String alias;
  String details;
  String phone;
  String city;
  String postalCode;

  Address({
    required this.id,
    required this.alias,
    required this.details,
    required this.phone,
    required this.city,
    required this.postalCode,
  });

  factory Address.fromJson(Map<String, dynamic> json) {
    return Address(
      id: json['id'],
      alias: json['alias'],
      details: json['details'],
      phone: json['phone'],
      city: json['city'],
      postalCode: json['postalCode'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'alias': alias,
      'details': details,
      'phone': phone,
      'city': city,
      'postalCode': postalCode,
    };
  }

  static List<Address> dummyAddresses = [
    Address(
      id: 'address1',
      alias: 'Home',
      details: '123 Main Street',
      phone: '123-456-7890',
      city: 'City vile',
      postalCode: '12345',
    ),
    Address(
      id: 'address2',
      alias: 'Work',
      details: '456 Business Avenue',
      phone: '987-654-3210',
      city: 'Work town',
      postalCode: '54321',
    ),
    Address(
      id: 'address3',
      alias: 'Office',
      details: '789 Corporate Lane',
      phone: '111-222-3333',
      city: 'Corporate City',
      postalCode: '67890',
    ),
    Address(
      id: 'address4',
      alias: 'Home',
      details: '456 Oak Street',
      phone: '444-555-6666',
      city: 'Residence City',
      postalCode: '54321',
    ),
  ];
}
