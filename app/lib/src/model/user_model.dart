class User {
  String name;
  String slug;
  String email;
  String phone;
  String profileImg;
  String password;
  DateTime passwordChangedAt;
  String passwordResetCode;
  DateTime passwordResetExpires;
  bool passwordResetVerified;
  String role;
  bool active;
  List<String> wishlist;
  List<Address> addresses;
  DateTime createdAt;
  DateTime updatedAt;

  User({
    required this.name,
    required this.slug,
    required this.email,
    required this.phone,
    required this.profileImg,
    required this.password,
    required this.passwordChangedAt,
    required this.passwordResetCode,
    required this.passwordResetExpires,
    required this.passwordResetVerified,
    required this.role,
    required this.active,
    required this.wishlist,
    required this.addresses,
    required this.createdAt,
    required this.updatedAt,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      name: json['name'],
      slug: json['slug'],
      email: json['email'],
      phone: json['phone'],
      profileImg: json['profileImg'],
      password: json['password'],
      passwordChangedAt: DateTime.parse(json['passwordChangedAt']),
      passwordResetCode: json['passwordResetCode'],
      passwordResetExpires: DateTime.parse(json['passwordResetExpires']),
      passwordResetVerified: json['passwordResetVerified'],
      role: json['role'],
      active: json['active'],
      wishlist: List<String>.from(json['wishlist']),
      addresses:
          List<Address>.from(json['addresses'].map((x) => Address.fromJson(x))),
      createdAt: DateTime.parse(json['createdAt']),
      updatedAt: DateTime.parse(json['updatedAt']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'slug': slug,
      'email': email,
      'phone': phone,
      'profileImg': profileImg,
      'password': password,
      'passwordChangedAt': passwordChangedAt.toIso8601String(),
      'passwordResetCode': passwordResetCode,
      'passwordResetExpires': passwordResetExpires.toIso8601String(),
      'passwordResetVerified': passwordResetVerified,
      'role': role,
      'active': active,
      'wishlist': wishlist,
      'addresses': addresses.map((x) => x.toJson()).toList(),
      'createdAt': createdAt.toIso8601String(),
      'updatedAt': updatedAt.toIso8601String(),
    };
  }

  static List<User> dummyUsers = [
    User(
      name: 'John Doe',
      slug: 'john-doe',
      email: 'john@example.com',
      phone: '123-456-7890',
      profileImg: 'profile.jpg',
      password: 'hashedpassword123', // Replace with the hashed password
      passwordChangedAt: DateTime.now(),
      passwordResetCode: 'resetcode123',
      passwordResetExpires: DateTime.now().add(const Duration(days: 1)),
      passwordResetVerified: false,
      role: 'user',
      active: true,
      wishlist: ['product1', 'product2'], // Replace with actual product IDs
      addresses: [
        Address(
          id: 'address1',
          alias: 'Home',
          details: '123 Main Street',
          phone: '123-456-7890',
          city: 'Cityville',
          postalCode: '12345',
        ),
      ],
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
    User(
      name: 'Jane Smith',
      slug: 'jane-smith',
      email: 'jane@example.com',
      phone: '987-654-3210',
      profileImg: 'profile2.jpg',
      password: 'hashedpassword456', // Replace with the hashed password
      passwordChangedAt: DateTime.now(),
      passwordResetCode: 'resetcode456',
      passwordResetExpires: DateTime.now().add(const Duration(days: 1)),
      passwordResetVerified: false,
      role: 'admin',
      active: true,
      wishlist: ['product3', 'product4'], // Replace with actual product IDs
      addresses: [
        Address(
          id: 'address2',
          alias: 'Work',
          details: '456 Business Avenue',
          phone: '987-654-3210',
          city: 'Worktown',
          postalCode: '54321',
        ),
      ],
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
    User(
      name: 'Alice Johnson',
      slug: 'alice-johnson',
      email: 'alice@example.com',
      phone: '111-222-3333',
      profileImg: 'alice-profile.jpg',
      password: 'hashedpassword789', // Replace with the hashed password
      passwordChangedAt: DateTime.now(),
      passwordResetCode: 'resetcode789',
      passwordResetExpires: DateTime.now().add(const Duration(days: 1)),
      passwordResetVerified: false,
      role: 'manager',
      active: true,
      wishlist: ['product5', 'product6'], // Replace with actual product IDs
      addresses: [
        Address(
          id: 'address3',
          alias: 'Office',
          details: '789 Corporate Lane',
          phone: '111-222-3333',
          city: 'Corporate City',
          postalCode: '67890',
        ),
      ],
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
    User(
      name: 'Bob Miller',
      slug: 'bob-miller',
      email: 'bob@example.com',
      phone: '444-555-6666',
      profileImg: 'bob-profile.jpg',
      password: 'hashedpasswordabc', // Replace with the hashed password
      passwordChangedAt: DateTime.now(),
      passwordResetCode: 'resetcodeabc',
      passwordResetExpires: DateTime.now().add(const Duration(days: 1)),
      passwordResetVerified: false,
      role: 'user',
      active: true,
      wishlist: ['product7', 'product8'], // Replace with actual product IDs
      addresses: [
        Address(
          id: 'address4',
          alias: 'Home',
          details: '456 Oak Street',
          phone: '444-555-6666',
          city: 'Residence City',
          postalCode: '54321',
        ),
      ],
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
  ];
}

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
}
