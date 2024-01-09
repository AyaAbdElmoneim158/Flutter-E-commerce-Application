class UserModel {
  UserModel({
    required this.uid,
    required this.email,
    required this.name,
    required this.photoURL,
  });
  late final String uid;
  late final String? email;
  late final String? name;
  late final String? photoURL;
  
  UserModel.fromJson(Map<String, dynamic> json){
    uid = json['uid'];
    email = json['email'];
    name = json['name'];
    photoURL = json['photoURL'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['uid'] = uid;
    data['email'] = email;
    data['name'] = name;
    data['photoURL'] = photoURL;
    return data;
  }
}