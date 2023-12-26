class ProfileModel {
  String name;
  String desc;
  String url;

  ProfileModel({
    required this.name,
    required this.desc,
    required this.url,
  });

  static List<ProfileModel> profileCards = [
    ProfileModel(
      url: '',
      name: 'My orders',
      desc: 'Already have 12 orders',
    ),
    ProfileModel(
      url: '',
      name: 'Shipping addresses',
      desc: '3 addresses',
    ),
    ProfileModel(
      url: '',
      name: 'Payment methods',
      desc: 'Visa **34',
    ),
    ProfileModel(
      url: '',
      name: 'Promocodes',
      desc: 'You have special promocodes',
    ),
    ProfileModel(
      url: '',
      name: 'My reviews',
      desc: 'Reviews for 4 items',
    ),
    ProfileModel(
      url: '',
      name: 'Settings',
      desc: 'Notifications, password',
    ),
  ];
}
