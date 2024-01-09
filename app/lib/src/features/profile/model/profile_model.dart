import 'package:app/src/core/route/routes.dart';

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
      url: Routes.ordersRoute,
      name: 'My orders',
      desc: 'Already have 12 orders',
    ),
    ProfileModel(
      url: Routes.addressesRoute,
      name: 'Shipping addresses',
      desc: '3 addresses',
    ),
    ProfileModel(
      url: Routes.paymentRoute,
      name: 'Payment methods',
      desc: 'Visa **34',
    ),
    ProfileModel(
      url: '',
      name: 'Promo codes',
      desc: 'You have special promocodes',
    ),
    ProfileModel(
      url: '',
      name: 'My reviews',
      desc: 'Reviews for 4 items',
    ),
    ProfileModel(
      url: Routes.settingsRoute,
      name: 'Settings',
      desc: 'Notifications, password',
    ),
  ];
}
