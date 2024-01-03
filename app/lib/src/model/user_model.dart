import 'dart:convert';
class UserModel {
  String? email;
  String? name;
  String? photoURL;

  UserModel({
    required this.email,
    required this.name,
    required this.photoURL,
  });

  UserModel copyWith({
    String? email,
    String? name,
    String? photoURL,
  }) {
    return UserModel(
      email: email ?? this.email,
      name: name ?? this.name,
      photoURL: photoURL ?? this.photoURL,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': email,
      'name': name,
      'photoURL': photoURL,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      email: map['email'] as String,
      name: map['name'] as String,
      photoURL: map['photoURL'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) =>
      UserModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'UserModel(email: $email, name: $name, photoURL: $photoURL)';

  @override
  bool operator ==(covariant UserModel other) {
    if (identical(this, other)) return true;

    return other.email == email &&
        other.name == name &&
        other.photoURL == photoURL;
  }

  @override
  int get hashCode => email.hashCode ^ name.hashCode ^ photoURL.hashCode;
}
/*class User {
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

 */