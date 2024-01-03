import 'package:app/src/core/route/routes.dart';
import 'package:app/src/screens/auth_screens/forget_password_screen.dart';
import 'package:app/src/screens/auth_screens/login_screen.dart';
import 'package:app/src/screens/auth_screens/sign_up_screen.dart';
import 'package:app/src/screens/auth_screens/splash_screen.dart';
import 'package:app/src/screens/main_screen/main_screen.dart';
import 'package:app/src/screens/not_found_page.dart';
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
