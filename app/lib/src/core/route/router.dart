import 'package:app/src/core/route/routes.dart';
import 'package:app/src/features/auth/views/forget_password_screen.dart';
import 'package:app/src/features/auth/views/login_screen.dart';
import 'package:app/src/features/auth/views/sign_up_screen.dart';
import 'package:app/src/features/auth/views/splash_screen.dart';
import 'package:app/src/features/main_screen.dart';
import 'package:app/src/features/not_found_page.dart';
import 'package:app/src/features/profile/views/add_shipping_address_screen.dart';
import 'package:app/src/features/profile/views/my_order_screen.dart';
import 'package:app/src/features/profile/views/payment_methods_screen.dart';
import 'package:app/src/features/profile/views/setting_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class AppRouter {
  static Route? onGenerate(RouteSettings settings) {
    switch (settings.name) {
      case Routes.initRoute: // final args = settings.arguments as String;
        return pageTransition(settings, const SplashScreen());

      case Routes.loginRoute:
        return pageTransition(settings, const LoginScreen());

      case Routes.registerRoute:
        return pageTransition(settings, const SignUpScreen());

      case Routes.forgetPasswordRoute:
        return pageTransition(settings, const ForgetPasswordScreen());

      case Routes.mainRoute:
        return pageTransition(settings, const MainScreen());

      case Routes.ordersRoute:
        return pageTransition(settings, const MyOrderScreen());

      case Routes.addressesRoute:
        return pageTransition(settings, const AddShippingAddressScreen());

      case Routes.paymentRoute:
        return pageTransition(settings, const PaymentMethodsScreen());

      case Routes.settingsRoute:
        return pageTransition(settings, const SettingScreen());

      case Routes.noFoundRoute:
      default:
        return pageTransition(settings, const NotFoundScreen());
    }
  }

  static PageTransition<dynamic> pageTransition(
      RouteSettings settings, Widget screen,
      {PageTransitionType type = PageTransitionType.fade}) {
    return PageTransition(
      type: type,
      child: screen,
      settings: settings,
    );
  }
}
