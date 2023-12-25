import 'package:app/src/core/route/routes.dart';
import 'package:app/src/screens/init_screen.dart';
import 'package:app/src/screens/not_found_page.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class AppRouter {
  static Route? onGenerate(RouteSettings settings) {
    switch (settings.name) {
      case Routes.initRoute: // final args = settings.arguments as String;
        return pageTransition(settings, const InitScreen());
      case Routes.noFoundRoute:
      default:
        return pageTransition(settings, const NotFoundScreen());
    }
  }

 static PageTransition<dynamic> pageTransition(RouteSettings settings, Widget screen,
      {PageTransitionType type = PageTransitionType.fade}) {
    return PageTransition(
      type: type,
      child: screen,
      settings: settings,
    );
  }
}
